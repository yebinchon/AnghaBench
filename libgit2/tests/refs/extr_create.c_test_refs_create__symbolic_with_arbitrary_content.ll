; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__symbolic_with_arbitrary_content.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__symbolic_with_arbitrary_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ANOTHER_HEAD_TRACKER\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ARBITRARY DATA\00", align 1
@current_master_tip = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32* null, align 8
@GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_create__symbolic_with_arbitrary_content() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @current_master_tip, align 4
  %8 = call i32 @git_oid_fromstr(i32* %4, i32 %7)
  %9 = load i32*, i32** @g_repo, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @git_reference_symbolic_create(%struct.TYPE_8__** %1, i32* %9, i8* %10, i8* %11, i32 0, i32* null)
  %13 = call i32 @cl_git_fail(i32 %12)
  %14 = load i32, i32* @GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION, align 4
  %15 = call i32 @git_libgit2_opts(i32 %14, i32 0)
  %16 = load i32*, i32** @g_repo, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @git_reference_symbolic_create(%struct.TYPE_8__** %1, i32* %16, i8* %17, i8* %18, i32 0, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** @g_repo, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @git_reference_lookup(%struct.TYPE_8__** %2, i32* %21, i8* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = call i32 @git_reference_type(%struct.TYPE_8__* %25)
  %27 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = call i64 @reference_is_packed(%struct.TYPE_8__* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @cl_assert_equal_s(i32 %37, i8* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = call i32 @git_reference_free(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %43 = call i32 @git_reference_symbolic_target(%struct.TYPE_8__* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @cl_assert_equal_s(i32 %43, i8* %44)
  %46 = call i32 @git_repository_open(i32** %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @git_reference_lookup(%struct.TYPE_8__** %2, i32* %48, i8* %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = call i32 @git_reference_type(%struct.TYPE_8__* %52)
  %54 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @cl_assert(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = call i64 @reference_is_packed(%struct.TYPE_8__* %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @cl_assert_equal_s(i32 %64, i8* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %68 = call i32 @git_reference_symbolic_target(%struct.TYPE_8__* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @cl_assert_equal_s(i32 %68, i8* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @git_repository_free(i32* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %74 = call i32 @git_reference_free(%struct.TYPE_8__* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = call i32 @git_reference_free(%struct.TYPE_8__* %75)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_reference_symbolic_create(%struct.TYPE_8__**, i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @git_libgit2_opts(i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_8__**, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(%struct.TYPE_8__*) #1

declare dso_local i64 @reference_is_packed(%struct.TYPE_8__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_reference_symbolic_target(%struct.TYPE_8__*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
