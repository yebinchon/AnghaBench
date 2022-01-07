; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-engine.c_tl_fetch_object_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-engine.c_tl_fetch_object_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Wrong object id %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_fetch_object_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @tl_fetch_error()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

6:                                                ; preds = %0
  %7 = call i32 (...) @tl_fetch_int()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @check_object_id(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @tl_fetch_set_error_format(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %5
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @check_object_id(i32) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
