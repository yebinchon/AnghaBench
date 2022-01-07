; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__packed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@packed_head_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_read__packed() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i32, i32* @packed_head_name, align 4
  %5 = call i32 @git_reference_lookup(%struct.TYPE_7__** %1, i32 %3, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %8 = call i32 @git_reference_type(%struct.TYPE_7__* %7)
  %9 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = call i32 @reference_is_packed(%struct.TYPE_7__* %12)
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @packed_head_name, align 4
  %19 = call i32 @cl_assert_equal_s(i32 %17, i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %22 = call i32 @git_reference_target(%struct.TYPE_7__* %21)
  %23 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %24 = call i32 @git_object_lookup(i32** %2, i32 %20, i32 %22, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @git_object_type(i32* %30)
  %32 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_object_free(i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %39 = call i32 @git_reference_free(%struct.TYPE_7__* %38)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(%struct.TYPE_7__*) #1

declare dso_local i32 @reference_is_packed(%struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32, i32) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_7__*) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
