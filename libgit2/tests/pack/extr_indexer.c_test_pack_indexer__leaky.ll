; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_test_pack_indexer__leaky.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_test_pack_indexer__leaky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@leaky_pack = common dso_local global i32 0, align 4
@leaky_pack_len = common dso_local global i32 0, align 4
@GIT_ERROR_INDEXER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pack_indexer__leaky() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  store i32* null, i32** %1, align 8
  %3 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4, i1 false)
  %4 = call i32 @git_indexer_new(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* null)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* @leaky_pack, align 4
  %8 = load i32, i32* @leaky_pack_len, align 4
  %9 = call i32 @git_indexer_append(i32* %6, i32 %7, i32 %8, %struct.TYPE_5__* %2)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_indexer_commit(i32* %11, %struct.TYPE_5__* %2)
  %13 = call i32 @cl_git_fail(i32 %12)
  %14 = call %struct.TYPE_6__* (...) @git_error_last()
  %15 = icmp ne %struct.TYPE_6__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = call %struct.TYPE_6__* (...) @git_error_last()
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %22 = call i32 @cl_assert_equal_i(i32 %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_indexer_free(i32* %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_indexer_new(i32**, i8*, i32, i32*, i32*) #2

declare dso_local i32 @git_indexer_append(i32*, i32, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_indexer_commit(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local %struct.TYPE_6__* @git_error_last(...) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_indexer_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
