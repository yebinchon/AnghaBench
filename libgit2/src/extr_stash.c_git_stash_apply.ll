; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_git_stash_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_git_stash_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@GIT_STASH_APPLY_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"git_stash_apply_options\00", align 1
@GIT_STASH_APPLY_PROGRESS_LOADING_STASH = common dso_local global i32 0, align 4
@GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX = common dso_local global i32 0, align 4
@GIT_STASH_APPLY_REINSTATE_INDEX = common dso_local global i32 0, align 4
@GIT_ECONFLICT = common dso_local global i32 0, align 4
@GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED = common dso_local global i32 0, align 4
@GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_CHECKOUT_DONT_UPDATE_INDEX = common dso_local global i32 0, align 4
@GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED = common dso_local global i32 0, align 4
@GIT_STASH_APPLY_PROGRESS_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_stash_apply(i32* %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = load i32, i32* @GIT_STASH_APPLY_OPTIONS_VERSION, align 4
  %23 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_8__* %21, i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i32 @normalize_apply_options(%struct.TYPE_8__* %7, %struct.TYPE_8__* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @GIT_STASH_APPLY_PROGRESS_LOADING_STASH, align 4
  %30 = call i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @retrieve_stash_commit(i32** %9, i32* %31, i64 %32)
  store i32 %33, i32* %20, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %188

36:                                               ; preds = %3
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @retrieve_stash_trees(i32** %10, i32** %11, i32** %12, i32** %13, i32** %14, i32* %37)
  store i32 %38, i32* %20, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %188

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @git_repository_index(i32** %16, i32* %42)
  store i32 %43, i32* %20, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %188

46:                                               ; preds = %41
  %47 = load i32, i32* @GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX, align 4
  %48 = call i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @ensure_clean_index(i32* %49, i32* %50)
  store i32 %51, i32* %20, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %188

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GIT_STASH_APPLY_REINSTATE_INDEX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @git_tree_id(i32* %61)
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @git_tree_id(i32* %63)
  %65 = call i64 @git_oid_cmp(i32 %62, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @merge_index_and_tree(i32** %17, i32* %68, i32* %69, i32* %70, i32* %71)
  store i32 %72, i32* %20, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %188

75:                                               ; preds = %67
  %76 = load i32*, i32** %17, align 8
  %77 = call i64 @git_index_has_conflicts(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @GIT_ECONFLICT, align 4
  store i32 %80, i32* %20, align 4
  br label %188

81:                                               ; preds = %75
  br label %103

82:                                               ; preds = %60, %54
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GIT_STASH_APPLY_REINSTATE_INDEX, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @stage_new_files(i32** %15, i32* %89, i32* %90)
  store i32 %91, i32* %20, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @merge_indexes(i32** %17, i32* %94, i32* %95, i32* %96, i32* %97)
  store i32 %98, i32* %20, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %88
  br label %188

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %81
  %104 = load i32, i32* @GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED, align 4
  %105 = call i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @merge_index_and_tree(i32** %18, i32* %106, i32* %107, i32* %108, i32* %109)
  store i32 %110, i32* %20, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %188

113:                                              ; preds = %103
  %114 = load i32*, i32** %14, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load i32, i32* @GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED, align 4
  %118 = call i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @merge_index_and_tree(i32** %19, i32* %119, i32* null, i32* %120, i32* %121)
  store i32 %122, i32* %20, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %188

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %113
  %127 = load i32*, i32** %19, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load i32, i32* @GIT_CHECKOUT_DONT_UPDATE_INDEX, align 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED, align 4
  %136 = call i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = load i32*, i32** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %140 = call i32 @git_checkout_index(i32* %137, i32* %138, %struct.TYPE_9__* %139)
  store i32 %140, i32* %20, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %188

143:                                              ; preds = %129
  %144 = load i32, i32* %8, align 4
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %126
  %148 = load i32*, i32** %18, align 8
  %149 = call i64 @git_index_has_conflicts(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @GIT_CHECKOUT_DONT_UPDATE_INDEX, align 4
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %147
  %158 = load i32*, i32** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i32* %158, i32** %160, align 8
  %161 = load i32, i32* @GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED, align 4
  %162 = call i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = load i32*, i32** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %166 = call i32 @git_checkout_index(i32* %163, i32* %164, %struct.TYPE_9__* %165)
  store i32 %166, i32* %20, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %188

169:                                              ; preds = %157
  %170 = load i32*, i32** %17, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32*, i32** %18, align 8
  %174 = call i64 @git_index_has_conflicts(i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = load i32*, i32** %16, align 8
  %178 = load i32*, i32** %17, align 8
  %179 = call i32 @git_index_read_index(i32* %177, i32* %178)
  store i32 %179, i32* %20, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %188

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182, %172, %169
  %184 = load i32, i32* @GIT_STASH_APPLY_PROGRESS_DONE, align 4
  %185 = call i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 %184)
  %186 = load i32*, i32** %16, align 8
  %187 = call i32 @git_index_write(i32* %186)
  store i32 %187, i32* %20, align 4
  br label %188

188:                                              ; preds = %183, %181, %168, %142, %124, %112, %100, %79, %74, %53, %45, %40, %35
  %189 = load i32*, i32** %19, align 8
  %190 = call i32 @git_index_free(i32* %189)
  %191 = load i32*, i32** %18, align 8
  %192 = call i32 @git_index_free(i32* %191)
  %193 = load i32*, i32** %17, align 8
  %194 = call i32 @git_index_free(i32* %193)
  %195 = load i32*, i32** %15, align 8
  %196 = call i32 @git_index_free(i32* %195)
  %197 = load i32*, i32** %16, align 8
  %198 = call i32 @git_index_free(i32* %197)
  %199 = load i32*, i32** %14, align 8
  %200 = call i32 @git_tree_free(i32* %199)
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @git_tree_free(i32* %201)
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 @git_tree_free(i32* %203)
  %205 = load i32*, i32** %11, align 8
  %206 = call i32 @git_tree_free(i32* %205)
  %207 = load i32*, i32** %10, align 8
  %208 = call i32 @git_tree_free(i32* %207)
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @git_commit_free(i32* %209)
  %211 = load i32, i32* %20, align 4
  ret i32 %211
}

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @normalize_apply_options(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @NOTIFY_PROGRESS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32) #1

declare dso_local i32 @retrieve_stash_commit(i32**, i32*, i64) #1

declare dso_local i32 @retrieve_stash_trees(i32**, i32**, i32**, i32**, i32**, i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @ensure_clean_index(i32*, i32*) #1

declare dso_local i64 @git_oid_cmp(i32, i32) #1

declare dso_local i32 @git_tree_id(i32*) #1

declare dso_local i32 @merge_index_and_tree(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @git_index_has_conflicts(i32*) #1

declare dso_local i32 @stage_new_files(i32**, i32*, i32*) #1

declare dso_local i32 @merge_indexes(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_checkout_index(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_index_read_index(i32*, i32*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
