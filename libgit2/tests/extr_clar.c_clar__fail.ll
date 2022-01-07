; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar__fail.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar__fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.clar_error*, %struct.clar_error* }
%struct.clar_error = type { i8*, i64, i8*, i32, %struct.clar_error* }

@_clar = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CL_TEST_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clar__fail(i8* %0, i64 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clar_error*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call %struct.clar_error* @calloc(i32 1, i32 40)
  store %struct.clar_error* %12, %struct.clar_error** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.clar_error*, %struct.clar_error** %14, align 8
  %16 = icmp eq %struct.clar_error* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.clar_error*, %struct.clar_error** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store %struct.clar_error* %18, %struct.clar_error** %20, align 8
  br label %21

21:                                               ; preds = %17, %5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.clar_error*, %struct.clar_error** %23, align 8
  %25 = icmp ne %struct.clar_error* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.clar_error*, %struct.clar_error** %11, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.clar_error*, %struct.clar_error** %29, align 8
  %31 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %30, i32 0, i32 4
  store %struct.clar_error* %27, %struct.clar_error** %31, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.clar_error*, %struct.clar_error** %11, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store %struct.clar_error* %33, %struct.clar_error** %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.clar_error*, %struct.clar_error** %11, align 8
  %38 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.clar_error*, %struct.clar_error** %11, align 8
  %41 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.clar_error*, %struct.clar_error** %11, align 8
  %44 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strdup(i8* %48)
  %50 = load %struct.clar_error*, %struct.clar_error** %11, align 8
  %51 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %32
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 1), align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 1), align 8
  %55 = load i32, i32* @CL_TEST_FAILURE, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_clar, i32 0, i32 0), align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 (...) @abort_test()
  br label %62

62:                                               ; preds = %60, %52
  ret void
}

declare dso_local %struct.clar_error* @calloc(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @abort_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
