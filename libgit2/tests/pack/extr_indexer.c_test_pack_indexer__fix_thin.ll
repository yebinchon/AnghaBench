; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_test_pack_indexer__fix_thin.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_indexer.c_test_pack_indexer__fix_thin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"thin.git\00", align 1
@base_obj = common dso_local global i32 0, align 4
@base_obj_len = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"e68fe8129b546b101aee9510c5328e7f21ca1d18\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@thin_pack = common dso_local global i8* null, align 8
@thin_pack_len = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"fefdb2d740a3a6b6c03a0c7d6ce431c6d5810e13\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"pack-fefdb2d740a3a6b6c03a0c7d6ce431c6d5810e13.pack\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pack_indexer__fix_thin() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  store i32* null, i32** %1, align 8
  %12 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 20, i1 false)
  %13 = call i32 @git_repository_init(i32** %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @git_repository_odb(i32** %4, i32* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @base_obj, align 4
  %20 = load i32, i32* @base_obj_len, align 4
  %21 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %22 = call i32 @git_odb_write(i32* %5, i32* %18, i32 %19, i32 %20, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @cl_assert_equal_oid(i32* %6, i32* %5)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_indexer_new(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %26, i32* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i8*, i8** @thin_pack, align 8
  %31 = load i32, i32* @thin_pack_len, align 4
  %32 = call i32 @git_indexer_append(i32* %29, i8* %30, i32 %31, %struct.TYPE_4__* %2)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_indexer_commit(i32* %34, %struct.TYPE_4__* %2)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i32 %38, i32 2)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cl_assert_equal_i(i32 %41, i32 2)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cl_assert_equal_i(i32 %44, i32 2)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_i(i32 %47, i32 1)
  %49 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32*, i32** %1, align 8
  %51 = call i32* @git_indexer_hash(i32* %50)
  %52 = call i32 @cl_assert_equal_oid(i32* %6, i32* %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_indexer_free(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @git_odb_free(i32* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @git_repository_free(i32* %57)
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* @O_RDONLY, align 4
  %61 = call i32 @p_open(i8* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, -1
  %64 = zext i1 %63 to i32
  %65 = call i32 @cl_assert(i32 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @p_stat(i8* %66, %struct.stat* %10)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = call i32 @git_indexer_new(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32* null)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %73 = call i32 @p_read(i32 %71, i8* %72, i32 128)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, -1
  %76 = zext i1 %75 to i32
  %77 = call i32 @cl_assert(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @p_close(i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @git_indexer_append(i32* %80, i8* %81, i32 %82, %struct.TYPE_4__* %2)
  %84 = call i32 @cl_git_pass(i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_indexer_commit(i32* %85, %struct.TYPE_4__* %2)
  %87 = call i32 @cl_git_pass(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cl_assert_equal_i(i32 %89, i32 3)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cl_assert_equal_i(i32 %92, i32 3)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cl_assert_equal_i(i32 %95, i32 3)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cl_assert_equal_i(i32 %98, i32 0)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @git_indexer_free(i32* %100)
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

declare dso_local i32 @git_indexer_append(i32*, i8*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @git_indexer_commit(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32* @git_indexer_hash(i32*) #2

declare dso_local i32 @git_indexer_free(i32*) #2

declare dso_local i32 @git_odb_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @p_open(i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @p_read(i32, i8*, i32) #2

declare dso_local i32 @p_close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
