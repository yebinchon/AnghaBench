; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_rename.c_test_network_remote_rename__renaming_a_remote_moves_the_underlying_reference.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_rename.c_test_network_remote_rename__renaming_a_remote_moves_the_underlying_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"refs/remotes/just/renamed\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"refs/remotes/test/master\00", align 1
@_remote_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"just/renamed\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"refs/remotes/just/renamed/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_rename__renaming_a_remote_moves_the_underlying_reference() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 8, i1 false)
  %4 = load i32, i32* @GIT_ENOTFOUND, align 4
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_reference_lookup(i32** %1, i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_assert_equal_i(i32 %4, i32 %6)
  %8 = load i32, i32* @_repo, align 4
  %9 = call i32 @git_reference_lookup(i32** %1, i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_reference_free(i32* %11)
  %13 = load i32, i32* @_repo, align 4
  %14 = load i32, i32* @_remote_name, align 4
  %15 = call i32 @git_remote_rename(%struct.TYPE_4__* %2, i32 %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cl_assert_equal_i(i32 0, i32 %18)
  %20 = call i32 @git_strarray_free(%struct.TYPE_4__* %2)
  %21 = load i32, i32* @GIT_ENOTFOUND, align 4
  %22 = load i32, i32* @_repo, align 4
  %23 = call i32 @git_reference_lookup(i32** %1, i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_assert_equal_i(i32 %21, i32 %23)
  %25 = load i32, i32* @_repo, align 4
  %26 = call i32 @git_reference_lookup(i32** %1, i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_remote_rename(%struct.TYPE_4__*, i32, i32, i8*) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
