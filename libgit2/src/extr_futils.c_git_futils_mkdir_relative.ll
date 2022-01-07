; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_mkdir_relative.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_mkdir_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8* }
%struct.git_futils_mkdir_options = type { %struct.TYPE_8__, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.stat = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot access component in path '%s'\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to make directory '%s'\00", align 1
@GIT_MKDIR_VERIFY_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"path is not a directory '%s'\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_mkdir_relative(i8* %0, i8* %1, i32 %2, i32 %3, %struct.git_futils_mkdir_options* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.git_futils_mkdir_options*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca %struct.git_futils_mkdir_options, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.git_futils_mkdir_options* %4, %struct.git_futils_mkdir_options** %11, align 8
  %23 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i64 0, i64* %13, align 8
  store i8 47, i8* %15, align 1
  %24 = bitcast %struct.git_futils_mkdir_options* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 32, i1 false)
  %25 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %26 = icmp ne %struct.git_futils_mkdir_options* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store %struct.git_futils_mkdir_options* %18, %struct.git_futils_mkdir_options** %11, align 8
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @git_path_join_unrooted(%struct.TYPE_9__* %12, i8* %29, i8* %30, i64* %13)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %285

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mkdir_canonicalize(%struct.TYPE_9__* %12, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  br label %282

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i64 @git_buf_rfind(%struct.TYPE_9__* %12, i8 signext 47)
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %48, %43
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @git_path_root(i8* %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* %14, align 8
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %57, %50
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i64, i64* %13, align 8
  %62 = icmp uge i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br label %71

71:                                               ; preds = %63, %60
  %72 = phi i1 [ false, %60 ], [ %70, %63 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %13, align 8
  br label %60

76:                                               ; preds = %71
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i64, i64* %13, align 8
  %86 = icmp ult i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i64 0, i64* %13, align 8
  br label %88

88:                                               ; preds = %87, %84
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %16, align 8
  br label %93

93:                                               ; preds = %247, %88
  %94 = load i8*, i8** %16, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %250

97:                                               ; preds = %93
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %103, %97
  %99 = load i8*, i8** %16, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 47
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %16, align 8
  br label %98

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i8*, i8** %16, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %16, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 47
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i8*, i8** %16, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %16, align 8
  br label %107

122:                                              ; preds = %117
  %123 = load i8*, i8** %16, align 8
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* %15, align 1
  %125 = load i8*, i8** %16, align 8
  store i8 0, i8* %125, align 1
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %128 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %133 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @git_strmap_exists(i64 %134, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %247

140:                                              ; preds = %131, %122
  %141 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %142 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %179, %140
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @p_lstat(i8* %148, %struct.stat* %17)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %146
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* @errno, align 8
  %156 = load i64, i64* @ENOENT, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154, %151
  %159 = load i32, i32* @GIT_ERROR_OS, align 4
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @git_error_set(i32 %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %161)
  store i32 -1, i32* %19, align 4
  br label %282

163:                                              ; preds = %154
  %164 = call i32 (...) @git_error_clear()
  %165 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %166 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  store i32 1, i32* %20, align 4
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i64 @p_mkdir(i8* %171, i32 %172)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %163
  %176 = load i64, i64* @errno, align 8
  %177 = load i64, i64* @EEXIST, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %146

180:                                              ; preds = %175
  %181 = load i32, i32* @GIT_ERROR_OS, align 4
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @git_error_set(i32 %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %183)
  store i32 -1, i32* %19, align 4
  br label %282

185:                                              ; preds = %163
  br label %196

186:                                              ; preds = %146
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %192 = call i32 @mkdir_validate_dir(i8* %188, %struct.stat* %17, i32 %189, i32 %190, %struct.git_futils_mkdir_options* %191)
  store i32 %192, i32* %19, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %282

195:                                              ; preds = %186
  br label %196

196:                                              ; preds = %195, %185
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load i8, i8* %15, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %206 = call i32 @mkdir_validate_mode(i8* %198, %struct.stat* %17, i32 %202, i32 %203, i32 %204, %struct.git_futils_mkdir_options* %205)
  store i32 %206, i32* %19, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  br label %282

209:                                              ; preds = %196
  %210 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %211 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %246

214:                                              ; preds = %209
  %215 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %216 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %246

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %22, i64 %221, i32 1)
  %223 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %224 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %22, align 8
  %227 = call i8* @git_pool_malloc(i64 %225, i64 %226)
  store i8* %227, i8** %21, align 8
  %228 = load i8*, i8** %21, align 8
  %229 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %228)
  %230 = load i8*, i8** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 1
  %236 = call i32 @memcpy(i8* %230, i8* %232, i64 %235)
  %237 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %238 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i8*, i8** %21, align 8
  %241 = load i8*, i8** %21, align 8
  %242 = call i32 @git_strmap_set(i64 %239, i8* %240, i8* %241)
  store i32 %242, i32* %19, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %219
  br label %282

245:                                              ; preds = %219
  br label %246

246:                                              ; preds = %245, %214, %209
  br label %247

247:                                              ; preds = %246, %139
  %248 = load i8, i8* %15, align 1
  %249 = load i8*, i8** %16, align 8
  store i8 %248, i8* %249, align 1
  br label %93

250:                                              ; preds = %93
  store i32 0, i32* %19, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @GIT_MKDIR_VERIFY_DIR, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %250
  %256 = load i8, i8* %15, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %281

259:                                              ; preds = %255
  %260 = load %struct.git_futils_mkdir_options*, %struct.git_futils_mkdir_options** %11, align 8
  %261 = getelementptr inbounds %struct.git_futils_mkdir_options, %struct.git_futils_mkdir_options* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = call i64 @p_stat(i8* %266, %struct.stat* %17)
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %259
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @S_ISDIR(i64 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %269, %259
  %275 = load i32, i32* @GIT_ERROR_OS, align 4
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @git_error_set(i32 %275, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %277)
  %279 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %279, i32* %19, align 4
  br label %280

280:                                              ; preds = %274, %269
  br label %281

281:                                              ; preds = %280, %255, %250
  br label %282

282:                                              ; preds = %281, %244, %208, %194, %180, %158, %42
  %283 = call i32 @git_buf_dispose(%struct.TYPE_9__* %12)
  %284 = load i32, i32* %19, align 4
  store i32 %284, i32* %6, align 4
  br label %285

285:                                              ; preds = %282, %33
  %286 = load i32, i32* %6, align 4
  ret i32 %286
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @git_path_join_unrooted(%struct.TYPE_9__*, i8*, i8*, i64*) #2

declare dso_local i32 @mkdir_canonicalize(%struct.TYPE_9__*, i32) #2

declare dso_local i64 @git_buf_rfind(%struct.TYPE_9__*, i8 signext) #2

declare dso_local i64 @git_path_root(i8*) #2

declare dso_local i64 @git_strmap_exists(i64, i8*) #2

declare dso_local i64 @p_lstat(i8*, %struct.stat*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i64 @p_mkdir(i8*, i32) #2

declare dso_local i32 @mkdir_validate_dir(i8*, %struct.stat*, i32, i32, %struct.git_futils_mkdir_options*) #2

declare dso_local i32 @mkdir_validate_mode(i8*, %struct.stat*, i32, i32, i32, %struct.git_futils_mkdir_options*) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #2

declare dso_local i8* @git_pool_malloc(i64, i64) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @git_strmap_set(i64, i8*, i8*) #2

declare dso_local i64 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i64) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
