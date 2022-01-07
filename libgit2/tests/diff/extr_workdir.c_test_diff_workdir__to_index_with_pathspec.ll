; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_pathspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__to_index_with_pathspec.c"
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
@diff_file_cb = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_IGNORED = common dso_local global i64 0, align 8
@GIT_DELTA_UNTRACKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"*_deleted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__to_index_with_pathspec() #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i8** %4, i8*** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %20, i32* null, %struct.TYPE_10__* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %74, %0
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %77

26:                                               ; preds = %23
  %27 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @diff_file_cb, align 4
  %33 = call i32 @diff_foreach_via_iterator(i32* %31, i32 %32, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %34 = call i32 @cl_git_pass(i32 %33)
  br label %40

35:                                               ; preds = %26
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @diff_file_cb, align 4
  %38 = call i32 @git_diff_foreach(i32* %36, i32 %37, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %39 = call i32 @cl_git_pass(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cl_assert_equal_i(i32 13, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i32 0, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_i(i32 4, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cl_assert_equal_i(i32 4, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_i(i32 1, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_i(i32 4, i32 %72)
  br label %74

74:                                               ; preds = %40
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %23

77:                                               ; preds = %23
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @git_diff_free(i32* %78)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %80 = load i32, i32* @g_repo, align 4
  %81 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %80, i32* null, %struct.TYPE_10__* %1)
  %82 = call i32 @cl_git_pass(i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %134, %77
  %84 = load i32, i32* %5, align 4
  %85 = icmp sle i32 %84, 1
  br i1 %85, label %86, label %137

86:                                               ; preds = %83
  %87 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32*, i32** %2, align 8
  %92 = load i32, i32* @diff_file_cb, align 4
  %93 = call i32 @diff_foreach_via_iterator(i32* %91, i32 %92, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %94 = call i32 @cl_git_pass(i32 %93)
  br label %100

95:                                               ; preds = %86
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @diff_file_cb, align 4
  %98 = call i32 @git_diff_foreach(i32* %96, i32 %97, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %99 = call i32 @cl_git_pass(i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @cl_assert_equal_i(i32 1, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cl_assert_equal_i(i32 0, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cl_assert_equal_i(i32 0, i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @cl_assert_equal_i(i32 1, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @cl_assert_equal_i(i32 0, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @cl_assert_equal_i(i32 0, i32 %132)
  br label %134

134:                                              ; preds = %100
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %83

137:                                              ; preds = %83
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @git_diff_free(i32* %138)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %140 = load i32, i32* @g_repo, align 4
  %141 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %140, i32* null, %struct.TYPE_10__* %1)
  %142 = call i32 @cl_git_pass(i32 %141)
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %194, %137
  %144 = load i32, i32* %5, align 4
  %145 = icmp sle i32 %144, 1
  br i1 %145, label %146, label %197

146:                                              ; preds = %143
  %147 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32*, i32** %2, align 8
  %152 = load i32, i32* @diff_file_cb, align 4
  %153 = call i32 @diff_foreach_via_iterator(i32* %151, i32 %152, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %154 = call i32 @cl_git_pass(i32 %153)
  br label %160

155:                                              ; preds = %146
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* @diff_file_cb, align 4
  %158 = call i32 @git_diff_foreach(i32* %156, i32 %157, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %159 = call i32 @cl_git_pass(i32 %158)
  br label %160

160:                                              ; preds = %155, %150
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @cl_assert_equal_i(i32 3, i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @cl_assert_equal_i(i32 0, i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @cl_assert_equal_i(i32 1, i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @cl_assert_equal_i(i32 1, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @cl_assert_equal_i(i32 0, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @cl_assert_equal_i(i32 1, i32 %192)
  br label %194

194:                                              ; preds = %160
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %143

197:                                              ; preds = %143
  %198 = load i32*, i32** %2, align 8
  %199 = call i32 @git_diff_free(i32* %198)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %200 = load i32, i32* @g_repo, align 4
  %201 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %200, i32* null, %struct.TYPE_10__* %1)
  %202 = call i32 @cl_git_pass(i32 %201)
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %254, %197
  %204 = load i32, i32* %5, align 4
  %205 = icmp sle i32 %204, 1
  br i1 %205, label %206, label %257

206:                                              ; preds = %203
  %207 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 16)
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32*, i32** %2, align 8
  %212 = load i32, i32* @diff_file_cb, align 4
  %213 = call i32 @diff_foreach_via_iterator(i32* %211, i32 %212, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %214 = call i32 @cl_git_pass(i32 %213)
  br label %220

215:                                              ; preds = %206
  %216 = load i32*, i32** %2, align 8
  %217 = load i32, i32* @diff_file_cb, align 4
  %218 = call i32 @git_diff_foreach(i32* %216, i32 %217, i32* null, i32* null, i32* null, %struct.TYPE_11__* %3)
  %219 = call i32 @cl_git_pass(i32 %218)
  br label %220

220:                                              ; preds = %215, %210
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @cl_assert_equal_i(i32 2, i32 %222)
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @cl_assert_equal_i(i32 0, i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @cl_assert_equal_i(i32 2, i32 %234)
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @cl_assert_equal_i(i32 0, i32 %240)
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* @GIT_DELTA_IGNORED, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @cl_assert_equal_i(i32 0, i32 %246)
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* @GIT_DELTA_UNTRACKED, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @cl_assert_equal_i(i32 0, i32 %252)
  br label %254

254:                                              ; preds = %220
  %255 = load i32, i32* %5, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %5, align 4
  br label %203

257:                                              ; preds = %203
  %258 = load i32*, i32** %2, align 8
  %259 = call i32 @git_diff_free(i32* %258)
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
