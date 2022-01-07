; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_perform_targ_audience_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_perform_targ_audience_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [87 x i8] c"perform targ_audience query(position=%d, cpv=%d, mask=%d:%d) for %d auxiliary queries\0A\00", align 1
@Q_aux_num = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@RX = common dso_local global i64 0, align 8
@R_position = common dso_local global i32 0, align 4
@store_res_targ_aud = common dso_local global i32 0, align 4
@store_res = common dso_local global i32 0, align 4
@postprocess_res_targ_aud = common dso_local global i32 0, align 4
@postprocess_res = common dso_local global i32 0, align 4
@targ_aud_position = common dso_local global i32 0, align 4
@targ_aud_cpv = common dso_local global i32 0, align 4
@targ_aud_and_mask = common dso_local global i32 0, align 4
@targ_aud_xor_mask = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_targ_audience_query(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @Q_aux_num, align 4
  %16 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 100
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @Q_limit, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @Q_limit, align 4
  %27 = icmp sgt i32 %26, 1000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %4
  store i32 -1, i32* %5, align 4
  br label %56

29:                                               ; preds = %25
  %30 = load i32, i32* @Q_limit, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 50, i32* @Q_limit, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i64, i64* @RX, align 8
  %35 = load i32, i32* @Q_aux_num, align 4
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %36, 12
  %38 = call i32 @memset(i64 %34, i32 0, i32 %37)
  store i32 -2147483648, i32* @R_position, align 4
  %39 = load i32, i32* @store_res_targ_aud, align 4
  store i32 %39, i32* @store_res, align 4
  %40 = load i32, i32* @postprocess_res_targ_aud, align 4
  store i32 %40, i32* @postprocess_res, align 4
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* @targ_aud_position, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* @targ_aud_cpv, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* @targ_aud_and_mask, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* @targ_aud_xor_mask, align 4
  %45 = call i32 @perform_query(i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @Q_aux_num, align 4
  %47 = mul nsw i32 3, %46
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* @R_cnt, align 4
  store i32 0, i32* @R_position, align 4
  %49 = load i32, i32* @R, align 4
  %50 = load i64, i64* @RX, align 8
  %51 = add nsw i64 %50, 1
  %52 = load i32, i32* @R_cnt, align 4
  %53 = mul nsw i32 %52, 4
  %54 = call i32 @memcpy(i32 %49, i64 %51, i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %33, %28
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @perform_query(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
