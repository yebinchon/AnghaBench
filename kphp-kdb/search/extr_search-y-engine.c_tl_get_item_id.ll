; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-engine.c_tl_get_item_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-engine.c_tl_get_item_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"number of ints in id should be 1 or 2\00", align 1
@TL_ERROR_VALUE_NOT_IN_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"item_id should be positive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @tl_get_item_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tl_get_item_id() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @tl_fetch_int()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @TL_ERROR_VALUE_NOT_IN_RANGE, align 4
  %13 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i64 -1, i64* %1, align 8
  br label %45

14:                                               ; preds = %8, %0
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @tl_fetch_int()
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = call i32 (...) @tl_fetch_int()
  store i32 %20, i32* %4, align 4
  %21 = call i64 (...) @tl_fetch_error()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 -1, i64* %1, align 8
  br label %45

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @TL_ERROR_VALUE_NOT_IN_RANGE, align 4
  %29 = call i32 @tl_fetch_set_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i64 -1, i64* %1, align 8
  br label %45

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = shl i64 %35, 32
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i64 [ %39, %33 ], [ %42, %40 ]
  store i64 %44, i64* %1, align 8
  br label %45

45:                                               ; preds = %43, %27, %23, %11
  %46 = load i64, i64* %1, align 8
  ret i64 %46
}

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_set_error(i8*, i32) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
