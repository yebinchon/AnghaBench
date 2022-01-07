; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_scan_targ_aud_user.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_scan_targ_aud_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"scan_targ_aud_user(%d)\0A\00", align 1
@targ_aud_position = common dso_local global i32 0, align 4
@targ_aud_cpv = common dso_local global i32 0, align 4
@targ_aud_and_mask = common dso_local global i32 0, align 4
@targ_aud_xor_mask = common dso_local global i32 0, align 4
@Q_aux_num = common dso_local global i32 0, align 4
@User = common dso_local global i32* null, align 8
@AuxCond = common dso_local global i32* null, align 8
@RX = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_targ_aud_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @targ_aud_position, align 4
  %9 = load i32, i32* @targ_aud_cpv, align 4
  %10 = load i32, i32* @targ_aud_and_mask, align 4
  %11 = load i32, i32* @targ_aud_xor_mask, align 4
  %12 = call i32 @user_cpv_is_enough(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @Q_aux_num, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %13
  %19 = load i32*, i32** @User, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @AuxCond, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @user_matches_condition(i32 %23, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %18
  %32 = load i32*, i32** @RX, align 8
  %33 = load i64, i64* %3, align 8
  %34 = mul nsw i64 3, %33
  %35 = add nsw i64 %34, 4
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i32*, i32** @RX, align 8
  %43 = load i64, i64* %3, align 8
  %44 = mul nsw i64 3, %43
  %45 = add nsw i64 %44, 5
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %31
  br label %50

50:                                               ; preds = %49, %18
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %13

54:                                               ; preds = %13
  %55 = load i32*, i32** @RX, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32*, i32** @RX, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %54
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @user_cpv_is_enough(i32, i32, i32, i32, i32) #1

declare dso_local i64 @user_matches_condition(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
