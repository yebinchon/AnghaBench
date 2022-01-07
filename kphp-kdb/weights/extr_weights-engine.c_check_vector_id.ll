; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-engine.c_check_vector_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-engine.c_check_vector_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vector_id isn't positive\00", align 1
@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"wrong split: vector_id = %d, log_split_min = %d, log_split_mod = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_vector_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_vector_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %8 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @log_split_mod, align 4
  %12 = srem i32 %10, %11
  %13 = load i32, i32* @log_split_min, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @log_split_min, align 4
  %19 = load i32, i32* @log_split_mod, align 4
  %20 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %16, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  store i32 -1, i32* %2, align 4
  br label %22

21:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %15, %6
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
