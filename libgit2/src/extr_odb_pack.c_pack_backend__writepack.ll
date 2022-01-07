; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__writepack.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__writepack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.git_odb_writepack = type { i32 }
%struct.pack_backend = type { i32 }
%struct.pack_writepack = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@GIT_INDEXER_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@pack_backend__writepack_append = common dso_local global i32 0, align 4
@pack_backend__writepack_commit = common dso_local global i32 0, align 4
@pack_backend__writepack_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_odb_writepack**, i32*, i32*, i32, i8*)* @pack_backend__writepack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_backend__writepack(%struct.git_odb_writepack** %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.git_odb_writepack**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca %struct.pack_backend*, align 8
  %14 = alloca %struct.pack_writepack*, align 8
  store %struct.git_odb_writepack** %0, %struct.git_odb_writepack*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_INDEXER_OPTIONS_INIT to i8*), i64 16, i1 false)
  %16 = load %struct.git_odb_writepack**, %struct.git_odb_writepack*** %7, align 8
  %17 = icmp ne %struct.git_odb_writepack** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.git_odb_writepack**, %struct.git_odb_writepack*** %7, align 8
  store %struct.git_odb_writepack* null, %struct.git_odb_writepack** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to %struct.pack_backend*
  store %struct.pack_backend* %31, %struct.pack_backend** %13, align 8
  %32 = call %struct.pack_writepack* @git__calloc(i32 1, i32 32)
  store %struct.pack_writepack* %32, %struct.pack_writepack** %14, align 8
  %33 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %34 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.pack_writepack* %33)
  %35 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %36 = getelementptr inbounds %struct.pack_writepack, %struct.pack_writepack* %35, i32 0, i32 1
  %37 = load %struct.pack_backend*, %struct.pack_backend** %13, align 8
  %38 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @git_indexer_new(i32* %36, i32 %39, i32 0, i32* %40, %struct.TYPE_6__* %12)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %21
  %44 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %45 = call i32 @git__free(%struct.pack_writepack* %44)
  store i32 -1, i32* %6, align 4
  br label %66

46:                                               ; preds = %21
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %49 = getelementptr inbounds %struct.pack_writepack, %struct.pack_writepack* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i32* %47, i32** %50, align 8
  %51 = load i32, i32* @pack_backend__writepack_append, align 4
  %52 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %53 = getelementptr inbounds %struct.pack_writepack, %struct.pack_writepack* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @pack_backend__writepack_commit, align 4
  %56 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %57 = getelementptr inbounds %struct.pack_writepack, %struct.pack_writepack* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @pack_backend__writepack_free, align 4
  %60 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %61 = getelementptr inbounds %struct.pack_writepack, %struct.pack_writepack* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.pack_writepack*, %struct.pack_writepack** %14, align 8
  %64 = bitcast %struct.pack_writepack* %63 to %struct.git_odb_writepack*
  %65 = load %struct.git_odb_writepack**, %struct.git_odb_writepack*** %7, align 8
  store %struct.git_odb_writepack* %64, %struct.git_odb_writepack** %65, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %46, %43
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.pack_writepack* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.pack_writepack*) #2

declare dso_local i64 @git_indexer_new(i32*, i32, i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @git__free(%struct.pack_writepack*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
