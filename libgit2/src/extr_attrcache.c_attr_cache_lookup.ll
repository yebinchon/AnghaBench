; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_attr_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_attr_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i32** }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_13__**, i32*, %struct.TYPE_12__*, i64, i8*, i8*)* @attr_cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_cache_lookup(i32** %0, %struct.TYPE_13__** %1, i32* %2, %struct.TYPE_12__* %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_13__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_11__*, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = bitcast %struct.TYPE_11__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %25 = load i32*, i32** %11, align 8
  %26 = call i8* @git_repository_workdir(i32* %25)
  store i8* %26, i8** %18, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32* @git_repository_attr_cache(i32* %27)
  store i32* %28, i32** %20, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %21, align 8
  store i32* null, i32** %22, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %7
  %32 = load i8*, i8** %15, align 8
  %33 = call i64 @git_path_root(i8* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi %struct.TYPE_11__* [ %40, %38 ], [ %17, %41 ]
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %23, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i64 @git_buf_joinpath(%struct.TYPE_11__* %44, i8* %45, i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %8, align 4
  br label %112

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %15, align 8
  br label %54

54:                                               ; preds = %50, %31, %7
  %55 = load i8*, i8** %15, align 8
  store i8* %55, i8** %19, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** %19, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @git__prefixcmp(i8* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = load i8*, i8** %19, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %19, align 8
  br label %69

69:                                               ; preds = %63, %58, %54
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @attr_cache_lock(i32* %70)
  store i32 %71, i32* %16, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %105

74:                                               ; preds = %69
  %75 = load i32*, i32** %20, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = call %struct.TYPE_13__* @attr_cache_lookup_entry(i32* %75, i8* %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %21, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load i32*, i32** %11, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @attr_cache_make_entry(%struct.TYPE_13__** %21, i32* %81, i8* %82)
  store i32 %83, i32* %16, align 4
  br label %102

84:                                               ; preds = %74
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %22, align 8
  %99 = load i32*, i32** %22, align 8
  %100 = call i32 @GIT_REFCOUNT_INC(i32* %99)
  br label %101

101:                                              ; preds = %92, %84
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @attr_cache_unlock(i32* %103)
  br label %105

105:                                              ; preds = %102, %73
  %106 = load i32*, i32** %22, align 8
  %107 = load i32**, i32*** %9, align 8
  store i32* %106, i32** %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %109 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %109, align 8
  %110 = call i32 @git_buf_dispose(%struct.TYPE_11__* %17)
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %105, %49
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_repository_workdir(i32*) #2

declare dso_local i32* @git_repository_attr_cache(i32*) #2

declare dso_local i64 @git_path_root(i8*) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_11__*, i8*, i8*) #2

declare dso_local i32 @git__prefixcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @attr_cache_lock(i32*) #2

declare dso_local %struct.TYPE_13__* @attr_cache_lookup_entry(i32*, i8*) #2

declare dso_local i32 @attr_cache_make_entry(%struct.TYPE_13__**, i32*, i8*) #2

declare dso_local i32 @GIT_REFCOUNT_INC(i32*) #2

declare dso_local i32 @attr_cache_unlock(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
