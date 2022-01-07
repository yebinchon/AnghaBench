; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_create_with_opts.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_create_with_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_20__ = type { i32, i8*, i32*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@GIT_REMOTE_CREATE_OPTIONS_INIT = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@GIT_REMOTE_CREATE_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"git_remote_create_options\00", align 1
@GIT_REMOTE_CREATE_SKIP_INSTEADOF = common dso_local global i32 0, align 4
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4
@CONFIG_URL_FMT = common dso_local global i32 0, align 4
@GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC = common dso_local global i32 0, align 4
@GIT_REMOTE_DOWNLOAD_TAGS_NONE = common dso_local global i32 0, align 4
@GIT_REMOTE_DOWNLOAD_TAGS_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_create_with_opts(%struct.TYPE_21__** %0, i8* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  store i32* null, i32** %9, align 8
  %17 = bitcast %struct.TYPE_22__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_22__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_22__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %19 = bitcast %struct.TYPE_22__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_22__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %20 = bitcast %struct.TYPE_20__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_20__* @GIT_REMOTE_CREATE_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32 -1, i32* %15, align 4
  %21 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %22 = icmp ne %struct.TYPE_21__** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i1 [ false, %3 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = icmp ne %struct.TYPE_20__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = load i32, i32* @GIT_REMOTE_CREATE_OPTIONS_VERSION, align 4
  %36 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_20__* %34, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ensure_remote_name_is_valid(i32* %44)
  store i32 %45, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %4, align 4
  br label %283

49:                                               ; preds = %41
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ensure_remote_doesnot_exist(i32 %57, i32* %60)
  store i32 %61, i32* %15, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %4, align 4
  br label %283

65:                                               ; preds = %54, %49
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @git_repository_config_snapshot(i32** %9, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %270

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %66
  %80 = call %struct.TYPE_21__* @git__calloc(i32 1, i32 40)
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %8, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %82 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_21__* %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = call i32 @git_vector_init(i32* %89, i32 8, i32* null)
  store i32 %90, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %79
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @canonicalize_url(%struct.TYPE_22__* %11, i8* %93)
  store i32 %94, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %79
  br label %270

97:                                               ; preds = %92
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GIT_REMOTE_CREATE_SKIP_INSTEADOF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %102
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %114 = call %struct.TYPE_21__* @apply_insteadof(i32* %110, i32* %112, i32 %113)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 5
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %116, align 8
  br label %124

117:                                              ; preds = %102, %97
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i8* @git__strdup(i32* %119)
  %121 = bitcast i8* %120 to %struct.TYPE_21__*
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 5
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %123, align 8
  br label %124

124:                                              ; preds = %117, %109
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_21__* %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %172

133:                                              ; preds = %124
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i8* @git__strdup(i32* %136)
  %138 = bitcast i8* %137 to %struct.TYPE_21__*
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 4
  store %struct.TYPE_21__* %138, %struct.TYPE_21__** %140, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_21__* %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %133
  %150 = load i32, i32* @CONFIG_URL_FMT, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @git_buf_printf(%struct.TYPE_22__* %12, i32 %150, i32* %153)
  store i32 %154, i32* %15, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @git_repository_config__weakptr(i32** %10, i32 %159)
  store i32 %160, i32* %15, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %156
  %163 = load i32*, i32** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @git_config_set_string(i32* %163, i32* %165, i32* %167)
  store i32 %168, i32* %15, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162, %156, %149
  br label %270

171:                                              ; preds = %162, %133
  br label %172

172:                                              ; preds = %171, %124
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %189, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %253

182:                                              ; preds = %177
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %253, label %189

189:                                              ; preds = %182, %172
  store i8* null, i8** %16, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %16, align 8
  br label %207

198:                                              ; preds = %189
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @default_fetchspec_for_name(%struct.TYPE_22__* %13, i32* %201)
  store i32 %202, i32* %15, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %270

205:                                              ; preds = %198
  %206 = call i8* @git_buf_cstr(%struct.TYPE_22__* %13)
  store i8* %206, i8** %16, align 8
  br label %207

207:                                              ; preds = %205, %194
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %209 = load i8*, i8** %16, align 8
  %210 = call i32 @add_refspec(%struct.TYPE_21__* %208, i8* %209, i32 1)
  store i32 %210, i32* %15, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %270

213:                                              ; preds = %207
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %242

218:                                              ; preds = %213
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %242

223:                                              ; preds = %218
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i8*, i8** %16, align 8
  %231 = call i32 @write_add_refspec(i32 %226, i32* %229, i8* %230, i32 1)
  store i32 %231, i32* %15, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %223
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @lookup_remote_prune_config(%struct.TYPE_21__* %234, i32* %235, i32* %238)
  store i32 %239, i32* %15, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233, %223
  br label %270

242:                                              ; preds = %233, %218, %213
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 1
  %249 = call i32 @dwim_refspecs(i32* %244, i32* %246, i32* %248)
  store i32 %249, i32* %15, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  br label %270

252:                                              ; preds = %242
  br label %253

253:                                              ; preds = %252, %182, %177
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = load i32, i32* @GIT_REMOTE_DOWNLOAD_TAGS_NONE, align 4
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  br label %266

262:                                              ; preds = %253
  %263 = load i32, i32* @GIT_REMOTE_DOWNLOAD_TAGS_AUTO, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %262, %258
  %267 = call i32 @git_buf_dispose(%struct.TYPE_22__* %12)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %269 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  store %struct.TYPE_21__* %268, %struct.TYPE_21__** %269, align 8
  store i32 0, i32* %15, align 4
  br label %270

270:                                              ; preds = %266, %251, %241, %212, %204, %170, %96, %77
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %275 = call i32 @git_remote_free(%struct.TYPE_21__* %274)
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i32*, i32** %9, align 8
  %278 = call i32 @git_config_free(i32* %277)
  %279 = call i32 @git_buf_dispose(%struct.TYPE_22__* %13)
  %280 = call i32 @git_buf_dispose(%struct.TYPE_22__* %11)
  %281 = call i32 @git_buf_dispose(%struct.TYPE_22__* %12)
  %282 = load i32, i32* %15, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %276, %63, %47
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_20__*, i32, i8*) #2

declare dso_local i32 @ensure_remote_name_is_valid(i32*) #2

declare dso_local i32 @ensure_remote_doesnot_exist(i32, i32*) #2

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #2

declare dso_local %struct.TYPE_21__* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_21__*) #2

declare dso_local i32 @git_vector_init(i32*, i32, i32*) #2

declare dso_local i32 @canonicalize_url(%struct.TYPE_22__*, i8*) #2

declare dso_local %struct.TYPE_21__* @apply_insteadof(i32*, i32*, i32) #2

declare dso_local i8* @git__strdup(i32*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_22__*, i32, i32*) #2

declare dso_local i32 @git_repository_config__weakptr(i32**, i32) #2

declare dso_local i32 @git_config_set_string(i32*, i32*, i32*) #2

declare dso_local i32 @default_fetchspec_for_name(%struct.TYPE_22__*, i32*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_22__*) #2

declare dso_local i32 @add_refspec(%struct.TYPE_21__*, i8*, i32) #2

declare dso_local i32 @write_add_refspec(i32, i32*, i8*, i32) #2

declare dso_local i32 @lookup_remote_prune_config(%struct.TYPE_21__*, i32*, i32*) #2

declare dso_local i32 @dwim_refspecs(i32*, i32*, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_22__*) #2

declare dso_local i32 @git_remote_free(%struct.TYPE_21__*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
