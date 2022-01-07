; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_store_res_targ_aud.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_store_res_targ_aud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"store_res_targ_aud(%d)\0A\00", align 1
@R = common dso_local global i32* null, align 8
@R_cnt = common dso_local global i32 0, align 4
@Q_aux_num = common dso_local global i32 0, align 4
@User = common dso_local global i32* null, align 8
@AuxCond = common dso_local global i32* null, align 8
@RX = common dso_local global i32* null, align 8
@R_tot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_res_targ_aud(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32*, i32** @R, align 8
  %8 = load i32, i32* @R_cnt, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @R_cnt, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  store i32 %6, i32* %11, align 4
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @Q_aux_num, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load i32*, i32** @User, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @AuxCond, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @user_matches_condition(i32 %22, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load i32*, i32** @RX, align 8
  %32 = load i64, i64* %3, align 8
  %33 = mul nsw i64 3, %32
  %34 = add nsw i64 %33, 3
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %17
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %3, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %12

42:                                               ; preds = %12
  %43 = load i32*, i32** @RX, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @R_tot, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @R_tot, align 4
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i64 @user_matches_condition(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
