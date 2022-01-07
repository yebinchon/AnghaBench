; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_pack_packbuilder__create_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_pack_packbuilder__create_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@_indexer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@_packbuilder = common dso_local global i32 0, align 4
@feed_indexer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"pack-%s.pack\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"5d410bdf97cf896f9007681b92868471d636954b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_pack_packbuilder__create_pack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %9 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %10 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 0, i8* %17, align 1
  %18 = call i32 (...) @seed_packbuilder()
  %19 = call i32 @git_indexer_new(i32* @_indexer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @_packbuilder, align 4
  %22 = load i32, i32* @feed_indexer, align 4
  %23 = call i32 @git_packbuilder_foreach(i32 %21, i32 %22, i32* %1)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @_indexer, align 4
  %26 = call i32 @git_indexer_commit(i32 %25, i32* %1)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @_indexer, align 4
  %29 = call i32* @git_indexer_hash(i32 %28)
  %30 = call i32 @git_oid_fmt(i8* %14, i32* %29)
  %31 = call i32 @git_buf_printf(%struct.TYPE_7__* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %32 = call i32 @git_buf_cstr(%struct.TYPE_7__* %3)
  %33 = call i32 @git_futils_readbuffer(%struct.TYPE_7__* %2, i32 %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @git_hash_ctx_init(i32* %4)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @git_hash_update(i32* %4, i32 %38, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = call i32 @git_hash_final(i32* %5, i32* %4)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = call i32 @git_hash_ctx_cleanup(i32* %4)
  %46 = call i32 @git_buf_dispose(%struct.TYPE_7__* %3)
  %47 = call i32 @git_buf_dispose(%struct.TYPE_7__* %2)
  %48 = call i32 @git_oid_fmt(i8* %14, i32* %5)
  %49 = call i32 @cl_assert_equal_s(i8* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @seed_packbuilder(...) #3

declare dso_local i32 @cl_git_pass(i32) #3

declare dso_local i32 @git_indexer_new(i32*, i8*, i32, i32*, i32*) #3

declare dso_local i32 @git_packbuilder_foreach(i32, i32, i32*) #3

declare dso_local i32 @git_indexer_commit(i32, i32*) #3

declare dso_local i32 @git_oid_fmt(i8*, i32*) #3

declare dso_local i32* @git_indexer_hash(i32) #3

declare dso_local i32 @git_buf_printf(%struct.TYPE_7__*, i8*, i8*) #3

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_7__*, i32) #3

declare dso_local i32 @git_buf_cstr(%struct.TYPE_7__*) #3

declare dso_local i32 @git_hash_ctx_init(i32*) #3

declare dso_local i32 @git_hash_update(i32*, i32, i32) #3

declare dso_local i32 @git_hash_final(i32*, i32*) #3

declare dso_local i32 @git_hash_ctx_cleanup(i32*) #3

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #3

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
