; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_rename.c_test_network_remote_rename__renaming_a_remote_without_a_fetchrefspec_doesnt_create_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_rename.c_test_network_remote_rename__renaming_a_remote_without_a_fetchrefspec_doesnt_create_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"remote.test.fetch\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@_remote_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"just/renamed\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"remote.just/renamed.fetch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_rename__renaming_a_remote_without_a_fetchrefspec_doesnt_create_one() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_repository_config__weakptr(i32** %1, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_config_delete_entry(i32* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_remote_lookup(i32** %2, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_remote_free(i32* %14)
  %16 = load i32, i32* @_repo, align 4
  %17 = call i32 @assert_config_entry_existence(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  %18 = load i32, i32* @_repo, align 4
  %19 = load i32, i32* @_remote_name, align 4
  %20 = call i32 @git_remote_rename(%struct.TYPE_4__* %3, i32 %18, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_i(i32 0, i32 %23)
  %25 = call i32 @git_strarray_free(%struct.TYPE_4__* %3)
  %26 = load i32, i32* @_repo, align 4
  %27 = call i32 @assert_config_entry_existence(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config__weakptr(i32**, i32) #2

declare dso_local i32 @git_config_delete_entry(i32*, i8*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @assert_config_entry_existence(i32, i8*, i32) #2

declare dso_local i32 @git_remote_rename(%struct.TYPE_4__*, i32, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
