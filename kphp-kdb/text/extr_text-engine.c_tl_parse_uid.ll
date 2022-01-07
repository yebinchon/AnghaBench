; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_tl_parse_uid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_tl_parse_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Wrong server: user_id = %d, log_split_mod = %d, log_split_min = %d, log_split_max = %d\00", align 1
@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_parse_uid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @tl_fetch_int()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @conv_uid(i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @log_split_mod, align 4
  %14 = load i32, i32* @log_split_min, align 4
  %15 = load i32, i32* @log_split_max, align 4
  %16 = call i32 @tl_fetch_set_error_format(i32 %11, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 -1, i32* %1, align 4
  br label %19

17:                                               ; preds = %6
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
