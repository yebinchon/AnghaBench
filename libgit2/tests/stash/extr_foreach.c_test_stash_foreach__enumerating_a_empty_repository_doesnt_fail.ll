; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_foreach.c_test_stash_foreach__enumerating_a_empty_repository_doesnt_fail.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_foreach.c_test_stash_foreach__enumerating_a_empty_repository_doesnt_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@repo = common dso_local global i32 0, align 4
@REPO_NAME = common dso_local global i32 0, align 4
@callback_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_foreach__enumerating_a_empty_repository_doesnt_fail() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  store i8** %3, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 0), align 8
  %4 = load i32, i32* @REPO_NAME, align 4
  %5 = call i32 @git_repository_init(i32* @repo, i32 %4, i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = load i32, i32* @callback_cb, align 4
  %9 = call i32 @git_stash_foreach(i32 %7, i32 %8, %struct.TYPE_3__* @data)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @data, i32 0, i32 1), align 8
  %12 = call i32 @cl_assert_equal_i(i32 0, i32 %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32*, i32, i32) #2

declare dso_local i32 @git_stash_foreach(i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
