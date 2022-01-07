; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_configlevel.c_test_config_configlevel__can_read_from_a_single_level_focused_file_after_parent_config_has_been_freed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_configlevel.c_test_config_configlevel__can_read_from_a_single_level_focused_file_after_parent_config_has_been_freed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"config/config18\00", align 1
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"config/config19\00", align 1
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"core.stringglobal\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"don't find me!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_configlevel__can_read_from_a_single_level_focused_file_after_parent_config_has_been_freed() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = call i32 @git_config_new(i32** %1)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %10 = call i32 @git_config_add_file_ondisk(i32* %7, i32 %8, i32 %9, i32* null, i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %15 = call i32 @git_config_add_file_ondisk(i32* %12, i32 %13, i32 %14, i32* null, i32 0)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %19 = call i32 @git_config_open_level(i32** %2, i32* %17, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_config_free(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_config_get_string_buf(%struct.TYPE_4__* %3, i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = call i32 @git_buf_dispose(%struct.TYPE_4__* %3)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_config_free(i32* %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_config_new(i32**) #2

declare dso_local i32 @git_config_add_file_ondisk(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_config_open_level(i32**, i32*, i32) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_config_get_string_buf(%struct.TYPE_4__*, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
