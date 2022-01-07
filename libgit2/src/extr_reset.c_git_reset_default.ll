; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_reset.c_git_reset_default.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_reset.c_git_reset_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i8*, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%s_default - The given target does not belong to this repository.\00", align 1
@ERROR_MSG = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_CONFLICTED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reset_default(i32* %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %18 = bitcast %struct.TYPE_17__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_17__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %16, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br label %26

26:                                               ; preds = %21, %3
  %27 = phi i1 [ false, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i32 @memset(%struct.TYPE_16__* %14, i32 0, i32 16)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_repository_index(i32** %16, i32* %31)
  store i32 %32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %176

35:                                               ; preds = %26
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @git_object_owner(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %45 = load i32, i32* @ERROR_MSG, align 4
  %46 = call i32 @git_error_set(i32 %44, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %4, align 4
  br label %186

47:                                               ; preds = %38
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %50 = call i32 @git_object_peel(i32** %8, i32* %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @git_commit_tree(i32** %9, i32* %53)
  store i32 %54, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %47
  br label %176

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %35
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = bitcast %struct.TYPE_15__* %59 to i8*
  %62 = bitcast %struct.TYPE_15__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @git_diff_tree_to_index(i32** %10, i32* %65, i32* %66, i32* %67, %struct.TYPE_17__* %11)
  store i32 %68, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %176

71:                                               ; preds = %58
  store i64 0, i64* %12, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 @git_diff_num_deltas(i32* %72)
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %170, %71
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %173

78:                                               ; preds = %74
  %79 = load i32*, i32** %10, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call %struct.TYPE_18__* @git_diff_get_delta(i32* %79, i64 %80)
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %17, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %105, label %87

87:                                               ; preds = %78
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %99, %93, %87, %78
  %106 = phi i1 [ true, %93 ], [ true, %87 ], [ true, %78 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32*, i32** %16, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @git_index_conflict_remove(i32* %109, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %105
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @GIT_ENOTFOUND, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 (...) @git_error_clear()
  br label %130

129:                                              ; preds = %123, %117
  br label %176

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130, %105
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load i32*, i32** %16, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @git_index_remove(i32* %138, i32 %142, i32 0)
  store i32 %143, i32* %15, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %176

146:                                              ; preds = %137
  br label %169

147:                                              ; preds = %131
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  store i32 %151, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = call i32 @git_oid_cpy(i32* %153, i32* %156)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i8*
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i8* %162, i8** %163, align 8
  %164 = load i32*, i32** %16, align 8
  %165 = call i32 @git_index_add(i32* %164, %struct.TYPE_16__* %14)
  store i32 %165, i32* %15, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %147
  br label %176

168:                                              ; preds = %147
  br label %169

169:                                              ; preds = %168, %146
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %12, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %12, align 8
  br label %74

173:                                              ; preds = %74
  %174 = load i32*, i32** %16, align 8
  %175 = call i32 @git_index_write(i32* %174)
  store i32 %175, i32* %15, align 4
  br label %176

176:                                              ; preds = %173, %167, %145, %129, %70, %56, %34
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @git_object_free(i32* %177)
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @git_tree_free(i32* %179)
  %181 = load i32*, i32** %16, align 8
  %182 = call i32 @git_index_free(i32* %181)
  %183 = load i32*, i32** %10, align 8
  %184 = call i32 @git_diff_free(i32* %183)
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %176, %43
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32* @git_object_owner(i32*) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32*, i32*, i32*, %struct.TYPE_17__*) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local %struct.TYPE_18__* @git_diff_get_delta(i32*, i64) #2

declare dso_local i32 @git_index_conflict_remove(i32*, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_index_remove(i32*, i32, i32) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
