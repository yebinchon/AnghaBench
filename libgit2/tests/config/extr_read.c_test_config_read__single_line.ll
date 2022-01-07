; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__single_line.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__single_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@clean_test_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"./testconfig\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"[some] var = value\0A[some \22OtheR\22] var = value\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"some.var\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"some.OtheR.var\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"[some] var = value\0A[some \22OtheR\22]var = value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__single_line() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i32*, align 8
  %3 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %4 = call i32 @cl_set_cleanup(i32* @clean_test_config, i32* null)
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @git_config_open_ondisk(i32** %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @git_config_get_string_buf(%struct.TYPE_6__* %1, i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cl_assert_equal_s(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @git_buf_clear(%struct.TYPE_6__* %1)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_config_get_string_buf(%struct.TYPE_6__* %1, i32* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cl_assert_equal_s(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_config_free(i32* %21)
  %23 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @git_config_open_ondisk(i32** %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_buf_clear(%struct.TYPE_6__* %1)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_config_get_string_buf(%struct.TYPE_6__* %1, i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_s(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @git_buf_clear(%struct.TYPE_6__* %1)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @git_config_get_string_buf(%struct.TYPE_6__* %1, i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_s(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_config_free(i32* %40)
  %42 = call i32 @git_buf_dispose(%struct.TYPE_6__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #2

declare dso_local i32 @git_config_get_string_buf(%struct.TYPE_6__*, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_6__*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
