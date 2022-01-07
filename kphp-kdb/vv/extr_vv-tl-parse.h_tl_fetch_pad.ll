; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_pad.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_IN_POS = common dso_local global i32 0, align 4
@TL_IN_REMAINING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Padding with non-zeroes\00", align 1
@TL_ERROR_SYNTAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tl_fetch_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_fetch_pad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 @tl_fetch_check(i32 0)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %25

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @TL_IN_POS, align 4
  %9 = sub nsw i32 0, %8
  %10 = and i32 %9, 3
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @TL_IN_REMAINING, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @tl_fetch_raw_data(i32* %2, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32, i32* @TL_ERROR_SYNTAX, align 4
  %22 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %1, align 4
  br label %25

23:                                               ; preds = %7
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %20, %6
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @tl_fetch_check(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_fetch_raw_data(i32*, i32) #1

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
