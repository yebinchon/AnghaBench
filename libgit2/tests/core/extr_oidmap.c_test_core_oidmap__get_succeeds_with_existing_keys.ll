; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__get_succeeds_with_existing_keys.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__get_succeeds_with_existing_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@test_oids = common dso_local global %struct.TYPE_5__* null, align 8
@g_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_oidmap__get_succeeds_with_existing_keys() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i64, i64* %1, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %5 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %4)
  %6 = icmp ult i64 %3, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, i32* @g_map, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = call i32 @git_oidmap_set(i32 %8, i32* %12, %struct.TYPE_5__* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  br label %18

18:                                               ; preds = %7
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %1, align 8
  br label %2

21:                                               ; preds = %2
  store i64 0, i64* %1, align 8
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i64, i64* %1, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %25 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %24)
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* @g_map, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %30 = load i64, i64* %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @git_oidmap_get(i32 %28, i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %35 = load i64, i64* %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = call i32 @cl_assert_equal_p(i32 %33, %struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %1, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %1, align 8
  br label %22

41:                                               ; preds = %22
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oidmap_set(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @cl_assert_equal_p(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @git_oidmap_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
