; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.pack_write_context = type { i32*, i32* }

@GIT_INDEXER_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PREPARE_PACK = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_FSYNCOBJECTFILES = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_packbuilder_write(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.pack_write_context, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_INDEXER_OPTIONS_INIT to i8*), i64 16, i1 false)
  %18 = load i32, i32* @PREPARE_PACK, align 4
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @git_indexer_new(i32** %13, i8* %23, i32 %24, i32 %27, %struct.TYPE_8__* %12)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %67

31:                                               ; preds = %5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GIT_CONFIGMAP_FSYNCOBJECTFILES, align 4
  %36 = call i32 @git_repository__configmap_lookup(i32* %16, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @git_indexer__set_fsync(i32* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %38, %31
  %45 = load i32*, i32** %13, align 8
  %46 = getelementptr inbounds %struct.pack_write_context, %struct.pack_write_context* %15, i32 0, i32 1
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.pack_write_context, %struct.pack_write_context* %15, i32 0, i32 0
  store i32* %14, i32** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = load i32, i32* @write_cb, align 4
  %50 = call i64 @git_packbuilder_foreach(%struct.TYPE_7__* %48, i32 %49, %struct.pack_write_context* %15)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @git_indexer_commit(i32* %53, i32* %14)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %44
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @git_indexer_free(i32* %57)
  store i32 -1, i32* %6, align 4
  br label %67

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @git_indexer_hash(i32* %62)
  %64 = call i32 @git_oid_cpy(i32* %61, i32 %63)
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @git_indexer_free(i32* %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %56, %30
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_indexer_new(i32**, i8*, i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32, i32) #2

declare dso_local i32 @git_indexer__set_fsync(i32*, i32) #2

declare dso_local i64 @git_packbuilder_foreach(%struct.TYPE_7__*, i32, %struct.pack_write_context*) #2

declare dso_local i64 @git_indexer_commit(i32*, i32*) #2

declare dso_local i32 @git_indexer_free(i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_indexer_hash(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
