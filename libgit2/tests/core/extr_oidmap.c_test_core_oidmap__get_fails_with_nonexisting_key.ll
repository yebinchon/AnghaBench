; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__get_fails_with_nonexisting_key.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_oidmap.c_test_core_oidmap__get_fails_with_nonexisting_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@test_oids = common dso_local global %struct.TYPE_4__* null, align 8
@g_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_oidmap__get_fails_with_nonexisting_key() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i64, i64* %1, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_oids, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %4)
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %3, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* @g_map, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_oids, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_oids, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = call i32 @git_oidmap_set(i32 %10, i32* %14, %struct.TYPE_4__* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  br label %20

20:                                               ; preds = %9
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %1, align 8
  br label %2

23:                                               ; preds = %2
  %24 = load i32, i32* @g_map, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_oids, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_oids, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %26)
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @git_oidmap_get(i32 %24, i32* %31)
  %33 = call i32 @cl_assert_equal_p(i32 %32, i32* null)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oidmap_set(i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_p(i32, i32*) #1

declare dso_local i32 @git_oidmap_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
