; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_tl_fetch_cat.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_tl_fetch_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Set can be performed on cat in range 1..30. Cat = %d\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Get can be performed on cat in range 0..30. Cat = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_fetch_cat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i64 (...) @tl_fetch_error()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = call i32 (...) @tl_fetch_int()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 31
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @tl_fetch_set_error_format(i32 %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %2, align 4
  br label %36

22:                                               ; preds = %15
  br label %34

23:                                               ; preds = %8
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 31
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @tl_fetch_set_error_format(i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %2, align 4
  br label %36

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %29, %18, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
