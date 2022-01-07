; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c__git_repository_open_ext_from_env.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c__git_repository_open_ext_from_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"GIT_DIR\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@GIT_REPOSITORY_OPEN_NO_SEARCH = common dso_local global i32 0, align 4
@GIT_REPOSITORY_OPEN_NO_DOTGIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"GIT_CEILING_DIRECTORIES\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GIT_DISCOVERY_ACROSS_FILESYSTEM\00", align 1
@GIT_REPOSITORY_OPEN_CROSS_FS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"GIT_INDEX_FILE\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"GIT_NAMESPACE\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"GIT_OBJECT_DIRECTORY\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"GIT_WORK_TREE\00", align 1
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"GIT_WORK_TREE unimplemented\00", align 1
@GIT_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"GIT_COMMON_DIR\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"GIT_COMMON_DIR unimplemented\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"GIT_ALTERNATE_OBJECT_DIRECTORIES\00", align 1
@GIT_PATH_LIST_SEPARATOR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*)* @_git_repository_open_ext_from_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_git_repository_open_ext_from_env(i32** %0, i8* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32** %0, i32*** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %24 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %25 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %26 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %27 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %28 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %29 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %30 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %31 = bitcast %struct.TYPE_7__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %32 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %2
  %36 = call i32 @git__getenv(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* @GIT_ENOTFOUND, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @git_error_clear()
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %55

42:                                               ; preds = %35
  %43 = load i32, i32* %19, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %283

46:                                               ; preds = %42
  %47 = call i8* @git_buf_cstr(%struct.TYPE_7__* %8)
  store i8* %47, i8** %4, align 8
  %48 = load i32, i32* @GIT_REPOSITORY_OPEN_NO_SEARCH, align 4
  %49 = load i32, i32* %18, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* @GIT_REPOSITORY_OPEN_NO_DOTGIT, align 4
  %52 = load i32, i32* %18, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %2
  %57 = call i32 @git__getenv(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* @GIT_ENOTFOUND, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (...) @git_error_clear()
  br label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %19, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %283

67:                                               ; preds = %63
  %68 = call i8* @git_buf_cstr(%struct.TYPE_7__* %9)
  store i8* %68, i8** %17, align 8
  br label %69

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %61
  %71 = call i32 @git__getenv(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @GIT_ENOTFOUND, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 (...) @git_error_clear()
  br label %96

77:                                               ; preds = %70
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %283

81:                                               ; preds = %77
  store i32 0, i32* %20, align 4
  %82 = call i8* @git_buf_cstr(%struct.TYPE_7__* %10)
  %83 = call i32 @git_config_parse_bool(i32* %20, i8* %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %283

87:                                               ; preds = %81
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @GIT_REPOSITORY_OPEN_CROSS_FS, align 4
  %92 = load i32, i32* %18, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %75
  %97 = call i32 @git__getenv(%struct.TYPE_7__* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* @GIT_ENOTFOUND, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (...) @git_error_clear()
  br label %115

103:                                              ; preds = %96
  %104 = load i32, i32* %19, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %283

107:                                              ; preds = %103
  %108 = call i8* @git_buf_cstr(%struct.TYPE_7__* %11)
  %109 = call i32 @git_index_open(i32** %6, i8* %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %283

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %101
  %116 = call i32 @git__getenv(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @GIT_ENOTFOUND, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 (...) @git_error_clear()
  br label %127

122:                                              ; preds = %115
  %123 = load i32, i32* %19, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %283

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %120
  %128 = call i32 @git__getenv(%struct.TYPE_7__* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* @GIT_ENOTFOUND, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = call i32 (...) @git_error_clear()
  br label %146

134:                                              ; preds = %127
  %135 = load i32, i32* %19, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %283

138:                                              ; preds = %134
  %139 = call i8* @git_buf_cstr(%struct.TYPE_7__* %13)
  %140 = call i32 @git_odb_open(i32** %7, i8* %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %283

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %132
  %147 = call i32 @git__getenv(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* @GIT_ENOTFOUND, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 (...) @git_error_clear()
  br label %161

153:                                              ; preds = %146
  %154 = load i32, i32* %19, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %283

157:                                              ; preds = %153
  %158 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %159 = call i32 @git_error_set(i32 %158, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %160 = load i32, i32* @GIT_ERROR, align 4
  store i32 %160, i32* %19, align 4
  br label %283

161:                                              ; preds = %151
  %162 = call i32 @git__getenv(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* @GIT_ENOTFOUND, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = call i32 (...) @git_error_clear()
  br label %176

168:                                              ; preds = %161
  %169 = load i32, i32* %19, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %283

172:                                              ; preds = %168
  %173 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %174 = call i32 @git_error_set(i32 %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i32, i32* @GIT_ERROR, align 4
  store i32 %175, i32* %19, align 4
  br label %283

176:                                              ; preds = %166
  %177 = load i8*, i8** %4, align 8
  %178 = load i32, i32* %18, align 4
  %179 = load i8*, i8** %17, align 8
  %180 = call i32 @git_repository_open_ext(i32** %5, i8* %177, i32 %178, i8* %179)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %283

184:                                              ; preds = %176
  %185 = load i32*, i32** %7, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32*, i32** %5, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @git_repository_set_odb(i32* %188, i32* %189)
  br label %191

191:                                              ; preds = %187, %184
  %192 = call i32 @git__getenv(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* @GIT_ENOTFOUND, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = call i32 (...) @git_error_clear()
  store i32 0, i32* %19, align 4
  br label %262

198:                                              ; preds = %191
  %199 = load i32, i32* %19, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %283

202:                                              ; preds = %198
  %203 = load i32*, i32** %7, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %212, label %205

205:                                              ; preds = %202
  %206 = load i32*, i32** %5, align 8
  %207 = call i32 @git_repository_odb(i32** %7, i32* %206)
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %283

211:                                              ; preds = %205
  br label %212

212:                                              ; preds = %211, %202
  %213 = call i8* @git_buf_cstr(%struct.TYPE_7__* %14)
  %214 = call i32 @git_buf_len(%struct.TYPE_7__* %14)
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8* %216, i8** %21, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  store i8* %218, i8** %22, align 8
  store i8* %218, i8** %23, align 8
  br label %219

219:                                              ; preds = %257, %212
  %220 = load i8*, i8** %23, align 8
  %221 = load i8*, i8** %21, align 8
  %222 = icmp ne i8* %220, %221
  br i1 %222, label %223, label %260

223:                                              ; preds = %219
  %224 = load i8*, i8** %22, align 8
  store i8* %224, i8** %23, align 8
  br label %225

225:                                              ; preds = %240, %223
  %226 = load i8*, i8** %23, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i8*, i8** %23, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = load i8, i8* @GIT_PATH_LIST_SEPARATOR, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp ne i32 %233, %235
  br label %237

237:                                              ; preds = %230, %225
  %238 = phi i1 [ false, %225 ], [ %236, %230 ]
  br i1 %238, label %239, label %243

239:                                              ; preds = %237
  br label %240

240:                                              ; preds = %239
  %241 = load i8*, i8** %23, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %23, align 8
  br label %225

243:                                              ; preds = %237
  %244 = load i8*, i8** %23, align 8
  %245 = load i8, i8* %244, align 1
  %246 = icmp ne i8 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = load i8*, i8** %23, align 8
  store i8 0, i8* %248, align 1
  br label %249

249:                                              ; preds = %247, %243
  %250 = load i32*, i32** %7, align 8
  %251 = load i8*, i8** %22, align 8
  %252 = call i32 @git_odb_add_disk_alternate(i32* %250, i8* %251)
  store i32 %252, i32* %19, align 4
  %253 = load i32, i32* %19, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %283

256:                                              ; preds = %249
  br label %257

257:                                              ; preds = %256
  %258 = load i8*, i8** %23, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 1
  store i8* %259, i8** %22, align 8
  br label %219

260:                                              ; preds = %219
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261, %196
  %263 = call i32 @git_buf_len(%struct.TYPE_7__* %12)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load i32*, i32** %5, align 8
  %267 = call i8* @git_buf_cstr(%struct.TYPE_7__* %12)
  %268 = call i32 @git_repository_set_namespace(i32* %266, i8* %267)
  store i32 %268, i32* %19, align 4
  %269 = load i32, i32* %19, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  br label %283

272:                                              ; preds = %265
  br label %273

273:                                              ; preds = %272, %262
  %274 = load i32*, i32** %5, align 8
  %275 = load i32*, i32** %6, align 8
  %276 = call i32 @git_repository_set_index(i32* %274, i32* %275)
  %277 = load i32**, i32*** %3, align 8
  %278 = icmp ne i32** %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i32*, i32** %5, align 8
  %281 = load i32**, i32*** %3, align 8
  store i32* %280, i32** %281, align 8
  br label %286

282:                                              ; preds = %273
  br label %283

283:                                              ; preds = %282, %271, %255, %210, %201, %183, %172, %171, %157, %156, %143, %137, %125, %112, %106, %86, %80, %66, %45
  %284 = load i32*, i32** %5, align 8
  %285 = call i32 @git_repository_free(i32* %284)
  br label %286

286:                                              ; preds = %283, %279
  %287 = load i32*, i32** %7, align 8
  %288 = call i32 @git_odb_free(i32* %287)
  %289 = load i32*, i32** %6, align 8
  %290 = call i32 @git_index_free(i32* %289)
  %291 = call i32 @git_buf_dispose(%struct.TYPE_7__* %16)
  %292 = call i32 @git_buf_dispose(%struct.TYPE_7__* %15)
  %293 = call i32 @git_buf_dispose(%struct.TYPE_7__* %14)
  %294 = call i32 @git_buf_dispose(%struct.TYPE_7__* %13)
  %295 = call i32 @git_buf_dispose(%struct.TYPE_7__* %12)
  %296 = call i32 @git_buf_dispose(%struct.TYPE_7__* %11)
  %297 = call i32 @git_buf_dispose(%struct.TYPE_7__* %10)
  %298 = call i32 @git_buf_dispose(%struct.TYPE_7__* %9)
  %299 = call i32 @git_buf_dispose(%struct.TYPE_7__* %8)
  %300 = load i32, i32* %19, align 4
  ret i32 %300
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git__getenv(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_7__*) #2

declare dso_local i32 @git_config_parse_bool(i32*, i8*) #2

declare dso_local i32 @git_index_open(i32**, i8*) #2

declare dso_local i32 @git_odb_open(i32**, i8*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i8*) #2

declare dso_local i32 @git_repository_set_odb(i32*, i32*) #2

declare dso_local i32 @git_repository_odb(i32**, i32*) #2

declare dso_local i32 @git_buf_len(%struct.TYPE_7__*) #2

declare dso_local i32 @git_odb_add_disk_alternate(i32*, i8*) #2

declare dso_local i32 @git_repository_set_namespace(i32*, i8*) #2

declare dso_local i32 @git_repository_set_index(i32*, i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_odb_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
