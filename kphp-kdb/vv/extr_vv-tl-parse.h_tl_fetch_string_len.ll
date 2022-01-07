; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_string_len.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_string_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"String len can not start with 0xff\00", align 1
@TL_ERROR_SYNTAX = common dso_local global i32 0, align 4
@TL_ERROR_TOO_LONG_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"string is too long: max_len = %d, len = %d\00", align 1
@TL_IN_REMAINING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"string is too long: remaining_bytes = %d, len = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tl_fetch_string_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_fetch_string_len(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i64 @tl_fetch_check(i32 4)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %9 = call i32 @tl_fetch_raw_data(i32* %4, i32 1)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @TL_ERROR_SYNTAX, align 4
  %14 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %2, align 4
  br label %40

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 254
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @tl_fetch_raw_data(i32* %4, i32 3)
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @TL_ERROR_TOO_LONG_STRING, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @tl_fetch_set_error_format(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  store i32 -1, i32* %2, align 4
  br label %40

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TL_IN_REMAINING, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @TL_ERROR_SYNTAX, align 4
  %35 = load i32, i32* @TL_IN_REMAINING, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @tl_fetch_set_error_format(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  store i32 -1, i32* %2, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %33, %24, %12, %7
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @tl_fetch_check(i32) #1

declare dso_local i32 @tl_fetch_raw_data(i32*, i32) #1

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
