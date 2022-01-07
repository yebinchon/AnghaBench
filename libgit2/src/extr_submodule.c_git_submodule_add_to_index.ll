; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_add_to_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_add_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_16__ = type { i64, i8* }
%struct.TYPE_15__ = type { i64, i8* }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@GIT_SUBMODULE_STATUS__WD_OID_VALID = common dso_local global i32 0, align 4
@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot add submodule without working directory\00", align 1
@GIT_INDEX_CAPABILITY_NO_FILEMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot add submodule without HEAD to index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_add_to_index(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca %struct.stat, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %12 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_19__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = call i32 @assert(%struct.TYPE_17__* %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_repository_index__weakptr(i32** %7, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @git_repository_workdir(i32 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @git_buf_joinpath(%struct.TYPE_19__* %8, i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = call i32 @git_submodule_open(i32** %6, %struct.TYPE_17__* %39)
  store i32 %40, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %28, %2
  br label %122

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @p_stat(i32 %45, %struct.stat* %11)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %50 = call i32 @git_error_set(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %122

51:                                               ; preds = %43
  %52 = call i32 @memset(%struct.TYPE_18__* %10, i32 0, i32 40)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @git_index_caps(i32* %57)
  %59 = load i32, i32* @GIT_INDEX_CAPABILITY_NO_FILEMODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @git_index_entry__init_from_stat(%struct.TYPE_18__* %10, %struct.stat* %11, i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %73 = call i32 @git_error_set(i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %122

74:                                               ; preds = %51
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = call i32 @git_oid_cpy(i32* %75, i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = call i32 @git_commit_lookup(i32** %9, i32* %79, i32* %81)
  store i32 %82, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %122

85:                                               ; preds = %74
  %86 = load i32*, i32** %9, align 8
  %87 = call i64 @git_commit_time(i32* %86)
  %88 = inttoptr i64 %87 to i8*
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @git_commit_time(i32* %93)
  %95 = inttoptr i64 %94 to i8*
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @git_commit_free(i32* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @git_index_add(i32* %102, %struct.TYPE_18__* %10)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %85
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @git_index_write(i32* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = call i32 @git_oid_cpy(i32* %116, i32* %118)
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %106, %85
  br label %122

122:                                              ; preds = %121, %84, %71, %48, %42
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @git_repository_free(i32* %123)
  %125 = call i32 @git_buf_dispose(%struct.TYPE_19__* %8)
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_17__*) #2

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_submodule_open(i32**, %struct.TYPE_17__*) #2

declare dso_local i64 @p_stat(i32, %struct.stat*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @git_index_entry__init_from_stat(%struct.TYPE_18__*, %struct.stat*, i32) #2

declare dso_local i32 @git_index_caps(i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #2

declare dso_local i64 @git_commit_time(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_18__*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
