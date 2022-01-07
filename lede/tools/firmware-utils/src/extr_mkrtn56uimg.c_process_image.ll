; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrtn56uimg.c_process_image.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrtn56uimg.c_process_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@IH_NMLEN = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: Can't open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: Can't stat %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Bad size: \22%s\22 is no valid image\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: Can't read %s: %s\0A\00", align 1
@IH_MAGIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"%s: Bad Magic Number: \22%s\22 is no valid image\0A\00", align 1
@FACTORY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"RT-N56U\00", align 1
@IH_PRODLEN = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_image(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %25 = load i32, i32* @IH_NMLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = call i32 @open(i8* %29, i32 %30, i32 438)
  store i32 %31, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i8* @strerror(i32 %37)
  %39 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i8* %38)
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %329

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @fstat(i32 %42, %struct.stat* %14)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @errno, align 4
  %50 = call i8* @strerror(i32 %49)
  %51 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48, i8* %50)
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %329

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %56, 72
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %329

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PROT_READ, align 4
  %68 = load i32, i32* @PROT_WRITE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MAP_SHARED, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @mmap(i32 0, i32 %66, i32 %69, i32 %70, i32 %71, i32 0)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %77, label %85

77:                                               ; preds = %64
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* @errno, align 4
  %82 = call i8* @strerror(i32 %81)
  %83 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %79, i8* %80, i8* %82)
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %329

85:                                               ; preds = %64
  %86 = load i8*, i8** %11, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %23, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @ntohl(i64 %90)
  %92 = load i64, i64* @IH_MAGIC, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %96, i8* %97)
  %99 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %329

100:                                              ; preds = %85
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @FACTORY, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* @IH_NMLEN, align 4
  %110 = call i32 @strncpy(i8* %28, i8* %108, i32 %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = bitcast i32* %134 to i8*
  %136 = load i32, i32* @IH_PRODLEN, align 4
  %137 = call i32 @strncpy(i8* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %104, %100
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %138
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @ntohl(i64 %148)
  %150 = add i64 %149, 72
  %151 = call i64 @htonl(i64 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i64 %151, i64* %155, align 8
  br label %156

156:                                              ; preds = %145, %138
  store i32 72, i32* %16, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @ntohl(i64 %161)
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %17, align 4
  %164 = load i8*, i8** %11, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr i8, i8* %164, i64 %166
  %168 = bitcast i8* %167 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %22, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, 72
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %18, align 4
  %179 = ashr i32 %178, 16
  %180 = add nsw i32 %179, 1
  %181 = shl i32 %180, 16
  store i32 %181, i32* %20, align 4
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* @FACTORY, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %156
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 4
  store i32 %187, i32* %21, align 4
  br label %191

188:                                              ; preds = %156
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %21, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = sub i64 %194, 72
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %19, align 4
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* @FACTORY, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr i8, i8* %201, i64 %203
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %18, align 4
  %207 = sub nsw i32 %205, %206
  %208 = call i32 @memset(i8* %204, i32 255, i32 %207)
  br label %209

209:                                              ; preds = %200, %191
  %210 = load i32, i32* %21, align 4
  %211 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %210, %212
  br i1 %213, label %214, label %259

214:                                              ; preds = %209
  %215 = load i8*, i8** %11, align 8
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @munmap(i8* %215, i32 %217)
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %21, align 4
  %221 = call i32 @ftruncate(i32 %219, i32 %220)
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* @PROT_READ, align 4
  %224 = load i32, i32* @PROT_WRITE, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @MAP_SHARED, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i64 @mmap(i32 0, i32 %222, i32 %225, i32 %226, i32 %227, i32 0)
  %229 = inttoptr i64 %228 to i8*
  store i8* %229, i8** %11, align 8
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* @FACTORY, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %258

233:                                              ; preds = %214
  %234 = load i8*, i8** %11, align 8
  %235 = load i32, i32* %21, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr i8, i8* %234, i64 %236
  %238 = getelementptr i8, i8* %237, i64 -4
  %239 = bitcast i8* %238 to i32*
  store i32 222, i32* %239, align 4
  %240 = load i8*, i8** %11, align 8
  %241 = load i32, i32* %21, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr i8, i8* %240, i64 %242
  %244 = getelementptr i8, i8* %243, i64 -3
  %245 = bitcast i8* %244 to i32*
  store i32 173, i32* %245, align 4
  %246 = load i8*, i8** %11, align 8
  %247 = load i32, i32* %21, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr i8, i8* %246, i64 %248
  %250 = getelementptr i8, i8* %249, i64 -2
  %251 = bitcast i8* %250 to i32*
  store i32 192, i32* %251, align 4
  %252 = load i8*, i8** %11, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr i8, i8* %252, i64 %254
  %256 = getelementptr i8, i8* %255, i64 -1
  %257 = bitcast i8* %256 to i32*
  store i32 222, i32* %257, align 4
  br label %258

258:                                              ; preds = %233, %214
  br label %259

259:                                              ; preds = %258, %209
  %260 = load i64, i64* %7, align 8
  %261 = load i64, i64* @FACTORY, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %297

263:                                              ; preds = %259
  %264 = load i8*, i8** %11, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr i8, i8* %264, i64 %266
  %268 = bitcast i8* %267 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %268, %struct.TYPE_14__** %23, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %270 = load i8*, i8** %11, align 8
  %271 = call i32 @memcpy(%struct.TYPE_14__* %269, i8* %270, i32 72)
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* @IH_NMLEN, align 4
  %277 = call i32 @strncpy(i8* %275, i8* %28, i32 %276)
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %279 = load i8*, i8** %11, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr i8, i8* %279, i64 %281
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %16, align 4
  %285 = sub nsw i32 %283, %284
  %286 = call i32 @calc_crc(%struct.TYPE_14__* %278, i8* %282, i32 %285)
  %287 = load i8*, i8** %11, align 8
  %288 = bitcast i8* %287 to %struct.TYPE_14__*
  %289 = load i8*, i8** %11, align 8
  %290 = load i32, i32* %16, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr i8, i8* %289, i64 %291
  %293 = load i32, i32* %21, align 4
  %294 = load i32, i32* %16, align 4
  %295 = sub nsw i32 %293, %294
  %296 = call i32 @calc_crc(%struct.TYPE_14__* %288, i8* %292, i32 %295)
  br label %308

297:                                              ; preds = %259
  %298 = load i8*, i8** %11, align 8
  %299 = bitcast i8* %298 to %struct.TYPE_14__*
  %300 = load i8*, i8** %11, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr i8, i8* %300, i64 %302
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %16, align 4
  %306 = sub nsw i32 %304, %305
  %307 = call i32 @calc_crc(%struct.TYPE_14__* %299, i8* %303, i32 %306)
  br label %308

308:                                              ; preds = %297, %263
  %309 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %21, align 4
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load i8*, i8** %11, align 8
  %315 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @munmap(i8* %314, i32 %316)
  br label %322

318:                                              ; preds = %308
  %319 = load i8*, i8** %11, align 8
  %320 = load i32, i32* %21, align 4
  %321 = call i32 @munmap(i8* %319, i32 %320)
  br label %322

322:                                              ; preds = %318, %313
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %21, align 4
  %325 = call i32 @ftruncate(i32 %323, i32 %324)
  %326 = load i32, i32* %8, align 4
  %327 = call i32 @close(i32 %326)
  %328 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %328, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %329

329:                                              ; preds = %322, %94, %77, %58, %45, %33
  %330 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %330)
  %331 = load i32, i32* %4, align 4
  ret i32 %331
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @ntohl(i64) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @htonl(i64) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @munmap(i8*, i32) #2

declare dso_local i32 @ftruncate(i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i8*, i32) #2

declare dso_local i32 @calc_crc(%struct.TYPE_14__*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
