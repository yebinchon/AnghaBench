; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__network_full.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__network_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@LIVE_REPO_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@g_options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@GIT_REMOTE_DOWNLOAD_TAGS_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__network_full() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @LIVE_REPO_URL, align 4
  %3 = call i32 @git_clone(i32* @g_repo, i32 %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @g_options)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_is_bare(i32 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_remote_lookup(%struct.TYPE_4__** %1, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_REMOTE_DOWNLOAD_TAGS_AUTO, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_assert_equal_i(i32 %14, i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = call i32 @git_remote_free(%struct.TYPE_4__* %19)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_clone(i32*, i32, i8*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_is_bare(i32) #1

declare dso_local i32 @git_remote_lookup(%struct.TYPE_4__**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_remote_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
