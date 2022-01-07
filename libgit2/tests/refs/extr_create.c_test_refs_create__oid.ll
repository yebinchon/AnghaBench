; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"refs/heads/new-head\00", align 1
@current_master_tip = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32* null, align 8
@GIT_REFERENCE_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_create__oid() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @current_master_tip, align 4
  %7 = call i32 @git_oid_fromstr(i32* %4, i32 %6)
  %8 = load i32*, i32** @g_repo, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @git_reference_create(%struct.TYPE_8__** %1, i32* %8, i8* %9, i32* %4, i32 0, i32* null)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** @g_repo, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @git_reference_lookup(%struct.TYPE_8__** %2, i32* %12, i8* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32 @git_reference_type(%struct.TYPE_8__* %16)
  %18 = load i32, i32* @GIT_REFERENCE_DIRECT, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = call i64 @reference_is_packed(%struct.TYPE_8__* %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @cl_assert_equal_s(i32 %28, i8* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = call i32 @git_reference_target(%struct.TYPE_8__* %31)
  %33 = call i32 @cl_assert_equal_oid(i32* %4, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call i32 @git_reference_free(%struct.TYPE_8__* %34)
  %36 = call i32 @git_repository_open(i32** %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @git_reference_lookup(%struct.TYPE_8__** %2, i32* %38, i8* %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = call i32 @git_reference_target(%struct.TYPE_8__* %42)
  %44 = call i32 @cl_assert_equal_oid(i32* %4, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_repository_free(i32* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %48 = call i32 @git_reference_free(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = call i32 @git_reference_free(%struct.TYPE_8__* %49)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_create(%struct.TYPE_8__**, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_8__**, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_type(%struct.TYPE_8__*) #1

declare dso_local i64 @reference_is_packed(%struct.TYPE_8__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_8__*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
