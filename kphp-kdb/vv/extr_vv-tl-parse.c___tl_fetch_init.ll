; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_fetch_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_fetch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_in_methods = type { i32 (...)* }
%struct.TYPE_2__ = type { i32* }

@TL_IN_METHODS = common dso_local global %struct.tl_in_methods* null, align 8
@TL_IN_TYPE = common dso_local global i64 0, align 8
@TL_IN = common dso_local global i8* null, align 8
@TL_IN_REMAINING = common dso_local global i32 0, align 4
@TL_IN_POS = common dso_local global i64 0, align 8
@TL_ATTEMPT_NUM = common dso_local global i64 0, align 8
@TL_ERROR = common dso_local global i64 0, align 8
@TL_ERRNUM = common dso_local global i64 0, align 8
@TL_OUT_METHODS = common dso_local global %struct.TYPE_2__* null, align 8
@TL_COPY_THROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tl_fetch_init(i8* %0, i8* %1, i32 %2, %struct.tl_in_methods* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tl_in_methods*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tl_in_methods* %3, %struct.tl_in_methods** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.tl_in_methods*, %struct.tl_in_methods** @TL_IN_METHODS, align 8
  %12 = icmp ne %struct.tl_in_methods* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = load %struct.tl_in_methods*, %struct.tl_in_methods** @TL_IN_METHODS, align 8
  %15 = getelementptr inbounds %struct.tl_in_methods, %struct.tl_in_methods* %14, i32 0, i32 0
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = icmp ne i32 (...)* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.tl_in_methods*, %struct.tl_in_methods** @TL_IN_METHODS, align 8
  %20 = getelementptr inbounds %struct.tl_in_methods, %struct.tl_in_methods* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  br label %23

23:                                               ; preds = %18, %13, %5
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @assert(i8* %24)
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  store i64 %27, i64* @TL_IN_TYPE, align 8
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** @TL_IN, align 8
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* @TL_IN_REMAINING, align 4
  store i64 0, i64* @TL_IN_POS, align 8
  %30 = load %struct.tl_in_methods*, %struct.tl_in_methods** %9, align 8
  store %struct.tl_in_methods* %30, %struct.tl_in_methods** @TL_IN_METHODS, align 8
  store i64 0, i64* @TL_ATTEMPT_NUM, align 8
  %31 = load i64, i64* @TL_ERROR, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i64, i64* @TL_ERROR, align 8
  %35 = call i32 @free(i64 %34)
  store i64 0, i64* @TL_ERROR, align 8
  br label %36

36:                                               ; preds = %33, %23
  store i64 0, i64* @TL_ERRNUM, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TL_OUT_METHODS, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TL_OUT_METHODS, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @TL_IN_TYPE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %39
  %48 = phi i32 [ %45, %39 ], [ 0, %46 ]
  store i32 %48, i32* @TL_COPY_THROUGH, align 4
  ret i32 0
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
