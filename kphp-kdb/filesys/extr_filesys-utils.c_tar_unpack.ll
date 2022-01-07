; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_unpack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_tar_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.tar_unpack_dir_mtime_entry** }
%struct.tar_unpack_dir_mtime_entry = type { i8*, %struct.stat, %struct.tar_unpack_dir_mtime_entry* }
%struct.stat = type { i32, i32, i8*, i8*, i8*, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"././@LongLink\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s %07o %d %d %lld %u %c\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"open (%s) failed. %m\0A\00", align 1
@TAR_UNPACK_ERR_OPEN = common dso_local global i32 0, align 4
@TAR_UNPACK_ERR_COPY_ATTRS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"symlink (%s, %s) fail. %m\0A\00", align 1
@TAR_UNPACK_ERR_SYMLINK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"mkdir (%s, %07o) fail. %m\0A\00", align 1
@TAR_UNPACK_ERR_MKDIR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"unimplemented file type %c\0A\00", align 1
@Z_OK = common dso_local global i64 0, align 8
@MAX_DIR_DEPTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"lcopy_attrs (%s) returns error code %d. %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tar_unpack(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i32, align 4
  %13 = alloca [512 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8, align 1
  %27 = alloca %struct.stat, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca %struct.tar_unpack_dir_mtime_entry*, align 8
  %35 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %5, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %6, align 8
  %40 = load i32, i32* @PATH_MAX, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dyn_mark(i32 %43)
  %45 = call i32 @tar_unpack_dir_mtime_init(%struct.TYPE_4__* %11)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @gzdopen(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %12, align 4
  store i32 16777216, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i8* @zmalloc(i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %326, %2
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %57 = call i32 @gzread(i32 %55, i8* %56, i32 512)
  %58 = icmp eq i32 %57, 512
  br i1 %58, label %59, label %327

59:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %63 = call i32 @tar_unpack_check_header(i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %327

66:                                               ; preds = %59
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 156
  %68 = load i8, i8* %67, align 4
  store i8 %68, i8* %19, align 1
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %70 = call i8* @get_oct(i8* %69, i32 124, i32 11)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %20, align 4
  br label %72

72:                                               ; preds = %122, %66
  %73 = load i8, i8* %19, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 75
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %19, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 76
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ true, %72 ], [ %79, %76 ]
  br i1 %81, label %82, label %136

82:                                               ; preds = %80
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %84 = call i32 @memcmp(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %89, 511
  %91 = and i32 %90, -512
  store i32 %91, i32* %21, align 4
  %92 = load i8, i8* %19, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 75
  br i1 %94, label %95, label %104

95:                                               ; preds = %82
  store i32 1, i32* %17, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i8*, i8** %15, align 8
  %99 = load i32, i32* %21, align 4
  %100 = call i32 @gzread(i32 %97, i8* %98, i32 %99)
  %101 = icmp eq i32 %96, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %122

104:                                              ; preds = %82
  %105 = load i8, i8* %19, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 76
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  store i32 1, i32* %18, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* @PATH_MAX, align 4
  %111 = icmp sle i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %21, align 4
  %117 = call i32 @gzread(i32 %115, i8* %42, i32 %116)
  %118 = icmp eq i32 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  br label %121

121:                                              ; preds = %108, %104
  br label %122

122:                                              ; preds = %121, %95
  %123 = load i32, i32* %12, align 4
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %125 = call i32 @gzread(i32 %123, i8* %124, i32 512)
  %126 = icmp eq i32 %125, 512
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %130 = call i32 @tar_unpack_check_header(i8* %129)
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 156
  %132 = load i8, i8* %131, align 4
  store i8 %132, i8* %19, align 1
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %134 = call i8* @get_oct(i8* %133, i32 124, i32 11)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %20, align 4
  br label %72

136:                                              ; preds = %80
  %137 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %138 = call i8* @get_oct(i8* %137, i32 100, i32 7)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %22, align 4
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %141 = call i8* @get_oct(i8* %140, i32 108, i32 7)
  store i8* %141, i8** %23, align 8
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %143 = call i8* @get_oct(i8* %142, i32 116, i32 7)
  store i8* %143, i8** %24, align 8
  %144 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %145 = call i8* @get_oct(i8* %144, i32 136, i32 11)
  store i8* %145, i8** %25, align 8
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %136
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %150 = getelementptr inbounds i8, i8* %149, i64 345
  %151 = call i32 @memcpy(i8* %42, i8* %150, i32 167)
  %152 = getelementptr inbounds i8, i8* %42, i64 0
  %153 = load i8, i8* %152, align 16
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %148
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 100
  %159 = load i8, i8* %158, align 4
  store i8 %159, i8* %26, align 1
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 100
  store i8 0, i8* %160, align 4
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %162 = call i32 @strcat(i8* %42, i8* %161)
  %163 = load i8, i8* %26, align 1
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 100
  store i8 %163, i8* %164, align 4
  br label %165

165:                                              ; preds = %157, %136
  %166 = load i32, i32* @PATH_MAX, align 4
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 @snprintf(i8* %39, i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %167, i8* %42)
  %169 = load i32, i32* @PATH_MAX, align 4
  %170 = icmp slt i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32, i32* %22, align 4
  %174 = load i8*, i8** %23, align 8
  %175 = load i8*, i8** %24, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = load i8*, i8** %25, align 8
  %179 = ptrtoint i8* %178 to i32
  %180 = load i8, i8* %19, align 1
  %181 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %39, i32 %173, i8* %174, i8* %175, i64 %177, i32 %179, i8 signext %180)
  %182 = load i32, i32* %22, align 4
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 0
  store i32 %182, i32* %183, align 8
  %184 = load i8*, i8** %23, align 8
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 5
  store i8* %184, i8** %185, align 8
  %186 = load i8*, i8** %24, align 8
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 4
  store i8* %186, i8** %187, align 8
  %188 = load i32, i32* %20, align 4
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 1
  store i32 %188, i32* %189, align 4
  %190 = load i8*, i8** %25, align 8
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 2
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = call i32 @strlen(i8* %39)
  store i32 %193, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 -1, i32* %30, align 4
  %194 = load i8, i8* %19, align 1
  %195 = sext i8 %194 to i32
  switch i32 %195, label %321 [
    i32 48, label %196
    i32 50, label %260
    i32 53, label %286
  ]

196:                                              ; preds = %165
  store i32 0, i32* %29, align 4
  %197 = load i32, i32* @O_CREAT, align 4
  %198 = load i32, i32* @O_TRUNC, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @O_WRONLY, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @O_EXCL, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %22, align 4
  %205 = call i32 @open(i8* %39, i32 %203, i32 %204)
  store i32 %205, i32* %30, align 4
  %206 = load i32, i32* %30, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %196
  %209 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %210 = load i32, i32* @TAR_UNPACK_ERR_OPEN, align 4
  store i32 %210, i32* %9, align 4
  br label %328

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %225, %211
  %213 = load i32, i32* %29, align 4
  %214 = load i32, i32* %20, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %248

216:                                              ; preds = %212
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %29, align 4
  %219 = sub nsw i32 %217, %218
  store i32 %219, i32* %31, align 4
  %220 = load i32, i32* %31, align 4
  %221 = load i32, i32* %14, align 4
  %222 = icmp sgt i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = load i32, i32* %14, align 4
  store i32 %224, i32* %31, align 4
  br label %225

225:                                              ; preds = %223, %216
  %226 = load i32, i32* %31, align 4
  %227 = add nsw i32 %226, 511
  %228 = and i32 %227, -512
  store i32 %228, i32* %32, align 4
  %229 = load i32, i32* %32, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i8*, i8** %15, align 8
  %232 = load i32, i32* %32, align 4
  %233 = call i32 @gzread(i32 %230, i8* %231, i32 %232)
  %234 = icmp eq i32 %229, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  %237 = load i32, i32* %30, align 4
  %238 = load i8*, i8** %15, align 8
  %239 = load i32, i32* %31, align 4
  %240 = call i32 @write(i32 %237, i8* %238, i32 %239)
  %241 = load i32, i32* %31, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load i32, i32* %32, align 4
  %246 = load i32, i32* %29, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %29, align 4
  br label %212

248:                                              ; preds = %212
  %249 = load i32, i32* %30, align 4
  %250 = call i32 @close(i32 %249)
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = call i32 @lcopy_attrs(i8* %39, %struct.stat* %27)
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = load i32, i32* @TAR_UNPACK_ERR_COPY_ATTRS, align 4
  store i32 %258, i32* %9, align 4
  br label %328

259:                                              ; preds = %248
  br label %326

260:                                              ; preds = %165
  %261 = load i32, i32* %22, align 4
  %262 = call i32 @S_ISLNK(i32 %261)
  %263 = call i32 @assert(i32 %262)
  %264 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 257
  %265 = load i8, i8* %264, align 1
  store i8 %265, i8* %26, align 1
  %266 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 257
  store i8 0, i8* %266, align 1
  %267 = load i32, i32* %17, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %260
  %270 = load i8*, i8** %15, align 8
  br label %274

271:                                              ; preds = %260
  %272 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %273 = getelementptr inbounds i8, i8* %272, i64 157
  br label %274

274:                                              ; preds = %271, %269
  %275 = phi i8* [ %270, %269 ], [ %273, %271 ]
  store i8* %275, i8** %33, align 8
  %276 = load i8*, i8** %33, align 8
  %277 = call i32 @symlink(i8* %276, i8* %39)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load i8*, i8** %33, align 8
  %281 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %280, i8* %39)
  %282 = load i32, i32* @TAR_UNPACK_ERR_SYMLINK, align 4
  store i32 %282, i32* %9, align 4
  br label %328

283:                                              ; preds = %274
  %284 = load i8, i8* %26, align 1
  %285 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 257
  store i8 %284, i8* %285, align 1
  br label %326

286:                                              ; preds = %165
  %287 = load i32, i32* %22, align 4
  %288 = call i32 @S_ISDIR(i32 %287)
  %289 = call i32 @assert(i32 %288)
  %290 = load i32, i32* %28, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %286
  %293 = load i32, i32* %28, align 4
  %294 = sub nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %39, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 47
  br label %300

300:                                              ; preds = %292, %286
  %301 = phi i1 [ false, %286 ], [ %299, %292 ]
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load i32, i32* %28, align 4
  %305 = sub nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %39, i64 %306
  store i8 0, i8* %307, align 1
  %308 = call i32 @strlen(i8* %42)
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %42, i64 %310
  store i8 0, i8* %311, align 1
  %312 = load i32, i32* %22, align 4
  %313 = call i32 @mkdir(i8* %39, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %300
  %316 = load i32, i32* %22, align 4
  %317 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %39, i32 %316)
  %318 = load i32, i32* @TAR_UNPACK_ERR_MKDIR, align 4
  store i32 %318, i32* %9, align 4
  br label %328

319:                                              ; preds = %300
  %320 = call i32 @tar_unpack_dir_mtime_add(%struct.TYPE_4__* %11, i8* %42, %struct.stat* %27)
  br label %326

321:                                              ; preds = %165
  %322 = load i8, i8* %19, align 1
  %323 = sext i8 %322 to i32
  %324 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %323)
  %325 = call i32 @assert(i32 0)
  br label %326

326:                                              ; preds = %321, %319, %283, %259
  br label %54

327:                                              ; preds = %65, %54
  br label %328

328:                                              ; preds = %327, %315, %279, %257, %208
  %329 = load i32, i32* %12, align 4
  %330 = call i64 @gzclose(i32 %329)
  %331 = load i64, i64* @Z_OK, align 8
  %332 = icmp eq i64 %330, %331
  %333 = zext i1 %332 to i32
  %334 = call i32 @assert(i32 %333)
  %335 = load i32, i32* %9, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %382, label %337

337:                                              ; preds = %328
  %338 = load i32, i32* @MAX_DIR_DEPTH, align 4
  %339 = sub nsw i32 %338, 1
  store i32 %339, i32* %8, align 4
  br label %340

340:                                              ; preds = %378, %337
  %341 = load i32, i32* %8, align 4
  %342 = icmp sge i32 %341, 0
  br i1 %342, label %343, label %381

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %345 = load %struct.tar_unpack_dir_mtime_entry**, %struct.tar_unpack_dir_mtime_entry*** %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %345, i64 %347
  %349 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %348, align 8
  store %struct.tar_unpack_dir_mtime_entry* %349, %struct.tar_unpack_dir_mtime_entry** %34, align 8
  br label %350

350:                                              ; preds = %373, %343
  %351 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %34, align 8
  %352 = icmp ne %struct.tar_unpack_dir_mtime_entry* %351, null
  br i1 %352, label %353, label %377

353:                                              ; preds = %350
  %354 = load i32, i32* @PATH_MAX, align 4
  %355 = load i8*, i8** %4, align 8
  %356 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %34, align 8
  %357 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry, %struct.tar_unpack_dir_mtime_entry* %356, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @snprintf(i8* %39, i32 %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %355, i8* %358)
  %360 = load i32, i32* @PATH_MAX, align 4
  %361 = icmp slt i32 %359, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @assert(i32 %362)
  %364 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %34, align 8
  %365 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry, %struct.tar_unpack_dir_mtime_entry* %364, i32 0, i32 1
  %366 = call i32 @lcopy_attrs(i8* %39, %struct.stat* %365)
  store i32 %366, i32* %35, align 4
  %367 = load i32, i32* %35, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %353
  %370 = load i32, i32* %35, align 4
  %371 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %39, i32 %370)
  store i32 -2, i32* %9, align 4
  br label %383

372:                                              ; preds = %353
  br label %373

373:                                              ; preds = %372
  %374 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %34, align 8
  %375 = getelementptr inbounds %struct.tar_unpack_dir_mtime_entry, %struct.tar_unpack_dir_mtime_entry* %374, i32 0, i32 2
  %376 = load %struct.tar_unpack_dir_mtime_entry*, %struct.tar_unpack_dir_mtime_entry** %375, align 8
  store %struct.tar_unpack_dir_mtime_entry* %376, %struct.tar_unpack_dir_mtime_entry** %34, align 8
  br label %350

377:                                              ; preds = %350
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %8, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %8, align 4
  br label %340

381:                                              ; preds = %340
  br label %382

382:                                              ; preds = %381, %328
  br label %383

383:                                              ; preds = %382, %369
  %384 = load i32, i32* %10, align 4
  %385 = call i32 @dyn_release(i32 %384)
  %386 = load i32, i32* %9, align 4
  %387 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %387)
  ret i32 %386
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dyn_mark(i32) #2

declare dso_local i32 @tar_unpack_dir_mtime_init(%struct.TYPE_4__*) #2

declare dso_local i32 @gzdopen(i32, i8*) #2

declare dso_local i8* @zmalloc(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @gzread(i32, i8*, i32) #2

declare dso_local i32 @tar_unpack_check_header(i8*) #2

declare dso_local i8* @get_oct(i8*, i32, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32, i8*, i8*, i64, i32, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @lcopy_attrs(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISLNK(i32) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @tar_unpack_dir_mtime_add(%struct.TYPE_4__*, i8*, %struct.stat*) #2

declare dso_local i64 @gzclose(i32) #2

declare dso_local i32 @dyn_release(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
