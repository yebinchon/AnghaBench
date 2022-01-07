; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_global.c_test_config_global__open_programdata.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_global.c_test_config_global__open_programdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"GITTEST_INVASIVE_FS_STRUCTURE\00", align 1
@GIT_OPT_GET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_PROGRAMDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/config\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"programdata.var\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"even higher level\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"./foo.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_global__open_programdata() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i64 @cl_is_env_set(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @cl_skip()
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @GIT_OPT_GET_SEARCH_PATH, align 4
  %13 = load i32, i32* @GIT_CONFIG_LEVEL_PROGRAMDATA, align 4
  %14 = call i32 @git_libgit2_opts(i32 %12, i32 %13, %struct.TYPE_7__* %3)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @git_path_isdir(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @p_mkdir(i32 %22, i32 511)
  %24 = call i32 @cl_git_pass(i32 %23)
  br label %25

25:                                               ; preds = %20, %11
  %26 = call i32 @git_buf_puts(%struct.TYPE_7__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @git_config_open_ondisk(i32** %1, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_config_set_string(i32* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @git_buf_dispose(%struct.TYPE_7__* %3)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_config_free(i32* %36)
  %38 = call i32 @git_config_open_default(i32** %1)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_config_get_string_buf(%struct.TYPE_7__* %4, i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_config_free(i32* %45)
  %47 = call i32 @git_buf_dispose(%struct.TYPE_7__* %4)
  %48 = call i32 @git_repository_init(i32** %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @git_repository_config(i32** %1, i32* %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_config_get_string_buf(%struct.TYPE_7__* %4, i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_config_free(i32* %59)
  %61 = call i32 @git_buf_dispose(%struct.TYPE_7__* %4)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @git_repository_free(i32* %62)
  %64 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @cl_is_env_set(i8*) #2

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_libgit2_opts(i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @git_path_isdir(i32) #2

declare dso_local i32 @p_mkdir(i32, i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @git_config_open_ondisk(i32**, i32) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_config_open_default(i32**) #2

declare dso_local i32 @git_config_get_string_buf(%struct.TYPE_7__*, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_repository_config(i32**, i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
