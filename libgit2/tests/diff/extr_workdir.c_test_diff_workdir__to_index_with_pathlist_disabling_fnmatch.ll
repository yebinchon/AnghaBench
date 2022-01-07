; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_pathlist_disabling_fnmatch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_pathlist_disabling_fnmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32*, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"subdir/\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"subdir/*\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"subdi\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"*_deleted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index_with_pathlist_disabling_fnmatch() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32* null, i32** %2, align 8
  store i8* null, i8** %4, align 8
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 3, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %11 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GIT_DIFF_DISABLE_PATHSPEC_MATCH, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8** %4, i8*** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %22, i32* null, %struct.TYPE_10__* %1)
  %24 = call i32 @cl_git_pass(i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %76, %0
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %79

28:                                               ; preds = %25
  %29 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @diff_file_cb, align 4
  %35 = call i32 @diff_foreach_via_iterator(i32* %33, i32 %34, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %36 = call i32 @cl_git_pass(i32 %35)
  br label %42

37:                                               ; preds = %28
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @diff_file_cb, align 4
  %40 = call i32 @git_diff_foreach(i32* %38, i32 %39, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %41 = call i32 @cl_git_pass(i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cl_assert_equal_i(i32 13, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 0, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cl_assert_equal_i(i32 4, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_i(i32 4, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cl_assert_equal_i(i32 1, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 4, i32 %74)
  br label %76

76:                                               ; preds = %42
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %25

79:                                               ; preds = %25
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @git_diff_free(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* @g_repo, align 4
  %85 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %84, i32* null, %struct.TYPE_10__* %1)
  %86 = call i32 @cl_git_pass(i32 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %138, %79
  %88 = load i32, i32* %5, align 4
  %89 = icmp sle i32 %88, 1
  br i1 %89, label %90, label %141

90:                                               ; preds = %87
  %91 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* @diff_file_cb, align 4
  %97 = call i32 @diff_foreach_via_iterator(i32* %95, i32 %96, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %98 = call i32 @cl_git_pass(i32 %97)
  br label %104

99:                                               ; preds = %90
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* @diff_file_cb, align 4
  %102 = call i32 @git_diff_foreach(i32* %100, i32 %101, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %103 = call i32 @cl_git_pass(i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @cl_assert_equal_i(i32 13, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @cl_assert_equal_i(i32 0, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cl_assert_equal_i(i32 4, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @cl_assert_equal_i(i32 4, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @cl_assert_equal_i(i32 1, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cl_assert_equal_i(i32 4, i32 %136)
  br label %138

138:                                              ; preds = %104
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %87

141:                                              ; preds = %87
  %142 = load i32*, i32** %2, align 8
  %143 = call i32 @git_diff_free(i32* %142)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %144 = load i32, i32* @g_repo, align 4
  %145 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %144, i32* null, %struct.TYPE_10__* %1)
  %146 = call i32 @cl_git_pass(i32 %145)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %198, %141
  %148 = load i32, i32* %5, align 4
  %149 = icmp sle i32 %148, 1
  br i1 %149, label %150, label %201

150:                                              ; preds = %147
  %151 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32*, i32** %2, align 8
  %156 = load i32, i32* @diff_file_cb, align 4
  %157 = call i32 @diff_foreach_via_iterator(i32* %155, i32 %156, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %158 = call i32 @cl_git_pass(i32 %157)
  br label %164

159:                                              ; preds = %150
  %160 = load i32*, i32** %2, align 8
  %161 = load i32, i32* @diff_file_cb, align 4
  %162 = call i32 @git_diff_foreach(i32* %160, i32 %161, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %163 = call i32 @cl_git_pass(i32 %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @cl_assert_equal_i(i32 1, i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @cl_assert_equal_i(i32 0, i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @cl_assert_equal_i(i32 0, i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @cl_assert_equal_i(i32 1, i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @cl_assert_equal_i(i32 0, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @cl_assert_equal_i(i32 0, i32 %196)
  br label %198

198:                                              ; preds = %164
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %5, align 4
  br label %147

201:                                              ; preds = %147
  %202 = load i32*, i32** %2, align 8
  %203 = call i32 @git_diff_free(i32* %202)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %204 = load i32, i32* @g_repo, align 4
  %205 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %204, i32* null, %struct.TYPE_10__* %1)
  %206 = call i32 @cl_git_pass(i32 %205)
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %258, %201
  %208 = load i32, i32* %5, align 4
  %209 = icmp sle i32 %208, 1
  br i1 %209, label %210, label %261

210:                                              ; preds = %207
  %211 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i32*, i32** %2, align 8
  %216 = load i32, i32* @diff_file_cb, align 4
  %217 = call i32 @diff_foreach_via_iterator(i32* %215, i32 %216, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %218 = call i32 @cl_git_pass(i32 %217)
  br label %224

219:                                              ; preds = %210
  %220 = load i32*, i32** %2, align 8
  %221 = load i32, i32* @diff_file_cb, align 4
  %222 = call i32 @git_diff_foreach(i32* %220, i32 %221, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %223 = call i32 @cl_git_pass(i32 %222)
  br label %224

224:                                              ; preds = %219, %214
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @cl_assert_equal_i(i32 3, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @cl_assert_equal_i(i32 0, i32 %232)
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @cl_assert_equal_i(i32 1, i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @cl_assert_equal_i(i32 1, i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @cl_assert_equal_i(i32 0, i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @cl_assert_equal_i(i32 1, i32 %256)
  br label %258

258:                                              ; preds = %224
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  br label %207

261:                                              ; preds = %207
  %262 = load i32*, i32** %2, align 8
  %263 = call i32 @git_diff_free(i32* %262)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %264 = load i32, i32* @g_repo, align 4
  %265 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %264, i32* null, %struct.TYPE_10__* %1)
  %266 = call i32 @cl_git_pass(i32 %265)
  store i32 0, i32* %5, align 4
  br label %267

267:                                              ; preds = %318, %261
  %268 = load i32, i32* %5, align 4
  %269 = icmp sle i32 %268, 1
  br i1 %269, label %270, label %321

270:                                              ; preds = %267
  %271 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %272 = load i32, i32* %5, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = load i32*, i32** %2, align 8
  %276 = load i32, i32* @diff_file_cb, align 4
  %277 = call i32 @diff_foreach_via_iterator(i32* %275, i32 %276, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %278 = call i32 @cl_git_pass(i32 %277)
  br label %284

279:                                              ; preds = %270
  %280 = load i32*, i32** %2, align 8
  %281 = load i32, i32* @diff_file_cb, align 4
  %282 = call i32 @git_diff_foreach(i32* %280, i32 %281, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %283 = call i32 @cl_git_pass(i32 %282)
  br label %284

284:                                              ; preds = %279, %274
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @cl_assert_equal_i(i32 3, i32 %286)
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @cl_assert_equal_i(i32 0, i32 %292)
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @cl_assert_equal_i(i32 1, i32 %298)
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @cl_assert_equal_i(i32 1, i32 %304)
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @cl_assert_equal_i(i32 0, i32 %310)
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @cl_assert_equal_i(i32 1, i32 %316)
  br label %318

318:                                              ; preds = %284
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %5, align 4
  br label %267

321:                                              ; preds = %267
  %322 = load i32*, i32** %2, align 8
  %323 = call i32 @git_diff_free(i32* %322)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %324 = load i32, i32* @g_repo, align 4
  %325 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %324, i32* null, %struct.TYPE_10__* %1)
  %326 = call i32 @cl_git_pass(i32 %325)
  store i32 0, i32* %5, align 4
  br label %327

327:                                              ; preds = %378, %321
  %328 = load i32, i32* %5, align 4
  %329 = icmp sle i32 %328, 1
  br i1 %329, label %330, label %381

330:                                              ; preds = %327
  %331 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %332 = load i32, i32* %5, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %330
  %335 = load i32*, i32** %2, align 8
  %336 = load i32, i32* @diff_file_cb, align 4
  %337 = call i32 @diff_foreach_via_iterator(i32* %335, i32 %336, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %338 = call i32 @cl_git_pass(i32 %337)
  br label %344

339:                                              ; preds = %330
  %340 = load i32*, i32** %2, align 8
  %341 = load i32, i32* @diff_file_cb, align 4
  %342 = call i32 @git_diff_foreach(i32* %340, i32 %341, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %343 = call i32 @cl_git_pass(i32 %342)
  br label %344

344:                                              ; preds = %339, %334
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @cl_assert_equal_i(i32 0, i32 %346)
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @cl_assert_equal_i(i32 0, i32 %352)
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @cl_assert_equal_i(i32 0, i32 %358)
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @cl_assert_equal_i(i32 0, i32 %364)
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @cl_assert_equal_i(i32 0, i32 %370)
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @cl_assert_equal_i(i32 0, i32 %376)
  br label %378

378:                                              ; preds = %344
  %379 = load i32, i32* %5, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %5, align 4
  br label %327

381:                                              ; preds = %327
  %382 = load i32*, i32** %2, align 8
  %383 = call i32 @git_diff_free(i32* %382)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %384 = load i32, i32* @g_repo, align 4
  %385 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %384, i32* null, %struct.TYPE_10__* %1)
  %386 = call i32 @cl_git_pass(i32 %385)
  store i32 0, i32* %5, align 4
  br label %387

387:                                              ; preds = %438, %381
  %388 = load i32, i32* %5, align 4
  %389 = icmp sle i32 %388, 1
  br i1 %389, label %390, label %441

390:                                              ; preds = %387
  %391 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %392 = load i32, i32* %5, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %390
  %395 = load i32*, i32** %2, align 8
  %396 = load i32, i32* @diff_file_cb, align 4
  %397 = call i32 @diff_foreach_via_iterator(i32* %395, i32 %396, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %398 = call i32 @cl_git_pass(i32 %397)
  br label %404

399:                                              ; preds = %390
  %400 = load i32*, i32** %2, align 8
  %401 = load i32, i32* @diff_file_cb, align 4
  %402 = call i32 @git_diff_foreach(i32* %400, i32 %401, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %403 = call i32 @cl_git_pass(i32 %402)
  br label %404

404:                                              ; preds = %399, %394
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @cl_assert_equal_i(i32 0, i32 %406)
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %411 = getelementptr inbounds i32, i32* %409, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @cl_assert_equal_i(i32 0, i32 %412)
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @cl_assert_equal_i(i32 0, i32 %418)
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %423 = getelementptr inbounds i32, i32* %421, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @cl_assert_equal_i(i32 0, i32 %424)
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %429 = getelementptr inbounds i32, i32* %427, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @cl_assert_equal_i(i32 0, i32 %430)
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @cl_assert_equal_i(i32 0, i32 %436)
  br label %438

438:                                              ; preds = %404
  %439 = load i32, i32* %5, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %5, align 4
  br label %387

441:                                              ; preds = %387
  %442 = load i32*, i32** %2, align 8
  %443 = call i32 @git_diff_free(i32* %442)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %444 = load i32, i32* @g_repo, align 4
  %445 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %444, i32* null, %struct.TYPE_10__* %1)
  %446 = call i32 @cl_git_pass(i32 %445)
  store i32 0, i32* %5, align 4
  br label %447

447:                                              ; preds = %498, %441
  %448 = load i32, i32* %5, align 4
  %449 = icmp sle i32 %448, 1
  br i1 %449, label %450, label %501

450:                                              ; preds = %447
  %451 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %452 = load i32, i32* %5, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %450
  %455 = load i32*, i32** %2, align 8
  %456 = load i32, i32* @diff_file_cb, align 4
  %457 = call i32 @diff_foreach_via_iterator(i32* %455, i32 %456, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %458 = call i32 @cl_git_pass(i32 %457)
  br label %464

459:                                              ; preds = %450
  %460 = load i32*, i32** %2, align 8
  %461 = load i32, i32* @diff_file_cb, align 4
  %462 = call i32 @git_diff_foreach(i32* %460, i32 %461, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %463 = call i32 @cl_git_pass(i32 %462)
  br label %464

464:                                              ; preds = %459, %454
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @cl_assert_equal_i(i32 0, i32 %466)
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %471 = getelementptr inbounds i32, i32* %469, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @cl_assert_equal_i(i32 0, i32 %472)
  %474 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @cl_assert_equal_i(i32 0, i32 %478)
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %481 = load i32*, i32** %480, align 8
  %482 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @cl_assert_equal_i(i32 0, i32 %484)
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  %488 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %489 = getelementptr inbounds i32, i32* %487, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @cl_assert_equal_i(i32 0, i32 %490)
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %493 = load i32*, i32** %492, align 8
  %494 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %495 = getelementptr inbounds i32, i32* %493, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @cl_assert_equal_i(i32 0, i32 %496)
  br label %498

498:                                              ; preds = %464
  %499 = load i32, i32* %5, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %5, align 4
  br label %447

501:                                              ; preds = %447
  %502 = load i32*, i32** %2, align 8
  %503 = call i32 @git_diff_free(i32* %502)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @diff_foreach_via_iterator(i32*, i32, i32*, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
