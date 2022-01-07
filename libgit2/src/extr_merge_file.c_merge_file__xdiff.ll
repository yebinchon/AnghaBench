; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_file.c_merge_file__xdiff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_file.c_merge_file__xdiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, i32, i32*, i32*, i32* }
%struct.TYPE_24__ = type { i32, i8*, i32, i32, i32*, i32, %struct.TYPE_23__, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32*, i32, i64 }
%struct.TYPE_25__ = type { i8*, i32, i32 }
%struct.TYPE_26__ = type { i32, i64 }

@GIT_MERGE_FILE_OPTIONS_INIT = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@GIT_MERGE_FILE_FAVOR_OURS = common dso_local global i64 0, align 8
@XDL_MERGE_FAVOR_OURS = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_FAVOR_THEIRS = common dso_local global i64 0, align 8
@XDL_MERGE_FAVOR_THEIRS = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_FAVOR_UNION = common dso_local global i64 0, align 8
@XDL_MERGE_FAVOR_UNION = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_SIMPLIFY_ALNUM = common dso_local global i32 0, align 4
@XDL_MERGE_ZEALOUS_ALNUM = common dso_local global i32 0, align 4
@XDL_MERGE_ZEALOUS = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_STYLE_DIFF3 = common dso_local global i32 0, align 4
@XDL_MERGE_DIFF3 = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@XDF_IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE = common dso_local global i32 0, align 4
@XDF_IGNORE_WHITESPACE_CHANGE = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL = common dso_local global i32 0, align 4
@XDF_IGNORE_WHITESPACE_AT_EOL = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_DIFF_PATIENCE = common dso_local global i32 0, align 4
@XDF_PATIENCE_DIFF = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_DIFF_MINIMAL = common dso_local global i32 0, align 4
@XDF_NEED_MINIMAL = common dso_local global i32 0, align 4
@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to merge files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_27__*)* @merge_file__xdiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_file__xdiff(%struct.TYPE_24__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2, %struct.TYPE_28__* %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca %struct.TYPE_25__, align 8
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_26__, align 8
  %16 = alloca %struct.TYPE_27__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %10, align 8
  %20 = bitcast %struct.TYPE_25__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = bitcast %struct.TYPE_25__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = bitcast %struct.TYPE_25__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = bitcast %struct.TYPE_27__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_27__* @GIT_MERGE_FILE_OPTIONS_INIT to i8*), i64 40, i1 false)
  store i32 0, i32* %19, align 4
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = call i32 @memset(%struct.TYPE_24__* %24, i32 0, i32 80)
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %27 = call i32 @merge_file_normalize_opts(%struct.TYPE_27__* %16, %struct.TYPE_27__* %26)
  %28 = call i32 @memset(%struct.TYPE_24__* %11, i32 0, i32 80)
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %30 = icmp ne %struct.TYPE_28__* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i32* [ %37, %35 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 12
  store i32* %43, i32** %44, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  br label %54

54:                                               ; preds = %42, %5
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i32* [ %60, %58 ], [ %64, %61 ]
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 11
  store i32* %66, i32** %67, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  br label %87

83:                                               ; preds = %65
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i32* [ %82, %80 ], [ %86, %83 ]
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 10
  store i32* %88, i32** %89, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i8* %93, i8** %94, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @GIT_MERGE_FILE_FAVOR_OURS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load i32, i32* @XDL_MERGE_FAVOR_OURS, align 4
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 9
  store i32 %104, i32* %105, align 8
  br label %124

106:                                              ; preds = %87
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @GIT_MERGE_FILE_FAVOR_THEIRS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @XDL_MERGE_FAVOR_THEIRS, align 4
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 9
  store i32 %112, i32* %113, align 8
  br label %123

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @GIT_MERGE_FILE_FAVOR_UNION, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @XDL_MERGE_FAVOR_UNION, align 4
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 9
  store i32 %120, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %111
  br label %124

124:                                              ; preds = %123, %103
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @GIT_MERGE_FILE_SIMPLIFY_ALNUM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @XDL_MERGE_ZEALOUS_ALNUM, align 4
  br label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @XDL_MERGE_ZEALOUS, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 8
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @GIT_MERGE_FILE_STYLE_DIFF3, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @XDL_MERGE_DIFF3, align 4
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 7
  store i32 %143, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %134
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @GIT_MERGE_FILE_IGNORE_WHITESPACE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load i32, i32* @XDF_IGNORE_WHITESPACE, align 4
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %145
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* @XDF_IGNORE_WHITESPACE_CHANGE, align 4
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %157
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32, i32* @XDF_IGNORE_WHITESPACE_AT_EOL, align 4
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %169
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @GIT_MERGE_FILE_DIFF_PATIENCE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* @XDF_PATIENCE_DIFF, align 4
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %181
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @GIT_MERGE_FILE_DIFF_MINIMAL, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i32, i32* @XDF_NEED_MINIMAL, align 4
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %193
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 5
  store i32 %207, i32* %208, align 8
  %209 = call i32 @xdl_merge(%struct.TYPE_25__* %12, %struct.TYPE_25__* %13, %struct.TYPE_25__* %14, %struct.TYPE_24__* %11, %struct.TYPE_26__* %15)
  store i32 %209, i32* %18, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %213 = call i32 @git_error_set(i32 %212, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %19, align 4
  br label %273

214:                                              ; preds = %205
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %216 = icmp ne %struct.TYPE_28__* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  br label %222

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %217
  %223 = phi i32* [ %220, %217 ], [ null, %221 ]
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = call i8* @git_merge_file__best_path(i32* %223, i32* %226, i32* %229)
  store i8* %230, i8** %17, align 8
  %231 = load i8*, i8** %17, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %240

233:                                              ; preds = %222
  %234 = load i8*, i8** %17, align 8
  %235 = call i32* @git__strdup(i8* %234)
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 4
  store i32* %235, i32** %237, align 8
  %238 = icmp eq i32* %235, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %233
  store i32 -1, i32* %19, align 4
  br label %273

240:                                              ; preds = %233, %222
  %241 = load i32, i32* %18, align 4
  %242 = icmp eq i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i8*
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %256 = icmp ne %struct.TYPE_28__* %255, null
  br i1 %256, label %257, label %261

257:                                              ; preds = %240
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  br label %262

261:                                              ; preds = %240
  br label %262

262:                                              ; preds = %261, %257
  %263 = phi i32 [ %260, %257 ], [ 0, %261 ]
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @git_merge_file__best_mode(i32 %263, i32 %266, i32 %269)
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %262, %239, %211
  %274 = load i32, i32* %19, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %278 = call i32 @git_merge_file_result_free(%struct.TYPE_24__* %277)
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %19, align 4
  ret i32 %280
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #2

declare dso_local i32 @merge_file_normalize_opts(%struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i32 @xdl_merge(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_26__*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i8* @git_merge_file__best_path(i32*, i32*, i32*) #2

declare dso_local i32* @git__strdup(i8*) #2

declare dso_local i32 @git_merge_file__best_mode(i32, i32, i32) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_24__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
