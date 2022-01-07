; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_ignore.c_git_ignore__for_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_ignore.c_git_ignore__for_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__, i32, i32, i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@GIT_CONFIGMAP_IGNORECASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@push_one_ignore = common dso_local global i32 0, align 4
@GIT_REPOSITORY_ITEM_INFO = common dso_local global i32 0, align 4
@GIT_IGNORE_FILE_INREPO = common dso_local global i32* null, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_ignore__for_path(i32* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @git_repository_workdir(i32* %11)
  store i8* %12, i8** %8, align 8
  %13 = bitcast %struct.TYPE_18__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_18__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = phi i1 [ false, %16 ], [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = call i32 @memset(%struct.TYPE_17__* %26, i32 0, i32 32)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @GIT_CONFIGMAP_IGNORECASE, align 4
  %35 = call i32 @git_repository__configmap_lookup(i32* %32, i32* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %154

38:                                               ; preds = %22
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @git_attr_cache__init(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %154

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @git_path_root(i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = bitcast %struct.TYPE_18__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.TYPE_18__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @git_path_dirname_r(%struct.TYPE_18__* %10, i8* %52)
  store i32 %53, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = call i32 @git_path_resolve_relative(%struct.TYPE_18__* %10, i32 0)
  store i32 %56, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = call i32 @git_path_to_dir(%struct.TYPE_18__* %10)
  store i32 %59, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @git_buf_joinpath(%struct.TYPE_20__* %63, i8* %64, i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %58, %55, %50
  br label %70

70:                                               ; preds = %69, %61
  %71 = call i32 @git_buf_dispose(%struct.TYPE_18__* %10)
  br label %77

72:                                               ; preds = %46, %43
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @git_buf_joinpath(%struct.TYPE_20__* %74, i8* %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %70
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %154

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @git__prefixcmp(i32 %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %84, %81
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @get_internal_ignores(i32* %99, i32* %100)
  store i32 %101, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %154

104:                                              ; preds = %97
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @push_one_ignore, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = call i32 @git_path_walk_up(%struct.TYPE_20__* %109, i8* %110, i32 %111, %struct.TYPE_17__* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %154

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @GIT_REPOSITORY_ITEM_INFO, align 4
  %121 = call i32 @git_repository_item_path(%struct.TYPE_18__* %9, i32* %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32*, i32** @GIT_IGNORE_FILE_INREPO, align 8
  %130 = call i32 @push_ignore_file(%struct.TYPE_17__* %124, i32* %126, i8* %128, i32* %129)
  store i32 %130, i32* %7, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %123, %118
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @GIT_ENOTFOUND, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %154

137:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %123
  %139 = load i32*, i32** %4, align 8
  %140 = call %struct.TYPE_19__* @git_repository_attr_cache(i32* %139)
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32*, i32** %4, align 8
  %149 = call %struct.TYPE_19__* @git_repository_attr_cache(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @push_ignore_file(%struct.TYPE_17__* %145, i32* %147, i8* null, i32* %151)
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %144, %138
  br label %154

154:                                              ; preds = %153, %136, %116, %103, %80, %42, %37
  %155 = call i32 @git_buf_dispose(%struct.TYPE_18__* %9)
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = call i32 @git_ignore__free(%struct.TYPE_17__* %159)
  br label %161

161:                                              ; preds = %158, %154
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i8* @git_repository_workdir(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #1

declare dso_local i32 @git_attr_cache__init(i32*) #1

declare dso_local i64 @git_path_root(i8*) #1

declare dso_local i32 @git_path_dirname_r(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @git_path_resolve_relative(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @git_path_to_dir(%struct.TYPE_18__*) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_18__*) #1

declare dso_local i32 @git__prefixcmp(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_internal_ignores(i32*, i32*) #1

declare dso_local i32 @git_path_walk_up(%struct.TYPE_20__*, i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @git_repository_item_path(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @push_ignore_file(%struct.TYPE_17__*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_19__* @git_repository_attr_cache(i32*) #1

declare dso_local i32 @git_ignore__free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
