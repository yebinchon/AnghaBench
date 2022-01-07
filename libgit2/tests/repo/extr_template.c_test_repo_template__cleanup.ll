; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_test_repo_template__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_test_repo_template__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@_global_path = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"tmp_global_path\00", align 1
@fixture_repo = common dso_local global i8* null, align 8
@fixture_templates = common dso_local global i8* null, align 8
@_repo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_template__cleanup() #0 {
  %1 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %2 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @_global_path, i32 0, i32 0), align 4
  %4 = call i32 @git_libgit2_opts(i32 %1, i32 %2, i32 %3)
  %5 = call i32 @git_buf_dispose(%struct.TYPE_3__* @_global_path)
  %6 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @fixture_repo, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** @fixture_repo, align 8
  %11 = call i32 @cl_fixture_cleanup(i8* %10)
  store i8* null, i8** @fixture_repo, align 8
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i8*, i8** @fixture_templates, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** @fixture_templates, align 8
  %17 = call i32 @cl_fixture_cleanup(i8* %16)
  store i8* null, i8** @fixture_templates, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** @_repo, align 8
  %20 = call i32 @git_repository_free(i32* %19)
  store i32* null, i32** @_repo, align 8
  ret void
}

declare dso_local i32 @git_libgit2_opts(i32, i32, i32) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_3__*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
