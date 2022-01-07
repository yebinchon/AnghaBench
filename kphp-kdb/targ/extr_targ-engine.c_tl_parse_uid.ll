; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_tl_parse_uid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_tl_parse_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_ERROR_VALUE_NOT_IN_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"user_id is not from this engine: log_split_min = %d, log_split_max = %d, log_split_mod = %d, uid = %d\00", align 1
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_parse_uid() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @tl_fetch_positive_int()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @conv_user_id(i32 %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, i32* @TL_ERROR_VALUE_NOT_IN_RANGE, align 4
  %11 = load i32, i32* @log_split_min, align 4
  %12 = load i32, i32* @log_split_max, align 4
  %13 = load i32, i32* @log_split_mod, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @tl_fetch_set_error_format(i32 %10, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14)
  store i32 -1, i32* %1, align 4
  br label %16

16:                                               ; preds = %9, %5
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @tl_fetch_positive_int(...) #1

declare dso_local i64 @conv_user_id(i32) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
