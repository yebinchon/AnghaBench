; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__symbolic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ANOTHER_HEAD_TRACKER\00", align 1
@current_master_tip = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32* null, align 8
@current_head_target = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_create__symbolic() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @current_master_tip, align 4
  %8 = call i32 @git_oid_fromstr(i32* %5, i32 %7)
  %9 = load i32*, i32** @g_repo, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* @current_head_target, align 4
  %12 = call i32 @git_reference_symbolic_create(%struct.TYPE_10__** %1, i32* %9, i8* %10, i32 %11, i32 0, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** @g_repo, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @git_reference_lookup(%struct.TYPE_10__** %2, i32* %14, i8* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = call i32 @git_reference_type(%struct.TYPE_10__* %18)
  %20 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = call i64 @reference_is_packed(%struct.TYPE_10__* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @cl_assert_equal_s(i32 %30, i8* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = call i32 @git_reference_resolve(%struct.TYPE_10__** %3, %struct.TYPE_10__* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i32 @git_reference_type(%struct.TYPE_10__* %36)
  %38 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = call i32 @git_reference_target(%struct.TYPE_10__* %42)
  %44 = call i32 @cl_assert_equal_oid(i32* %5, i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = call i32 @git_reference_free(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = call i32 @git_reference_free(%struct.TYPE_10__* %47)
  %49 = call i32 @git_repository_open(i32** %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @git_reference_lookup(%struct.TYPE_10__** %2, i32* %51, i8* %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = call i32 @git_reference_resolve(%struct.TYPE_10__** %3, %struct.TYPE_10__* %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = call i32 @git_reference_target(%struct.TYPE_10__* %58)
  %60 = call i32 @cl_assert_equal_oid(i32* %5, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @git_repository_free(i32* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %64 = call i32 @git_reference_free(%struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = call i32 @git_reference_free(%struct.TYPE_10__* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = call i32 @git_reference_free(%struct.TYPE_10__* %67)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_symbolic_create(%struct.TYPE_10__**, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_10__**, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(%struct.TYPE_10__*) #1

declare dso_local i64 @reference_is_packed(%struct.TYPE_10__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_reference_resolve(%struct.TYPE_10__**, %struct.TYPE_10__*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_10__*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_10__*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
