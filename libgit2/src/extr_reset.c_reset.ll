; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_reset.c_reset.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_reset.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s - The given target does not belong to this repository.\00", align 1
@ERROR_MSG = common dso_local global i32 0, align 4
@GIT_RESET_SOFT = common dso_local global i64 0, align 8
@GIT_RESET_MIXED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"reset mixed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"reset hard\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_REPOSITORY_STATE_MERGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"%s (soft) in the middle of a merge\00", align 1
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"reset: moving to %s\00", align 1
@GIT_RESET_HARD = common dso_local global i64 0, align 8
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"%s - failed to clean up merge data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, %struct.TYPE_5__*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset(i32* %0, i32* %1, i8* %2, i64 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %19 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br label %25

25:                                               ; preds = %22, %5
  %26 = phi i1 [ false, %5 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = bitcast %struct.TYPE_5__* %16 to i8*
  %34 = bitcast %struct.TYPE_5__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @git_object_owner(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %42 = load i32, i32* @ERROR_MSG, align 4
  %43 = call i32 @git_error_set(i32 %41, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %6, align 4
  br label %152

44:                                               ; preds = %35
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @GIT_RESET_SOFT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @GIT_RESET_MIXED, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %55 = call i32 @git_repository__ensure_not_bare(i32* %49, i8* %54)
  store i32 %55, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %6, align 4
  br label %152

59:                                               ; preds = %48, %44
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %62 = call i32 @git_object_peel(i32** %12, i32* %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @git_repository_index(i32** %13, i32* %65)
  store i32 %66, i32* %15, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @git_commit_tree(i32** %14, i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64, %59
  br label %143

73:                                               ; preds = %68
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @GIT_RESET_SOFT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @git_repository_state(i32* %78)
  %80 = load i64, i64* @GIT_REPOSITORY_STATE_MERGE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32*, i32** %13, align 8
  %84 = call i64 @git_index_has_conflicts(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %77
  %87 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %88 = load i32, i32* @ERROR_MSG, align 4
  %89 = call i32 @git_error_set(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @GIT_EUNMERGED, align 4
  store i32 %90, i32* %15, align 4
  br label %143

91:                                               ; preds = %82, %73
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @git_buf_printf(i32* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  store i32 %93, i32* %15, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %6, align 4
  br label %152

97:                                               ; preds = %91
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @GIT_RESET_HARD, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @git_checkout_tree(i32* %104, i32* %105, %struct.TYPE_5__* %16)
  store i32 %106, i32* %15, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %143

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %97
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @GIT_HEAD_FILE, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @git_object_id(i32* %113)
  %115 = call i32 @git_buf_cstr(i32* %17)
  %116 = call i32 @git_reference__update_terminal(i32* %111, i32 %112, i32 %114, i32* null, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %143

119:                                              ; preds = %110
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* @GIT_RESET_SOFT, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %119
  %124 = load i32*, i32** %13, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @git_index_read_tree(i32* %124, i32* %125)
  store i32 %126, i32* %15, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @git_index_write(i32* %129)
  store i32 %130, i32* %15, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %123
  br label %143

133:                                              ; preds = %128
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @git_repository_state_cleanup(i32* %134)
  store i32 %135, i32* %15, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %139 = load i32, i32* @ERROR_MSG, align 4
  %140 = call i32 @git_error_set(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  br label %143

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %119
  br label %143

143:                                              ; preds = %142, %137, %132, %118, %108, %86, %72
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @git_object_free(i32* %144)
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @git_index_free(i32* %146)
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @git_tree_free(i32* %148)
  %150 = call i32 @git_buf_dispose(i32* %17)
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %143, %95, %57, %40
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @git_object_owner(i32*) #2

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #2

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i64 @git_repository_state(i32*) #2

declare dso_local i64 @git_index_has_conflicts(i32*) #2

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*) #2

declare dso_local i32 @git_checkout_tree(i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_reference__update_terminal(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @git_index_read_tree(i32*, i32*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_repository_state_cleanup(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
