; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_check.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_IN_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Trying to read from unitialized in buffer\00", align 1
@TL_ERROR_INTERNAL = common dso_local global i32 0, align 4
@TL_IN_REMAINING = common dso_local global i32 0, align 4
@TL_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Trying to read %d bytes at position %d (size = %d)\00", align 1
@TL_IN_POS = common dso_local global i32 0, align 4
@TL_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tl_fetch_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_fetch_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @TL_IN_TYPE, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @TL_ERROR_INTERNAL, align 4
  %8 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 -1, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* @TL_IN_REMAINING, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* @TL_ERROR_SYNTAX, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TL_IN_POS, align 4
  %20 = load i32, i32* @TL_IN_POS, align 4
  %21 = load i32, i32* @TL_IN_REMAINING, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @tl_fetch_set_error_format(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %22)
  store i32 -1, i32* %2, align 4
  br label %44

24:                                               ; preds = %12
  br label %39

25:                                               ; preds = %9
  %26 = load i32, i32* @TL_IN_POS, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @TL_ERROR_SYNTAX, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @TL_IN_POS, align 4
  %34 = load i32, i32* @TL_IN_POS, align 4
  %35 = load i32, i32* @TL_IN_REMAINING, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @tl_fetch_set_error_format(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %36)
  store i32 -1, i32* %2, align 4
  br label %44

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i64, i64* @TL_ERROR, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %44

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %30, %16, %6
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
