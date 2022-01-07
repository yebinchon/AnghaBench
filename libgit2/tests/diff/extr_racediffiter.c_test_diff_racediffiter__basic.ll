; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_racediffiter.c_test_diff_racediffiter__basic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_racediffiter.c_test_diff_racediffiter__basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"another.txt\00", align 1
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"readme.txt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"zzzzz/\00", align 1
@GIT_DELTA_IGNORED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"diff/zzzzz\00", align 1
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@notify_cb__basic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_racediffiter__basic() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [4 x %struct.TYPE_6__], align 16
  %5 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 24, i1 false)
  %6 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %2, align 8
  %7 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 16
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %10 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %14 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 16
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %18 = load i32, i32* @GIT_DELTA_IGNORED, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i8* null, i8** %20, align 16
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = call i32 @p_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %23 = call i32 @cl_must_pass(i32 %22)
  %24 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %25 = load i32, i32* @GIT_DIFF_RECURSE_UNTRACKED_DIRS, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @notify_cb__basic, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %33, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @git_diff_index_to_workdir(i32** %3, i32* %34, i32* null, %struct.TYPE_5__* %1)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @git_diff_free(i32* %37)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
