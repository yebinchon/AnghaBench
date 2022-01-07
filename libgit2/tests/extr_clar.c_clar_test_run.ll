; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_test_run.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.clar_explicit* }
%struct.clar_explicit = type { i64, i32*, %struct.clar_explicit* }

@_clar = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_clar_suites = common dso_local global i32* null, align 8
@_clar_suite_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clar_test_run() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.clar_explicit*, align 8
  %3 = load %struct.clar_explicit*, %struct.clar_explicit** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  %4 = icmp ne %struct.clar_explicit* %3, null
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  %6 = load %struct.clar_explicit*, %struct.clar_explicit** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  store %struct.clar_explicit* %6, %struct.clar_explicit** %2, align 8
  br label %7

7:                                                ; preds = %20, %5
  %8 = load %struct.clar_explicit*, %struct.clar_explicit** %2, align 8
  %9 = icmp ne %struct.clar_explicit* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load i32*, i32** @_clar_suites, align 8
  %12 = load %struct.clar_explicit*, %struct.clar_explicit** %2, align 8
  %13 = getelementptr inbounds %struct.clar_explicit, %struct.clar_explicit* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load %struct.clar_explicit*, %struct.clar_explicit** %2, align 8
  %17 = getelementptr inbounds %struct.clar_explicit, %struct.clar_explicit* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @clar_run_suite(i32* %15, i32* %18)
  br label %20

20:                                               ; preds = %10
  %21 = load %struct.clar_explicit*, %struct.clar_explicit** %2, align 8
  %22 = getelementptr inbounds %struct.clar_explicit, %struct.clar_explicit* %21, i32 0, i32 2
  %23 = load %struct.clar_explicit*, %struct.clar_explicit** %22, align 8
  store %struct.clar_explicit* %23, %struct.clar_explicit** %2, align 8
  br label %7

24:                                               ; preds = %7
  br label %39

25:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @_clar_suite_count, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** @_clar_suites, align 8
  %32 = load i64, i64* %1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @clar_run_suite(i32* %33, i32* null)
  br label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %1, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %1, align 8
  br label %26

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  ret i32 %40
}

declare dso_local i32 @clar_run_suite(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
