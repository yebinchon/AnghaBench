; ModuleID = '/home/carl/AnghaBench/libgit2/tests/remote/extr_list.c_test_remote_list__always_checks_disk_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/remote/extr_list.c_test_remote_list__always_checks_disk_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@_repo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"valid-name\00", align 1
@TEST_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_remote_list__always_checks_disk_config() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = load i32*, i32** @_repo, align 8
  %5 = call i32 @git_repository_path(i32* %4)
  %6 = call i32 @git_repository_open(i32** %1, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** @_repo, align 8
  %9 = call i32 @git_remote_list(%struct.TYPE_4__* %2, i32* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cl_assert_equal_sz(i32 %12, i32 1)
  %14 = call i32 @git_strarray_free(%struct.TYPE_4__* %2)
  %15 = load i32*, i32** @_repo, align 8
  %16 = load i32, i32* @TEST_URL, align 4
  %17 = call i32 @git_remote_create(i32** %3, i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** @_repo, align 8
  %20 = call i32 @git_remote_list(%struct.TYPE_4__* %2, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_sz(i32 %23, i32 2)
  %25 = call i32 @git_strarray_free(%struct.TYPE_4__* %2)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_remote_list(%struct.TYPE_4__* %2, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_sz(i32 %30, i32 2)
  %32 = call i32 @git_strarray_free(%struct.TYPE_4__* %2)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_repository_free(i32* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_remote_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @git_repository_path(i32*) #1

declare dso_local i32 @git_remote_list(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #1

declare dso_local i32 @git_remote_create(i32**, i32*, i8*, i32) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
