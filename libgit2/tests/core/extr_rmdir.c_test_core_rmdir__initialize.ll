; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_rmdir.c_test_core_rmdir__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_rmdir.c_test_core_rmdir__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@empty_tmp_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/one\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/one/two_one\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/one/two_two\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/one/two_two/three\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"/two\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_rmdir__initialize() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %3 = load i32, i32* @empty_tmp_dir, align 4
  %4 = call i32 @p_mkdir(i32 %3, i32 511)
  %5 = call i32 @cl_must_pass(i32 %4)
  %6 = load i32, i32* @empty_tmp_dir, align 4
  %7 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @p_mkdir(i32 %10, i32 511)
  %12 = call i32 @cl_must_pass(i32 %11)
  %13 = load i32, i32* @empty_tmp_dir, align 4
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @p_mkdir(i32 %17, i32 511)
  %19 = call i32 @cl_must_pass(i32 %18)
  %20 = load i32, i32* @empty_tmp_dir, align 4
  %21 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @p_mkdir(i32 %24, i32 511)
  %26 = call i32 @cl_must_pass(i32 %25)
  %27 = load i32, i32* @empty_tmp_dir, align 4
  %28 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @p_mkdir(i32 %31, i32 511)
  %33 = call i32 @cl_must_pass(i32 %32)
  %34 = load i32, i32* @empty_tmp_dir, align 4
  %35 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @p_mkdir(i32 %38, i32 511)
  %40 = call i32 @cl_must_pass(i32 %39)
  %41 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
