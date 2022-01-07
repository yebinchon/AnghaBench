; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@ref_master_name = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@ref_two_name = common dso_local global i32 0, align 4
@ref_two_name_new = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_rename__prefix() #0 {
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
  %19 = load i32, i32* @ref_two_name, align 4
  %20 = call i32 @git_reference_create(%struct.TYPE_9__** %2, i32 %18, i32 %19, i32* %5, i32 0, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i32, i32* @ref_two_name, align 4
  %24 = call i32 @git_reference_lookup(%struct.TYPE_9__** %3, i32 %22, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load i32, i32* @ref_two_name_new, align 4
  %28 = call i32 @git_reference_rename(%struct.TYPE_9__** %4, %struct.TYPE_9__* %26, i32 %27, i32 0, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @git_reference_free(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = call i32 @git_reference_free(%struct.TYPE_9__* %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = load i32, i32* @ref_two_name_new, align 4
  %36 = call i32 @git_reference_lookup(%struct.TYPE_9__** %3, i32 %34, i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ref_two_name_new, align 4
  %42 = call i32 @cl_assert_equal_s(i32 %40, i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @git_reference_free(%struct.TYPE_9__* %43)
  %45 = load i32, i32* @g_repo, align 4
  %46 = load i32, i32* @ref_two_name, align 4
  %47 = call i32 @git_reference_lookup(%struct.TYPE_9__** %3, i32 %45, i32 %46)
  %48 = call i32 @cl_git_fail(i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %50 = call i32 @git_reference_free(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
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

declare dso_local i32 @git_reference_rename(%struct.TYPE_9__**, %struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_9__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
