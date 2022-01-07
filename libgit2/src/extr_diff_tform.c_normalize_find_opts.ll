; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_normalize_find_opts.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_normalize_find_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_13__*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32 }

@GIT_DIFF_FIND_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"git_diff_find_options\00", align 1
@GIT_DIFF_FIND_ALL = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_BY_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"diff.renames\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"copies\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_COPIES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_EXACT_MATCH_ONLY = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_BREAK_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED = common dso_local global i32 0, align 4
@DEFAULT_THRESHOLD = common dso_local global i8* null, align 8
@DEFAULT_BREAK_REWRITE_THRESHOLD = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"diff.renamelimit\00", align 1
@DEFAULT_RENAME_LIMIT = common dso_local global i64 0, align 8
@git_diff_find_similar__hashsig_for_file = common dso_local global i32 0, align 4
@git_diff_find_similar__hashsig_for_buf = common dso_local global i32 0, align 4
@git_diff_find_similar__hashsig_free = common dso_local global i32 0, align 4
@git_diff_find_similar__calc_similarity = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@GIT_HASHSIG_IGNORE_WHITESPACE = common dso_local global i64 0, align 8
@GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@GIT_HASHSIG_NORMAL = common dso_local global i64 0, align 8
@GIT_HASHSIG_SMART_WHITESPACE = common dso_local global i64 0, align 8
@GIT_HASHSIG_ALLOW_SMALL_FILES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @normalize_find_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalize_find_opts(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = load i32, i32* @GIT_DIFF_FIND_OPTIONS_VERSION, align 4
  %14 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_11__* %12, i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @git_repository_config__weakptr(i32** %8, i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %295

26:                                               ; preds = %19, %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = call i32 @memcpy(%struct.TYPE_11__* %30, %struct.TYPE_11__* %31, i32 56)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GIT_DIFF_FIND_ALL, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @GIT_DIFF_FIND_BY_CONFIG, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %36, %33
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %44
  %48 = load i32*, i32** %8, align 8
  %49 = call i8* @git_config__get_string_force(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @git__parse_bool(i32* %11, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %80

57:                                               ; preds = %53, %47
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @strcasecmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %67 = load i32, i32* @GIT_DIFF_FIND_COPIES, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %79

73:                                               ; preds = %61
  %74 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %65
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @git__free(i8* %81)
  br label %89

83:                                               ; preds = %44
  %84 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %80
  br label %90

90:                                               ; preds = %89, %36
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GIT_DIFF_FIND_EXACT_MATCH_ONLY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %90
  %98 = load i32, i32* @GIT_DIFF_FIND_REWRITES, align 4
  %99 = load i32, i32* @GIT_DIFF_BREAK_REWRITES, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %97, %90
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %112
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32, i32* @GIT_DIFF_FIND_COPIES, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %132, %125
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @GIT_DIFF_BREAK_REWRITES, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @GIT_DIFF_FIND_REWRITES, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %138
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 6
  %154 = load i8*, i8** %153, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ugt i8* %159, inttoptr (i64 100 to i8*)
  br i1 %160, label %161, label %165

161:                                              ; preds = %156, %151
  %162 = load i8*, i8** @DEFAULT_THRESHOLD, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 6
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %156
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 5
  %168 = load i8*, i8** %167, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ugt i8* %173, inttoptr (i64 100 to i8*)
  br i1 %174, label %175, label %179

175:                                              ; preds = %170, %165
  %176 = load i8*, i8** @DEFAULT_THRESHOLD, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 5
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %175, %170
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ugt i8* %187, inttoptr (i64 100 to i8*)
  br i1 %188, label %189, label %193

189:                                              ; preds = %184, %179
  %190 = load i8*, i8** @DEFAULT_THRESHOLD, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ugt i8* %201, inttoptr (i64 100 to i8*)
  br i1 %202, label %203, label %207

203:                                              ; preds = %198, %193
  %204 = load i8*, i8** @DEFAULT_BREAK_REWRITE_THRESHOLD, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %203, %198
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %231, label %212

212:                                              ; preds = %207
  %213 = load i32*, i32** %8, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i32*, i32** %8, align 8
  %217 = load i64, i64* @DEFAULT_RENAME_LIMIT, align 8
  %218 = call i64 @git_config__get_int_force(i32* %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %217)
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %215, %212
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp sle i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load i64, i64* @DEFAULT_RENAME_LIMIT, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %226, %221
  br label %231

231:                                              ; preds = %230, %207
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = icmp ne %struct.TYPE_13__* %234, null
  br i1 %235, label %294, label %236

236:                                              ; preds = %231
  %237 = call %struct.TYPE_13__* @git__malloc(i32 4)
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 2
  store %struct.TYPE_13__* %237, %struct.TYPE_13__** %239, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__* %242)
  %244 = load i32, i32* @git_diff_find_similar__hashsig_for_file, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 4
  store i32 %244, i32* %248, align 4
  %249 = load i32, i32* @git_diff_find_similar__hashsig_for_buf, align 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 3
  store i32 %249, i32* %253, align 8
  %254 = load i32, i32* @git_diff_find_similar__hashsig_free, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  store i32 %254, i32* %258, align 4
  %259 = load i32, i32* @git_diff_find_similar__calc_similarity, align 4
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  store i32 %259, i32* %263, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @GIT_DIFF_FIND_IGNORE_WHITESPACE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %236
  %271 = load i64, i64* @GIT_HASHSIG_IGNORE_WHITESPACE, align 8
  store i64 %271, i64* %9, align 8
  br label %284

272:                                              ; preds = %236
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %272
  %280 = load i64, i64* @GIT_HASHSIG_NORMAL, align 8
  store i64 %280, i64* %9, align 8
  br label %283

281:                                              ; preds = %272
  %282 = load i64, i64* @GIT_HASHSIG_SMART_WHITESPACE, align 8
  store i64 %282, i64* %9, align 8
  br label %283

283:                                              ; preds = %281, %279
  br label %284

284:                                              ; preds = %283, %270
  %285 = load i64, i64* @GIT_HASHSIG_ALLOW_SMALL_FILES, align 8
  %286 = load i64, i64* %9, align 8
  %287 = or i64 %286, %285
  store i64 %287, i64* %9, align 8
  %288 = load i64, i64* %9, align 8
  %289 = inttoptr i64 %288 to i8*
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  store i8* %289, i8** %293, align 8
  br label %294

294:                                              ; preds = %284, %231
  store i32 0, i32* %4, align 4
  br label %295

295:                                              ; preds = %294, %25
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @git_repository_config__weakptr(i32**, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i8* @git_config__get_string_force(i32*, i8*, i8*) #1

declare dso_local i32 @git__parse_bool(i32*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i64 @git_config__get_int_force(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_13__* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
