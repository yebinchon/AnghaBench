; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_get_wd_status.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_get_wd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GIT_SUBMODULE_STATUS__WD_OID_VALID = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_SUBMODULE_STATUS__WD_FLAGS = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_ADDED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__WD_SCANNED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_DELETED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_MODIFIED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_NONE = common dso_local global i64 0, align 8
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_UNTRACKED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_UNTRACKED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_WD_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32*, i64)* @submodule_get_wd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submodule_get_wd_status(i32* %0, %struct.TYPE_8__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = call i32* @git_submodule_index_id(%struct.TYPE_8__* %16)
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32* [ %26, %24 ], [ null, %27 ]
  store i32* %29, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %30 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_FLAGS, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %28
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_ADDED, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %39
  br label %88

48:                                               ; preds = %28
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %76, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_SCANNED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %75

70:                                               ; preds = %58, %51
  %71 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_DELETED, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %65
  br label %87

76:                                               ; preds = %48
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @git_oid_equal(i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %47
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %163

92:                                               ; preds = %88
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @GIT_SUBMODULE_IGNORE_NONE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %92
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @git_repository_index__weakptr(i32** %12, i32* %102)
  %104 = load i32*, i32** %7, align 8
  %105 = call i64 @git_repository_head_tree(i32** %11, i32* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (...) @git_error_clear()
  br label %132

109:                                              ; preds = %101
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i64 @git_diff_tree_to_index(i32** %14, i32* %110, i32* %111, i32* %112, %struct.TYPE_9__* %13)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 (...) @git_error_clear()
  br label %129

117:                                              ; preds = %109
  %118 = load i32*, i32** %14, align 8
  %119 = call i64 @git_diff_num_deltas(i32* %118)
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @git_diff_free(i32* %127)
  store i32* null, i32** %14, align 8
  br label %129

129:                                              ; preds = %126, %115
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @git_tree_free(i32* %130)
  br label %132

132:                                              ; preds = %129, %107
  %133 = load i32*, i32** %7, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = call i64 @git_diff_index_to_workdir(i32** %14, i32* %133, i32* %134, %struct.TYPE_9__* %13)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 (...) @git_error_clear()
  br label %163

139:                                              ; preds = %132
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* @GIT_DELTA_UNTRACKED, align 4
  %142 = call i64 @git_diff_num_deltas_of_type(i32* %140, i32 %141)
  store i64 %142, i64* %15, align 8
  %143 = load i64, i64* %15, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_UNTRACKED, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %139
  %151 = load i32*, i32** %14, align 8
  %152 = call i64 @git_diff_num_deltas(i32* %151)
  %153 = load i64, i64* %15, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_WD_MODIFIED, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %155, %150
  %161 = load i32*, i32** %14, align 8
  %162 = call i32 @git_diff_free(i32* %161)
  store i32* null, i32** %14, align 8
  br label %163

163:                                              ; preds = %91, %160, %137
  ret void
}

declare dso_local i32* @git_submodule_index_id(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_oid_equal(i32*, i32*) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #1

declare dso_local i64 @git_repository_head_tree(i32**, i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i64 @git_diff_tree_to_index(i32**, i32*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i64 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @git_diff_num_deltas_of_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
