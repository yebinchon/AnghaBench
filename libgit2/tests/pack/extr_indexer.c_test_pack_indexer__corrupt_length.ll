; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_test_pack_indexer__corrupt_length.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_test_pack_indexer__corrupt_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"thin.git\00", align 1
@base_obj = common dso_local global i32 0, align 4
@base_obj_len = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"e68fe8129b546b101aee9510c5328e7f21ca1d18\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@corrupt_thin_pack = common dso_local global i32 0, align 4
@corrupt_thin_pack_len = common dso_local global i32 0, align 4
@GIT_ERROR_ZLIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pack_indexer__corrupt_length() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %7 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = call i32 @git_repository_init(i32** %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @git_repository_odb(i32** %4, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @base_obj, align 4
  %15 = load i32, i32* @base_obj_len, align 4
  %16 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %17 = call i32 @git_odb_write(i32* %5, i32* %13, i32 %14, i32 %15, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @cl_assert_equal_oid(i32* %6, i32* %5)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @git_indexer_new(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %21, i32* null)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @corrupt_thin_pack, align 4
  %26 = load i32, i32* @corrupt_thin_pack_len, align 4
  %27 = call i32 @git_indexer_append(i32* %24, i32 %25, i32 %26, %struct.TYPE_5__* %2)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_indexer_commit(i32* %29, %struct.TYPE_5__* %2)
  %31 = call i32 @cl_git_fail(i32 %30)
  %32 = call %struct.TYPE_6__* (...) @git_error_last()
  %33 = icmp ne %struct.TYPE_6__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = call %struct.TYPE_6__* (...) @git_error_last()
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GIT_ERROR_ZLIB, align 4
  %40 = call i32 @cl_assert_equal_i(i32 %38, i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_indexer_free(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_odb_free(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_repository_free(i32* %45)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_repository_odb(i32**, i32*) #2

declare dso_local i32 @git_odb_write(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @git_indexer_new(i32**, i8*, i32, i32*, i32*) #2

declare dso_local i32 @git_indexer_append(i32*, i32, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_indexer_commit(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local %struct.TYPE_6__* @git_error_last(...) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_indexer_free(i32*) #2

declare dso_local i32 @git_odb_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
