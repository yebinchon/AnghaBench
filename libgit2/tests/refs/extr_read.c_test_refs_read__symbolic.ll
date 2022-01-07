; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__symbolic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_read.c_test_refs_read__symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8
@current_master_tip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_read__symbolic() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i32, i32* @GIT_HEAD_FILE, align 4
  %7 = call i32 @git_reference_lookup(%struct.TYPE_9__** %1, i32 %5, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %10 = call i32 @git_reference_type(%struct.TYPE_9__* %9)
  %11 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @cl_assert(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %15 = call i64 @reference_is_packed(%struct.TYPE_9__* %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GIT_HEAD_FILE, align 4
  %23 = call i32 @cl_assert_equal_s(i32 %21, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %25 = call i32 @git_reference_resolve(%struct.TYPE_9__** %2, %struct.TYPE_9__* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = call i32 @git_reference_type(%struct.TYPE_9__* %27)
  %29 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = call i32 @git_reference_target(%struct.TYPE_9__* %34)
  %36 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %37 = call i32 @git_object_lookup(i32** %3, i32 %33, i32 %35, i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @git_object_type(i32* %43)
  %45 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32, i32* @current_master_tip, align 4
  %50 = call i32 @git_oid_fromstr(i32* %4, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @git_object_id(i32* %51)
  %53 = call i32 @cl_assert_equal_oid(i32* %4, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @git_object_free(i32* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %57 = call i32 @git_reference_free(%struct.TYPE_9__* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = call i32 @git_reference_free(%struct.TYPE_9__* %58)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_9__**, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(%struct.TYPE_9__*) #1

declare dso_local i64 @reference_is_packed(%struct.TYPE_9__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_reference_resolve(%struct.TYPE_9__**, %struct.TYPE_9__*) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32, i32) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_9__*) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
