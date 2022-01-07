; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__basic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@test_oids = common dso_local global %struct.TYPE_5__* null, align 8
@g_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_oidmap__basic() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %28, %0
  %3 = load i64, i64* %1, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %5 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %4)
  %6 = icmp ult i64 %3, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load i32, i32* @g_map, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @git_oidmap_exists(i32 %8, i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load i32, i32* @g_map, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = call i32 @git_oidmap_set(i32 %18, i32* %22, %struct.TYPE_5__* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  br label %28

28:                                               ; preds = %7
  %29 = load i64, i64* %1, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %1, align 8
  br label %2

31:                                               ; preds = %2
  store i64 0, i64* %1, align 8
  br label %32

32:                                               ; preds = %55, %31
  %33 = load i64, i64* %1, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %35 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load i32, i32* @g_map, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %40 = load i64, i64* %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @git_oidmap_exists(i32 %38, i32* %42)
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32, i32* @g_map, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %47 = load i64, i64* %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @git_oidmap_get(i32 %45, i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_oids, align 8
  %52 = load i64, i64* %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = call i32 @cl_assert_equal_p(i32 %50, %struct.TYPE_5__* %53)
  br label %55

55:                                               ; preds = %37
  %56 = load i64, i64* %1, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %1, align 8
  br label %32

58:                                               ; preds = %32
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oidmap_exists(i32, i32*) #1

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
