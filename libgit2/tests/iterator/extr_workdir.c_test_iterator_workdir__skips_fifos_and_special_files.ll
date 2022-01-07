; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__skips_fifos_and_special_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__skips_fifos_and_special_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/dir\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"empty_standard_repo/file\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"not me\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"empty_standard_repo/fifo\00", align 1
@F_OK = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_TREES = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__skips_fifos_and_special_files() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = call i32 @p_mkdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %7 = call i32 @cl_must_pass(i32 %6)
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @mkfifo(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = load i32, i32* @F_OK, align 4
  %15 = call i32 @access(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @GIT_ITERATOR_INCLUDE_TREES, align 4
  %21 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 @git_iterator_for_filesystem(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %3)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_iterator_advance(%struct.TYPE_7__** %2, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @S_ISDIR(i32 %31)
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_iterator_advance(%struct.TYPE_7__** %2, i32* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S_ISDIR(i32 %39)
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_iterator_advance(%struct.TYPE_7__** %2, i32* %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @S_ISREG(i32 %47)
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32, i32* @GIT_ITEROVER, align 4
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_iterator_advance(%struct.TYPE_7__** %2, i32* %51)
  %53 = call i32 @cl_assert_equal_i(i32 %50, i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_iterator_free(i32* %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @mkfifo(i8*, i32) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_iterator_for_filesystem(i32**, i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_7__**, i32*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
