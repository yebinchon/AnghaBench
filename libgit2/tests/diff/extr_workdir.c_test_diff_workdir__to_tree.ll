; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"26a125ee1bf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"0017bd4ab1ec3\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_tree() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %10 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 12, i1 false)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %11, i32* @g_repo, align 4
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = call i32* @resolve_commit_oid_to_tree(i32 %12, i8* %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32* @resolve_commit_oid_to_tree(i32 %15, i8* %16)
  store i32* %17, i32** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 3, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %21 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @g_repo, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_diff_tree_to_workdir(i32** %6, i32 %26, i32* %27, %struct.TYPE_10__* %5)
  %29 = call i32 @cl_git_pass(i32 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %87, %0
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 1
  br i1 %32, label %33, label %90

33:                                               ; preds = %30
  %34 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 40)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @diff_file_cb, align 4
  %40 = load i32, i32* @diff_binary_cb, align 4
  %41 = load i32, i32* @diff_hunk_cb, align 4
  %42 = load i32, i32* @diff_line_cb, align 4
  %43 = call i32 @diff_foreach_via_iterator(i32* %38, i32 %39, i32 %40, i32 %41, i32 %42, %struct.TYPE_11__* %8)
  %44 = call i32 @cl_git_pass(i32 %43)
  br label %53

45:                                               ; preds = %33
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @diff_file_cb, align 4
  %48 = load i32, i32* @diff_binary_cb, align 4
  %49 = load i32, i32* @diff_hunk_cb, align 4
  %50 = load i32, i32* @diff_line_cb, align 4
  %51 = call i32 @git_diff_foreach(i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, %struct.TYPE_11__* %8)
  %52 = call i32 @cl_git_pass(i32 %51)
  br label %53

53:                                               ; preds = %45, %37
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cl_assert_equal_i(i32 14, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cl_assert_equal_i(i32 0, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cl_assert_equal_i(i32 4, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cl_assert_equal_i(i32 4, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cl_assert_equal_i(i32 1, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cl_assert_equal_i(i32 5, i32 %85)
  br label %87

87:                                               ; preds = %53
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %30

90:                                               ; preds = %30
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @git_diff_free(i32* %91)
  store i32* null, i32** %6, align 8
  %93 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 40)
  %94 = load i32, i32* @g_repo, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @git_diff_tree_to_index(i32** %6, i32 %94, i32* %95, i32* null, %struct.TYPE_10__* %5)
  %97 = call i32 @cl_git_pass(i32 %96)
  %98 = load i32, i32* @g_repo, align 4
  %99 = call i32 @git_diff_index_to_workdir(i32** %7, i32 %98, i32* null, %struct.TYPE_10__* %5)
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @git_diff_merge(i32* %101, i32* %102)
  %104 = call i32 @cl_git_pass(i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @git_diff_free(i32* %105)
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %179, %90
  %108 = load i32, i32* %9, align 4
  %109 = icmp sle i32 %108, 1
  br i1 %109, label %110, label %182

110:                                              ; preds = %107
  %111 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 40)
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* @diff_file_cb, align 4
  %117 = load i32, i32* @diff_binary_cb, align 4
  %118 = load i32, i32* @diff_hunk_cb, align 4
  %119 = load i32, i32* @diff_line_cb, align 4
  %120 = call i32 @diff_foreach_via_iterator(i32* %115, i32 %116, i32 %117, i32 %118, i32 %119, %struct.TYPE_11__* %8)
  %121 = call i32 @cl_git_pass(i32 %120)
  br label %130

122:                                              ; preds = %110
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @diff_file_cb, align 4
  %125 = load i32, i32* @diff_binary_cb, align 4
  %126 = load i32, i32* @diff_hunk_cb, align 4
  %127 = load i32, i32* @diff_line_cb, align 4
  %128 = call i32 @git_diff_foreach(i32* %123, i32 %124, i32 %125, i32 %126, i32 %127, %struct.TYPE_11__* %8)
  %129 = call i32 @cl_git_pass(i32 %128)
  br label %130

130:                                              ; preds = %122, %114
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @cl_assert_equal_i(i32 15, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @cl_assert_equal_i(i32 2, i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @cl_assert_equal_i(i32 5, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @cl_assert_equal_i(i32 4, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @cl_assert_equal_i(i32 1, i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @cl_assert_equal_i(i32 3, i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @cl_assert_equal_i(i32 11, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @cl_assert_equal_i(i32 17, i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @cl_assert_equal_i(i32 4, i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @cl_assert_equal_i(i32 8, i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @cl_assert_equal_i(i32 5, i32 %177)
  br label %179

179:                                              ; preds = %130
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %107

182:                                              ; preds = %107
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @git_diff_free(i32* %183)
  store i32* null, i32** %6, align 8
  %185 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 40)
  %186 = load i32, i32* @g_repo, align 4
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @git_diff_tree_to_index(i32** %6, i32 %186, i32* %187, i32* null, %struct.TYPE_10__* %5)
  %189 = call i32 @cl_git_pass(i32 %188)
  %190 = load i32, i32* @g_repo, align 4
  %191 = call i32 @git_diff_index_to_workdir(i32** %7, i32 %190, i32* null, %struct.TYPE_10__* %5)
  %192 = call i32 @cl_git_pass(i32 %191)
  %193 = load i32*, i32** %6, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = call i32 @git_diff_merge(i32* %193, i32* %194)
  %196 = call i32 @cl_git_pass(i32 %195)
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @git_diff_free(i32* %197)
  store i32 0, i32* %9, align 4
  br label %199

199:                                              ; preds = %271, %182
  %200 = load i32, i32* %9, align 4
  %201 = icmp sle i32 %200, 1
  br i1 %201, label %202, label %274

202:                                              ; preds = %199
  %203 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 40)
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* @diff_file_cb, align 4
  %209 = load i32, i32* @diff_binary_cb, align 4
  %210 = load i32, i32* @diff_hunk_cb, align 4
  %211 = load i32, i32* @diff_line_cb, align 4
  %212 = call i32 @diff_foreach_via_iterator(i32* %207, i32 %208, i32 %209, i32 %210, i32 %211, %struct.TYPE_11__* %8)
  %213 = call i32 @cl_git_pass(i32 %212)
  br label %222

214:                                              ; preds = %202
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* @diff_file_cb, align 4
  %217 = load i32, i32* @diff_binary_cb, align 4
  %218 = load i32, i32* @diff_hunk_cb, align 4
  %219 = load i32, i32* @diff_line_cb, align 4
  %220 = call i32 @git_diff_foreach(i32* %215, i32 %216, i32 %217, i32 %218, i32 %219, %struct.TYPE_11__* %8)
  %221 = call i32 @cl_git_pass(i32 %220)
  br label %222

222:                                              ; preds = %214, %206
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @cl_assert_equal_i(i32 16, i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @cl_assert_equal_i(i32 5, i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @cl_assert_equal_i(i32 4, i32 %236)
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @cl_assert_equal_i(i32 3, i32 %242)
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @cl_assert_equal_i(i32 1, i32 %248)
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @cl_assert_equal_i(i32 3, i32 %254)
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @cl_assert_equal_i(i32 12, i32 %257)
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @cl_assert_equal_i(i32 19, i32 %260)
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @cl_assert_equal_i(i32 3, i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @cl_assert_equal_i(i32 12, i32 %266)
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @cl_assert_equal_i(i32 4, i32 %269)
  br label %271

271:                                              ; preds = %222
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %199

274:                                              ; preds = %199
  %275 = load i32*, i32** %6, align 8
  %276 = call i32 @git_diff_free(i32* %275)
  %277 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %277
  store i32 %280, i32* %278, align 4
  %281 = load i32, i32* @g_repo, align 4
  %282 = load i32*, i32** %4, align 8
  %283 = call i32 @git_diff_tree_to_index(i32** %6, i32 %281, i32* %282, i32* null, %struct.TYPE_10__* %5)
  %284 = call i32 @cl_git_pass(i32 %283)
  %285 = load i32, i32* @g_repo, align 4
  %286 = call i32 @git_diff_index_to_workdir(i32** %7, i32 %285, i32* null, %struct.TYPE_10__* %5)
  %287 = call i32 @cl_git_pass(i32 %286)
  %288 = load i32*, i32** %6, align 8
  %289 = load i32*, i32** %7, align 8
  %290 = call i32 @git_diff_merge(i32* %288, i32* %289)
  %291 = call i32 @cl_git_pass(i32 %290)
  %292 = load i32*, i32** %7, align 8
  %293 = call i32 @git_diff_free(i32* %292)
  %294 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 40)
  %295 = load i32*, i32** %6, align 8
  %296 = load i32, i32* @diff_file_cb, align 4
  %297 = load i32, i32* @diff_binary_cb, align 4
  %298 = load i32, i32* @diff_hunk_cb, align 4
  %299 = load i32, i32* @diff_line_cb, align 4
  %300 = call i32 @git_diff_foreach(i32* %295, i32 %296, i32 %297, i32 %298, i32 %299, %struct.TYPE_11__* %8)
  %301 = call i32 @cl_git_pass(i32 %300)
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @cl_assert_equal_i(i32 16, i32 %303)
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @cl_assert_equal_i(i32 5, i32 %309)
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %312 = load i32*, i32** %311, align 8
  %313 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @cl_assert_equal_i(i32 4, i32 %315)
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @cl_assert_equal_i(i32 3, i32 %321)
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %324 = load i32*, i32** %323, align 8
  %325 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @cl_assert_equal_i(i32 1, i32 %327)
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %330 = load i32*, i32** %329, align 8
  %331 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %332 = getelementptr inbounds i32, i32* %330, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @cl_assert_equal_i(i32 3, i32 %333)
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @cl_assert_equal_i(i32 12, i32 %336)
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @cl_assert_equal_i(i32 19, i32 %339)
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @cl_assert_equal_i(i32 3, i32 %342)
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @cl_assert_equal_i(i32 12, i32 %345)
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @cl_assert_equal_i(i32 4, i32 %348)
  %350 = load i32*, i32** %6, align 8
  %351 = call i32 @git_diff_free(i32* %350)
  %352 = load i32*, i32** %3, align 8
  %353 = call i32 @git_tree_free(i32* %352)
  %354 = load i32*, i32** %4, align 8
  %355 = call i32 @git_tree_free(i32* %354)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @diff_foreach_via_iterator(i32*, i32, i32, i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_diff_merge(i32*, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
