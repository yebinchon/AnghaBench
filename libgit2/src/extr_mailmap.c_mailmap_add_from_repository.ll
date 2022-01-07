; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mailmap.c_mailmap_add_from_repository.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mailmap.c_mailmap_add_from_repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@MM_BLOB_DEFAULT = common dso_local global i8* null, align 8
@MM_BLOB_CONFIG = common dso_local global i32 0, align 4
@MM_FILE_CONFIG = common dso_local global i32 0, align 4
@MM_FILE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*)* @mailmap_add_from_repository to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mailmap_add_from_repository(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i1 [ false, %2 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i8*, i8** @MM_BLOB_DEFAULT, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %25, %17
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call i64 @git_repository_config(i32** %5, %struct.TYPE_11__* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @MM_BLOB_CONFIG, align 4
  %34 = call i64 @git_config_get_string_buf(%struct.TYPE_12__* %6, i32* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @MM_FILE_CONFIG, align 4
  %42 = call i64 @git_config_get_path(%struct.TYPE_12__* %7, i32* %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = load i8*, i8** @MM_FILE, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = call i32 @mailmap_add_file_ondisk(i32* %54, i8* %55, %struct.TYPE_11__* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @mailmap_add_blob(i32* %62, %struct.TYPE_11__* %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32*, i32** %3, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = call i32 @mailmap_add_file_ondisk(i32* %70, i8* %71, %struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = call i32 @git_buf_dispose(%struct.TYPE_12__* %6)
  %76 = call i32 @git_buf_dispose(%struct.TYPE_12__* %7)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @git_config_free(i32* %77)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @git_repository_config(i32**, %struct.TYPE_11__*) #2

declare dso_local i64 @git_config_get_string_buf(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i64 @git_config_get_path(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @mailmap_add_file_ondisk(i32*, i8*, %struct.TYPE_11__*) #2

declare dso_local i32 @mailmap_add_blob(i32*, %struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
