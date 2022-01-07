; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__foreach.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@sm_lookup_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"submod2/.gitmodules\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"submodule.smchangedindex.path\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sm_changed_index\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"submodule.smchangedindex.url\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"../submod2_target\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"submodule.sm_changed_index.path\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"submodule.sm_changed_index.url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_lookup__foreach() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 4)
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i32, i32* @sm_lookup_cb, align 4
  %6 = call i32 @git_submodule_foreach(i32 %4, i32 %5, %struct.TYPE_4__* %2)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cl_assert_equal_i(i32 8, i32 %9)
  %11 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 4)
  %12 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_config_set_string(i32* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_config_set_string(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_config_delete_entry(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_config_delete_entry(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_config_free(i32* %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = load i32, i32* @sm_lookup_cb, align 4
  %30 = call i32 @git_submodule_foreach(i32 %28, i32 %29, %struct.TYPE_4__* %2)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_i(i32 8, i32 %33)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_foreach(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_delete_entry(i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
