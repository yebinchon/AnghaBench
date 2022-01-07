; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_git_indexer_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_git_indexer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@GIT_INDEXER_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@git_indexer_new.suff = internal constant [6 x i8] c"/pack\00", align 1
@GIT_PACK_FILE_MODE = common dso_local global i32 0, align 4
@git_repository__fsync_gitdir = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_indexer_new(%struct.TYPE_14__** %0, i8* %1, i32 %2, i32* %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  %18 = bitcast %struct.TYPE_13__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_INDEXER_OPTIONS_INIT to i8*), i64 12, i1 false)
  %19 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %20, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %25 = call i32 @memcpy(%struct.TYPE_13__* %12, %struct.TYPE_13__* %24, i32 12)
  br label %26

26:                                               ; preds = %23, %5
  %27 = call %struct.TYPE_14__* @git__calloc(i32 1, i32 56)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %13, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %28)
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 10
  store i32* %30, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %9, align 4
  br label %47

45:                                               ; preds = %26
  %46 = load i32, i32* @GIT_PACK_FILE_MODE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 7
  %53 = call i32 @git_hash_ctx_init(i32* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 6
  %56 = call i32 @git_hash_ctx_init(i32* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 5
  %59 = call i32 @git_buf_init(i32* %58, i32 0)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  %62 = call i32 @git_oidmap_new(i32* %61)
  store i32 %62, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %117

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* @git_repository__fsync_gitdir, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @git_buf_joinpath(i32* %14, i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @git_indexer_new.suff, i64 0, i64 0))
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %117

81:                                               ; preds = %75
  %82 = call i32 @git_buf_cstr(i32* %14)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @git_futils_mktmp(i32* %15, i32 %82, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = call i32 @git_buf_dispose(i32* %14)
  %88 = load i32, i32* %17, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %117

91:                                               ; preds = %81
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = call i32 @git_buf_cstr(i32* %15)
  %95 = call i32 @git_packfile_alloc(%struct.TYPE_15__** %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = call i32 @git_buf_dispose(i32* %15)
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %117

100:                                              ; preds = %91
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = call i32 @git_mwindow_file_register(%struct.TYPE_16__* %110)
  store i32 %111, i32* %16, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %117

114:                                              ; preds = %100
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %116 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %116, align 8
  store i32 0, i32* %6, align 4
  br label %146

117:                                              ; preds = %113, %99, %90, %80, %64
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @p_close(i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = call i64 @git_buf_len(i32* %15)
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = call i32 @git_buf_cstr(i32* %15)
  %128 = call i32 @p_unlink(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = icmp ne %struct.TYPE_15__* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @p_unlink(i32 %139)
  br label %141

141:                                              ; preds = %134, %129
  %142 = call i32 @git_buf_dispose(i32* %14)
  %143 = call i32 @git_buf_dispose(i32* %15)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %145 = call i32 @git__free(%struct.TYPE_14__* %144)
  store i32 -1, i32* %6, align 4
  br label %146

146:                                              ; preds = %141, %114
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #2

declare dso_local %struct.TYPE_14__* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__*) #2

declare dso_local i32 @git_hash_ctx_init(i32*) #2

declare dso_local i32 @git_buf_init(i32*, i32) #2

declare dso_local i32 @git_oidmap_new(i32*) #2

declare dso_local i32 @git_buf_joinpath(i32*, i8*, i8*) #2

declare dso_local i32 @git_futils_mktmp(i32*, i32, i32) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

declare dso_local i32 @git_packfile_alloc(%struct.TYPE_15__**, i32) #2

declare dso_local i32 @git_mwindow_file_register(%struct.TYPE_16__*) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i64 @git_buf_len(i32*) #2

declare dso_local i32 @p_unlink(i32) #2

declare dso_local i32 @git__free(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
