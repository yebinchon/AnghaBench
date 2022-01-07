; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_test_mailmap_parsing__file_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_test_mailmap_parsing__file_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mailmap\00", align 1
@g_repo = common dso_local global i32 0, align 4
@g_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mailmap.file\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"mailmap/file_override\00", align 1
@g_mailmap = common dso_local global %struct.TYPE_4__* null, align 8
@resolved_with_file_override = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mailmap_parsing__file_config() #0 {
  %1 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @g_repo, align 4
  %2 = load i32, i32* @g_repo, align 4
  %3 = call i32 @git_repository_config(i32* @g_config, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @g_config, align 4
  %6 = call i32 @cl_fixture(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @git_config_set_string(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_mailmap_from_repository(%struct.TYPE_4__** @g_mailmap, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_mailmap, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @git_vector_length(i32* %13)
  %15 = call i32 @cl_assert_equal_sz(i32 %14, i32 9)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_mailmap, align 8
  %17 = load i32, i32* @resolved_with_file_override, align 4
  %18 = load i32, i32* @resolved_with_file_override, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @check_mailmap_resolve(%struct.TYPE_4__* %16, i32 %17, i32 %19)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config(i32*, i32) #1

declare dso_local i32 @git_config_set_string(i32, i8*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_mailmap_from_repository(%struct.TYPE_4__**, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_vector_length(i32*) #1

declare dso_local i32 @check_mailmap_resolve(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
