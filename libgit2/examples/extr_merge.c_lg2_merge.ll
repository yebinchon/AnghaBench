; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_merge.c_lg2_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_merge.c_lg2_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i8**, i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GIT_REPOSITORY_STATE_NONE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"repository is in unexpected state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"merge analysis failed\00", align 1
@GIT_MERGE_ANALYSIS_UP_TO_DATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Already up-to-date\0A\00", align 1
@GIT_MERGE_ANALYSIS_UNBORN = common dso_local global i32 0, align 4
@GIT_MERGE_ANALYSIS_FASTFORWARD = common dso_local global i32 0, align 4
@GIT_MERGE_PREFERENCE_NO_FASTFORWARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Unborn\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Fast-forward\0A\00", align 1
@GIT_MERGE_ANALYSIS_NORMAL = common dso_local global i32 0, align 4
@GIT_MERGE_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GIT_MERGE_FILE_STYLE_DIFF3 = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_ALLOW_CONFLICTS = common dso_local global i32 0, align 4
@GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Fast-forward is preferred, but only a merge is possible\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"merge failed\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get repository index\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Merge made\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_merge(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca %struct.TYPE_14__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = call i32 @merge_options_init(%struct.TYPE_12__* %8)
  %19 = load i32, i32* %6, align 4
  %20 = load i8**, i8*** %7, align 8
  %21 = call i32 @parse_options(i8** %13, %struct.TYPE_12__* %8, i32 %19, i8** %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @git_repository_state(i32* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @GIT_REPOSITORY_STATE_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @stderr, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %148

31:                                               ; preds = %3
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @resolve_heads(i32* %32, %struct.TYPE_12__* %8)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %148

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = bitcast i8** %40 to i32**
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @git_merge_analysis(i32* %11, i32* %12, i32* %38, i32** %41, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @check_lg2(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @GIT_MERGE_ANALYSIS_UP_TO_DATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %156

53:                                               ; preds = %37
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @GIT_MERGE_ANALYSIS_UNBORN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @GIT_MERGE_ANALYSIS_FASTFORWARD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @GIT_MERGE_PREFERENCE_NO_FASTFORWARD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %63, %53
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @GIT_MERGE_ANALYSIS_UNBORN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %77

75:                                               ; preds = %68
  %76 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %73
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32* @git_annotated_commit_id(i8* %81)
  store i32* %82, i32** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @GIT_MERGE_ANALYSIS_UNBORN, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @perform_fastforward(i32* %88, i32* %89, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %156

94:                                               ; preds = %63, %58
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @GIT_MERGE_ANALYSIS_NORMAL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %94
  %100 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 bitcast (%struct.TYPE_13__* @GIT_MERGE_OPTIONS_INIT to i8*), i64 16, i1 false)
  %101 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @GIT_MERGE_FILE_STYLE_DIFF3, align 4
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %106 = load i32, i32* @GIT_CHECKOUT_ALLOW_CONFLICTS, align 4
  %107 = or i32 %105, %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %156

115:                                              ; preds = %99
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = bitcast i8** %118 to i32**
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @git_merge(i32* %116, i32** %119, i32 %121, %struct.TYPE_13__* %16, %struct.TYPE_14__* %17)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @check_lg2(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* null)
  br label %125

125:                                              ; preds = %115, %94
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @git_repository_index(i32** %9, i32* %128)
  %130 = call i32 @check_lg2(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %131 = load i32*, i32** %9, align 8
  %132 = call i64 @git_index_has_conflicts(i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @output_conflicts(i32* %135)
  br label %147

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load i32*, i32** %5, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @create_merge_commit(i32* %142, i32* %143, %struct.TYPE_12__* %8)
  %145 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %137
  br label %147

147:                                              ; preds = %146, %134
  br label %148

148:                                              ; preds = %147, %36, %27
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i8**
  %152 = call i32 @free(i8** %151)
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = call i32 @free(i8** %154)
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %148, %113, %77, %51
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @merge_options_init(%struct.TYPE_12__*) #1

declare dso_local i32 @parse_options(i8**, %struct.TYPE_12__*, i32, i8**) #1

declare dso_local i64 @git_repository_state(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @resolve_heads(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @git_merge_analysis(i32*, i32*, i32*, i32**, i32) #1

declare dso_local i32 @check_lg2(i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @git_annotated_commit_id(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @perform_fastforward(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_merge(i32*, i32**, i32, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i64 @git_index_has_conflicts(i32*) #1

declare dso_local i32 @output_conflicts(i32*) #1

declare dso_local i32 @create_merge_commit(i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
