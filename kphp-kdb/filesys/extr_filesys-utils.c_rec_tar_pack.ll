; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_rec_tar_pack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_rec_tar_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }
%struct.TYPE_6__ = type { i8*, %struct.stat, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [26 x i8] c"rec_tar_pack (path = %s)\0A\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@TAR_PACK_ERR_PATH_TOO_LONG = common dso_local global i32 0, align 4
@TAR_PACK_ERR_WRITE_HEADER = common dso_local global i32 0, align 4
@TAR_PACK_ERR_GZWRITE = common dso_local global i32 0, align 4
@TAR_PACK_ERR_FILL_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c".filesys-xfs-engine.pid\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@TAR_PACK_ERR_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.stat*)* @rec_tar_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_tar_pack(i32 %0, i8* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [512 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca %struct.TYPE_6__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @PATH_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %10, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %11, align 8
  %37 = load i32, i32* @PATH_MAX, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %12, align 8
  %40 = load %struct.stat*, %struct.stat** %9, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @S_ISLNK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %135

45:                                               ; preds = %4
  %46 = load i32, i32* @PATH_MAX, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load i32, i32* @PATH_MAX, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @TAR_PACK_ERR_PATH_TOO_LONG, align 4
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

54:                                               ; preds = %45
  %55 = load i32, i32* @PATH_MAX, align 4
  %56 = call i32 @readlink(i8* %36, i8* %39, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @PATH_MAX, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %54
  store i32 -4, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %39, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %15, align 4
  %69 = icmp sgt i32 %68, 100
  br i1 %69, label %70, label %114

70:                                               ; preds = %64
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @tar_fill_longlink_header(i8* %71, i32 %72, i8 signext 75)
  %74 = load i32, i32* %6, align 4
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %76 = call i64 @tar_write_header(i32 %74, i8* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @TAR_PACK_ERR_WRITE_HEADER, align 4
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

80:                                               ; preds = %70
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %110, %80
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %81
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp sgt i32 %91, 512
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 512, i32* %17, align 4
  br label %94

94:                                               ; preds = %93, %86
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %96 = call i32 @memset(i8* %95, i32 0, i32 512)
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %39, i64 %99
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @memcpy(i8* %97, i8* %100, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %105 = call i32 @gzwrite(i32 %103, i8* %104, i32 512)
  %106 = icmp ne i32 %105, 512
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* @TAR_PACK_ERR_GZWRITE, align 4
  store i32 %108, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 512
  store i32 %112, i32* %16, align 4
  br label %81

113:                                              ; preds = %81
  store i32 100, i32* %15, align 4
  br label %114

114:                                              ; preds = %113, %64
  %115 = load i32, i32* %6, align 4
  %116 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %117 = load %struct.stat*, %struct.stat** %9, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i64 @tar_fill_header(i32 %115, i8* %116, %struct.stat* %117, i8* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @TAR_PACK_ERR_FILL_HEADER, align 4
  store i32 %122, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

123:                                              ; preds = %114
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %125 = getelementptr inbounds i8, i8* %124, i64 157
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @memcpy(i8* %125, i8* %39, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %130 = call i64 @tar_write_header(i32 %128, i8* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* @TAR_PACK_ERR_WRITE_HEADER, align 4
  store i32 %133, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

134:                                              ; preds = %123
  br label %351

135:                                              ; preds = %4
  %136 = load %struct.stat*, %struct.stat** %9, align 8
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @S_ISDIR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %250

141:                                              ; preds = %135
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %141
  %147 = load i32, i32* @PATH_MAX, align 4
  %148 = zext i32 %147 to i64
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %18, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %19, align 8
  %151 = load i32, i32* @PATH_MAX, align 4
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %150, i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* @PATH_MAX, align 4
  %155 = icmp slt i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %160 = load %struct.stat*, %struct.stat** %9, align 8
  %161 = call i64 @tar_fill_header(i32 %158, i8* %159, %struct.stat* %160, i8* %150)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %146
  %164 = load i32, i32* @TAR_PACK_ERR_FILL_HEADER, align 4
  store i32 %164, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %173

165:                                              ; preds = %146
  %166 = load i32, i32* %6, align 4
  %167 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %168 = call i64 @tar_write_header(i32 %166, i8* %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @TAR_PACK_ERR_WRITE_HEADER, align 4
  store i32 %171, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %173

172:                                              ; preds = %165
  store i32 0, i32* %14, align 4
  br label %173

173:                                              ; preds = %172, %170, %163
  %174 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %14, align 4
  switch i32 %175, label %352 [
    i32 0, label %176
  ]

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %176, %141
  %178 = load i32, i32* @PATH_MAX, align 4
  %179 = load i8*, i8** %7, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %179, i8* %180)
  %182 = load i32, i32* @PATH_MAX, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @TAR_PACK_ERR_PATH_TOO_LONG, align 4
  store i32 %185, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

186:                                              ; preds = %177
  %187 = call i32 @getdir(i8* %36, %struct.TYPE_6__** %20, i32 1, i32 1)
  store i32 %187, i32* %22, align 4
  %188 = load i32, i32* %22, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

191:                                              ; preds = %186
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %198 = call %struct.TYPE_6__* @remove_file_from_list(%struct.TYPE_6__* %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_6__* %198, %struct.TYPE_6__** %20, align 8
  br label %199

199:                                              ; preds = %196, %191
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %200, %struct.TYPE_6__** %21, align 8
  br label %201

201:                                              ; preds = %243, %199
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %203 = icmp ne %struct.TYPE_6__* %202, null
  br i1 %203, label %204, label %247

204:                                              ; preds = %201
  %205 = load i8*, i8** %8, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = icmp ne i8 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = load i32, i32* @PATH_MAX, align 4
  %211 = load i8*, i8** %8, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %211, i8* %214)
  %216 = load i32, i32* @PATH_MAX, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* @TAR_PACK_ERR_PATH_TOO_LONG, align 4
  store i32 %219, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

220:                                              ; preds = %209
  br label %232

221:                                              ; preds = %204
  %222 = load i32, i32* @PATH_MAX, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %225)
  %227 = load i32, i32* @PATH_MAX, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = load i32, i32* @TAR_PACK_ERR_PATH_TOO_LONG, align 4
  store i32 %230, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %231, %220
  %233 = load i32, i32* %6, align 4
  %234 = load i8*, i8** %7, align 8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = call i32 @rec_tar_pack(i32 %233, i8* %234, i8* %36, %struct.stat* %236)
  store i32 %237, i32* %23, align 4
  %238 = load i32, i32* %23, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %232
  %241 = load i32, i32* %23, align 4
  store i32 %241, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  store %struct.TYPE_6__* %246, %struct.TYPE_6__** %21, align 8
  br label %201

247:                                              ; preds = %201
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %249 = call i32 @free_filelist(%struct.TYPE_6__* %248)
  br label %350

250:                                              ; preds = %135
  %251 = load i32, i32* @PATH_MAX, align 4
  %252 = load i8*, i8** %7, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %252, i8* %253)
  %255 = load i32, i32* @PATH_MAX, align 4
  %256 = icmp sge i32 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i32, i32* @TAR_PACK_ERR_PATH_TOO_LONG, align 4
  store i32 %258, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

259:                                              ; preds = %250
  %260 = load i32, i32* %6, align 4
  %261 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %262 = load %struct.stat*, %struct.stat** %9, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = call i64 @tar_fill_header(i32 %260, i8* %261, %struct.stat* %262, i8* %263)
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = load i32, i32* @TAR_PACK_ERR_FILL_HEADER, align 4
  store i32 %267, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

268:                                              ; preds = %259
  %269 = load i32, i32* %6, align 4
  %270 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %271 = call i64 @tar_write_header(i32 %269, i8* %270)
  %272 = icmp slt i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* @TAR_PACK_ERR_WRITE_HEADER, align 4
  store i32 %274, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

275:                                              ; preds = %268
  %276 = load i32, i32* @O_RDONLY, align 4
  %277 = call i32 @open(i8* %36, i32 %276)
  store i32 %277, i32* %24, align 4
  %278 = load i32, i32* %24, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = load i32, i32* @TAR_PACK_ERR_OPEN, align 4
  store i32 %281, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

282:                                              ; preds = %275
  store i32 16777216, i32* %25, align 4
  %283 = load i32, i32* %26, align 4
  %284 = call i32 @dyn_mark(i32 %283)
  %285 = load i32, i32* %25, align 4
  %286 = call i8* @zmalloc(i32 %285)
  store i8* %286, i8** %27, align 8
  store i64 0, i64* %28, align 8
  br label %287

287:                                              ; preds = %340, %282
  %288 = load i64, i64* %28, align 8
  %289 = load %struct.stat*, %struct.stat** %9, align 8
  %290 = getelementptr inbounds %struct.stat, %struct.stat* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %293, label %345

293:                                              ; preds = %287
  %294 = load %struct.stat*, %struct.stat** %9, align 8
  %295 = getelementptr inbounds %struct.stat, %struct.stat* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %28, align 8
  %298 = sub nsw i64 %296, %297
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %29, align 4
  %300 = load i32, i32* %29, align 4
  %301 = load i32, i32* %25, align 4
  %302 = icmp sgt i32 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %293
  %304 = load i32, i32* %25, align 4
  store i32 %304, i32* %29, align 4
  br label %305

305:                                              ; preds = %303, %293
  %306 = load i32, i32* %29, align 4
  %307 = add nsw i32 %306, 511
  %308 = and i32 %307, -512
  store i32 %308, i32* %30, align 4
  %309 = load i32, i32* %29, align 4
  %310 = load i32, i32* %24, align 4
  %311 = load i8*, i8** %27, align 8
  %312 = load i32, i32* %29, align 4
  %313 = call i32 @read(i32 %310, i8* %311, i32 %312)
  %314 = icmp eq i32 %309, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @assert(i32 %315)
  %317 = load i32, i32* %30, align 4
  %318 = load i32, i32* %29, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %305
  %321 = load i8*, i8** %27, align 8
  %322 = load i32, i32* %29, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i32, i32* %30, align 4
  %326 = load i32, i32* %29, align 4
  %327 = sub nsw i32 %325, %326
  %328 = call i32 @memset(i8* %324, i32 0, i32 %327)
  br label %329

329:                                              ; preds = %320, %305
  %330 = load i32, i32* %6, align 4
  %331 = load i8*, i8** %27, align 8
  %332 = load i32, i32* %30, align 4
  %333 = call i32 @gzwrite(i32 %330, i8* %331, i32 %332)
  %334 = load i32, i32* %30, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %329
  %337 = load i32, i32* %26, align 4
  %338 = call i32 @dyn_release(i32 %337)
  %339 = load i32, i32* @TAR_PACK_ERR_GZWRITE, align 4
  store i32 %339, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

340:                                              ; preds = %329
  %341 = load i32, i32* %30, align 4
  %342 = sext i32 %341 to i64
  %343 = load i64, i64* %28, align 8
  %344 = add nsw i64 %343, %342
  store i64 %344, i64* %28, align 8
  br label %287

345:                                              ; preds = %287
  %346 = load i32, i32* %26, align 4
  %347 = call i32 @dyn_release(i32 %346)
  %348 = load i32, i32* %24, align 4
  %349 = call i32 @close(i32 %348)
  br label %350

350:                                              ; preds = %345, %247
  br label %351

351:                                              ; preds = %350, %134
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %352

352:                                              ; preds = %351, %336, %280, %273, %266, %257, %240, %229, %218, %190, %184, %173, %132, %121, %107, %78, %63, %52
  %353 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %353)
  %354 = load i32, i32* %5, align 4
  ret i32 %354
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @tar_fill_longlink_header(i8*, i32, i8 signext) #1

declare dso_local i64 @tar_write_header(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @gzwrite(i32, i8*, i32) #1

declare dso_local i64 @tar_fill_header(i32, i8*, %struct.stat*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @getdir(i8*, %struct.TYPE_6__**, i32, i32) #1

declare dso_local %struct.TYPE_6__* @remove_file_from_list(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @free_filelist(%struct.TYPE_6__*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @dyn_release(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
