; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__head_index_and_workdir_all_differ.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__head_index_and_workdir_all_differ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8**, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"staged_changes_modified_file\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"26a125ee1bfc5df1e1b2e9441bbe63c8a7ae989f\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__head_index_and_workdir_all_differ() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %9 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* @g_repo, align 4
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32* @resolve_commit_oid_to_tree(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i8** %5, i8*** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @git_diff_tree_to_index(i32** %2, i32 %16, i32* %17, i32* null, %struct.TYPE_11__* %1)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_diff_index_to_workdir(i32** %3, i32 %20, i32* null, %struct.TYPE_11__* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %83, %0
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %86

26:                                               ; preds = %23
  %27 = call i32 @memset(%struct.TYPE_12__* %4, i32 0, i32 40)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @diff_file_cb, align 4
  %33 = load i32, i32* @diff_binary_cb, align 4
  %34 = load i32, i32* @diff_hunk_cb, align 4
  %35 = load i32, i32* @diff_line_cb, align 4
  %36 = call i32 @diff_foreach_via_iterator(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, %struct.TYPE_12__* %4)
  %37 = call i32 @cl_git_pass(i32 %36)
  br label %46

38:                                               ; preds = %26
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @diff_file_cb, align 4
  %41 = load i32, i32* @diff_binary_cb, align 4
  %42 = load i32, i32* @diff_hunk_cb, align 4
  %43 = load i32, i32* @diff_line_cb, align 4
  %44 = call i32 @git_diff_foreach(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, %struct.TYPE_12__* %4)
  %45 = call i32 @cl_git_pass(i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cl_assert_equal_i(i32 1, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_i(i32 0, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cl_assert_equal_i(i32 0, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_i(i32 1, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cl_assert_equal_i(i32 1, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_i(i32 2, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cl_assert_equal_i(i32 1, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cl_assert_equal_i(i32 1, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @cl_assert_equal_i(i32 0, i32 %81)
  br label %83

83:                                               ; preds = %46
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %23

86:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %147, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp sle i32 %88, 1
  br i1 %89, label %90, label %150

90:                                               ; preds = %87
  %91 = call i32 @memset(%struct.TYPE_12__* %4, i32 0, i32 40)
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @diff_file_cb, align 4
  %97 = load i32, i32* @diff_binary_cb, align 4
  %98 = load i32, i32* @diff_hunk_cb, align 4
  %99 = load i32, i32* @diff_line_cb, align 4
  %100 = call i32 @diff_foreach_via_iterator(i32* %95, i32 %96, i32 %97, i32 %98, i32 %99, %struct.TYPE_12__* %4)
  %101 = call i32 @cl_git_pass(i32 %100)
  br label %110

102:                                              ; preds = %90
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @diff_file_cb, align 4
  %105 = load i32, i32* @diff_binary_cb, align 4
  %106 = load i32, i32* @diff_hunk_cb, align 4
  %107 = load i32, i32* @diff_line_cb, align 4
  %108 = call i32 @git_diff_foreach(i32* %103, i32 %104, i32 %105, i32 %106, i32 %107, %struct.TYPE_12__* %4)
  %109 = call i32 @cl_git_pass(i32 %108)
  br label %110

110:                                              ; preds = %102, %94
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @cl_assert_equal_i(i32 1, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cl_assert_equal_i(i32 0, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @cl_assert_equal_i(i32 0, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @cl_assert_equal_i(i32 1, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @cl_assert_equal_i(i32 1, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cl_assert_equal_i(i32 3, i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @cl_assert_equal_i(i32 2, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @cl_assert_equal_i(i32 1, i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @cl_assert_equal_i(i32 0, i32 %145)
  br label %147

147:                                              ; preds = %110
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %87

150:                                              ; preds = %87
  %151 = load i32*, i32** %2, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @git_diff_merge(i32* %151, i32* %152)
  %154 = call i32 @cl_git_pass(i32 %153)
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %215, %150
  %156 = load i32, i32* %7, align 4
  %157 = icmp sle i32 %156, 1
  br i1 %157, label %158, label %218

158:                                              ; preds = %155
  %159 = call i32 @memset(%struct.TYPE_12__* %4, i32 0, i32 40)
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* @diff_file_cb, align 4
  %165 = load i32, i32* @diff_binary_cb, align 4
  %166 = load i32, i32* @diff_hunk_cb, align 4
  %167 = load i32, i32* @diff_line_cb, align 4
  %168 = call i32 @diff_foreach_via_iterator(i32* %163, i32 %164, i32 %165, i32 %166, i32 %167, %struct.TYPE_12__* %4)
  %169 = call i32 @cl_git_pass(i32 %168)
  br label %178

170:                                              ; preds = %158
  %171 = load i32*, i32** %2, align 8
  %172 = load i32, i32* @diff_file_cb, align 4
  %173 = load i32, i32* @diff_binary_cb, align 4
  %174 = load i32, i32* @diff_hunk_cb, align 4
  %175 = load i32, i32* @diff_line_cb, align 4
  %176 = call i32 @git_diff_foreach(i32* %171, i32 %172, i32 %173, i32 %174, i32 %175, %struct.TYPE_12__* %4)
  %177 = call i32 @cl_git_pass(i32 %176)
  br label %178

178:                                              ; preds = %170, %162
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @cl_assert_equal_i(i32 1, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @cl_assert_equal_i(i32 0, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @cl_assert_equal_i(i32 0, i32 %192)
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @cl_assert_equal_i(i32 1, i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @cl_assert_equal_i(i32 1, i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cl_assert_equal_i(i32 3, i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @cl_assert_equal_i(i32 1, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @cl_assert_equal_i(i32 2, i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @cl_assert_equal_i(i32 0, i32 %213)
  br label %215

215:                                              ; preds = %178
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %155

218:                                              ; preds = %155
  %219 = load i32*, i32** %2, align 8
  %220 = call i32 @git_diff_free(i32* %219)
  %221 = load i32*, i32** %3, align 8
  %222 = call i32 @git_diff_free(i32* %221)
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @git_tree_free(i32* %223)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @diff_foreach_via_iterator(i32*, i32, i32, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_merge(i32*, i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
