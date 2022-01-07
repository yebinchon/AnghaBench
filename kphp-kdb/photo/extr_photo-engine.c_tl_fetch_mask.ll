; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_tl_fetch_mask.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-engine.c_tl_fetch_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Wrong mask %lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tl_fetch_mask(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = call i64 (...) @tl_fetch_error()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %46

9:                                                ; preds = %1
  %10 = call i64 (...) @tl_fetch_int()
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = ashr i64 %14, 29
  %16 = and i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 29
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, 1073741824
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %13
  %29 = call i64 (...) @tl_fetch_int()
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = sub nsw i64 %33, 1073741824
  %35 = load i64, i64* %5, align 8
  %36 = shl i64 %35, 29
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %2, align 8
  br label %46

38:                                               ; preds = %28
  br label %41

39:                                               ; preds = %13
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %46

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %9
  %43 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @tl_fetch_set_error_format(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i64 0, i64* %2, align 8
  br label %46

46:                                               ; preds = %42, %39, %32, %8
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i64 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
