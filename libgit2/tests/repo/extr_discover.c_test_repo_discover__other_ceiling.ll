; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_test_repo_discover__other_ceiling.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_test_repo_discover__other_ceiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ceiling_dirs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SUB_REPOSITORY_FOLDER = common dso_local global i32 0, align 4
@SUB_REPOSITORY_GITDIR = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@discovered = common dso_local global i32 0, align 4
@SUB_REPOSITORY_FOLDER_SUB = common dso_local global i32 0, align 4
@SUB_REPOSITORY_FOLDER_SUB_SUB = common dso_local global i32 0, align 4
@SUB_REPOSITORY_FOLDER_SUB_SUB_SUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_discover__other_ceiling() #0 {
  %1 = load i32, i32* @SUB_REPOSITORY_FOLDER, align 4
  %2 = call i32 @append_ceiling_dir(%struct.TYPE_3__* @ceiling_dirs, i32 %1)
  %3 = load i32, i32* @SUB_REPOSITORY_FOLDER, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ceiling_dirs, i32 0, i32 0), align 4
  %5 = load i32, i32* @SUB_REPOSITORY_GITDIR, align 4
  %6 = call i32 @ensure_repository_discover(i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* @GIT_ENOTFOUND, align 4
  %8 = load i32, i32* @SUB_REPOSITORY_FOLDER_SUB, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ceiling_dirs, i32 0, i32 0), align 4
  %10 = call i32 @git_repository_discover(i32* @discovered, i32 %8, i32 0, i32 %9)
  %11 = call i32 @cl_assert_equal_i(i32 %7, i32 %10)
  %12 = load i32, i32* @GIT_ENOTFOUND, align 4
  %13 = load i32, i32* @SUB_REPOSITORY_FOLDER_SUB_SUB, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ceiling_dirs, i32 0, i32 0), align 4
  %15 = call i32 @git_repository_discover(i32* @discovered, i32 %13, i32 0, i32 %14)
  %16 = call i32 @cl_assert_equal_i(i32 %12, i32 %15)
  %17 = load i32, i32* @GIT_ENOTFOUND, align 4
  %18 = load i32, i32* @SUB_REPOSITORY_FOLDER_SUB_SUB_SUB, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ceiling_dirs, i32 0, i32 0), align 4
  %20 = call i32 @git_repository_discover(i32* @discovered, i32 %18, i32 0, i32 %19)
  %21 = call i32 @cl_assert_equal_i(i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @append_ceiling_dir(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ensure_repository_discover(i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_repository_discover(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
