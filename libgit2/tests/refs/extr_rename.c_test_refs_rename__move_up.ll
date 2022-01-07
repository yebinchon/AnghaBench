; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__move_up.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__move_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@ref_master_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@ref_two_name_new = common dso_local global i32 0, align 4
@ref_two_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_rename__move_up() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = load i32, i32* @ref_master_name, align 4
  %8 = call i32 @git_reference_lookup(%struct.TYPE_9__** %1, i32 %6, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %11 = call i32 @git_reference_type(%struct.TYPE_9__* %10)
  %12 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %16 = call i32 @git_reference_target(%struct.TYPE_9__* %15)
  %17 = call i32 @git_oid_cpy(i32* %5, i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32, i32* @ref_two_name_new, align 4
  %20 = call i32 @git_reference_create(%struct.TYPE_9__** %2, i32 %18, i32 %19, i32* %5, i32 0, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = call i32 @git_reference_free(%struct.TYPE_9__* %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = load i32, i32* @ref_two_name_new, align 4
  %26 = call i32 @git_reference_lookup(%struct.TYPE_9__** %3, i32 %24, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i32, i32* @ref_two_name, align 4
  %30 = call i32 @git_reference_rename(%struct.TYPE_9__** %4, %struct.TYPE_9__* %28, i32 %29, i32 0, i32* null)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @git_reference_free(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = call i32 @git_reference_free(%struct.TYPE_9__* %34)
  %36 = load i32, i32* @g_repo, align 4
  %37 = load i32, i32* @ref_two_name, align 4
  %38 = call i32 @git_reference_lookup(%struct.TYPE_9__** %3, i32 %36, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ref_two_name, align 4
  %44 = call i32 @cl_assert_equal_s(i32 %42, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i32 @git_reference_free(%struct.TYPE_9__* %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32, i32* @ref_two_name_new, align 4
  %49 = call i32 @git_reference_lookup(%struct.TYPE_9__** %3, i32 %47, i32 %48)
  %50 = call i32 @cl_git_fail(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %52 = call i32 @git_reference_free(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 @git_reference_free(%struct.TYPE_9__* %53)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_9__**, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(%struct.TYPE_9__*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_9__*) #1

declare dso_local i32 @git_reference_create(%struct.TYPE_9__**, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_9__*) #1

declare dso_local i32 @git_reference_rename(%struct.TYPE_9__**, %struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
