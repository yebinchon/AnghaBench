; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_check_str_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_check_str_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_IN_REMAINING = common dso_local global i32 0, align 4
@TL_IN_POS = common dso_local global i32 0, align 4
@TL_ERROR_EXTRA_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"extra %d bytes after query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tl_fetch_check_str_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_fetch_check_str_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @TL_IN_REMAINING, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 0, %6
  %8 = load i32, i32* @TL_IN_POS, align 4
  %9 = sub nsw i32 %7, %8
  %10 = and i32 %9, 3
  %11 = add nsw i32 %5, %10
  %12 = icmp ne i32 %4, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @TL_ERROR_EXTRA_DATA, align 4
  %15 = load i32, i32* @TL_IN_REMAINING, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i32, i32* @TL_IN_POS, align 4
  %21 = sub nsw i32 %19, %20
  %22 = and i32 %21, 3
  %23 = sub nsw i32 %17, %22
  %24 = call i32 @tl_fetch_set_error_format(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
