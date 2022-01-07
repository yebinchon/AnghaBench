; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_ImageLoad.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_ImageLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i64, i64, i8*, i32* }

@MAX_IMAGES = common dso_local global i32 0, align 4
@images = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [80 x i8] c"MAX_IMAGES (%d) exceeded, there are too many image files referenced by the map.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@SYS_WRN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"WARNING: LoadJPGBuff: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".dds\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pf = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"_converted.tga\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"C:\\games\\quake3\\baseq3\\textures\\rad\\dds_converted.tga\00", align 1
@numImages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ImageLoad(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %8, align 8
  %10 = call i32 (...) @ImageInit()
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %240

20:                                               ; preds = %13
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcpy(i8* %21, i8* %22)
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %25 = call i32 @StripExtension(i8* %24)
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %27 = call %struct.TYPE_5__* @ImageFind(i8* %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %2, align 8
  br label %240

36:                                               ; preds = %20
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MAX_IMAGES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @images, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @images, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %5, align 8
  br label %58

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %37

58:                                               ; preds = %49, %37
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = icmp eq %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @MAX_IMAGES, align 4
  %63 = call i32 @Error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = call i8* @safe_malloc(i64 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %75 = call i32 @strcpy(i8* %73, i8* %74)
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %77 = call i32 @StripExtension(i8* %76)
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %79 = call i32 @strcat(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %81 = call i32 @vfsLoadFile(i8* %80, i8** %8, i32 0)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %64
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = call i32 @LoadTGABuffer(i8* %85, i8* %89, i32** %91, i64* %93, i64* %95)
  br label %196

97:                                               ; preds = %64
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %99 = call i32 @StripExtension(i8* %98)
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %101 = call i32 @strcat(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %103 = call i32 @vfsLoadFile(i8* %102, i8** %8, i32 0)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %97
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = call i32 @LoadPNGBuffer(i8* %107, i32 %108, i32** %110, i64* %112, i64* %114)
  br label %195

116:                                              ; preds = %97
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %118 = call i32 @StripExtension(i8* %117)
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %120 = call i32 @strcat(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %122 = call i32 @vfsLoadFile(i8* %121, i8** %8, i32 0)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %116
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = call i32 @LoadJPGBuff(i8* %126, i32 %127, i32** %129, i64* %131, i64* %133)
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %148

136:                                              ; preds = %125
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i32, i32* @SYS_WRN, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = call i32 @Sys_FPrintf(i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %141, %136, %125
  br label %194

149:                                              ; preds = %116
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %151 = call i32 @StripExtension(i8* %150)
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %153 = call i32 @strcat(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %155 = call i32 @vfsLoadFile(i8* %154, i8** %8, i32 0)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %193

158:                                              ; preds = %149
  %159 = load i8*, i8** %8, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = call i32 @LoadDDSBuffer(i8* %159, i32 %160, i32** %162, i64* %164, i64* %166)
  %168 = load i8*, i8** %8, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = call i32 @DDSGetInfo(i32* %169, i32* null, i32* null, i32* %9)
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @Sys_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %158
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %179 = call i32 @StripExtension(i8* %178)
  %180 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %181 = call i32 @strcat(i8* %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 5
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @WriteTGA(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32* %184, i64 %187, i64 %190)
  br label %192

192:                                              ; preds = %177, %158
  br label %193

193:                                              ; preds = %192, %149
  br label %194

194:                                              ; preds = %193, %148
  br label %195

195:                                              ; preds = %194, %106
  br label %196

196:                                              ; preds = %195, %84
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @free(i8* %197)
  %199 = load i32, i32* %7, align 4
  %200 = icmp sle i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp sle i64 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %201
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp sle i64 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %211, %206, %201, %196
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @free(i8* %219)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  store i8* null, i8** %222, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %240

223:                                              ; preds = %211
  %224 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %225 = call i64 @strlen(i8* %224)
  %226 = add nsw i64 %225, 1
  %227 = call i8* @safe_malloc(i64 %226)
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 4
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 4
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %234 = call i32 @strcpy(i8* %232, i8* %233)
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  %237 = load i32, i32* @numImages, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* @numImages, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %239, %struct.TYPE_5__** %2, align 8
  br label %240

240:                                              ; preds = %223, %216, %30, %19
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %241
}

declare dso_local i32 @ImageInit(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local %struct.TYPE_5__* @ImageFind(i8*) #1

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i8* @safe_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @vfsLoadFile(i8*, i8**, i32) #1

declare dso_local i32 @LoadTGABuffer(i8*, i8*, i32**, i64*, i64*) #1

declare dso_local i32 @LoadPNGBuffer(i8*, i32, i32**, i64*, i64*) #1

declare dso_local i32 @LoadJPGBuff(i8*, i32, i32**, i64*, i64*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i8*) #1

declare dso_local i32 @LoadDDSBuffer(i8*, i32, i32**, i64*, i64*) #1

declare dso_local i32 @DDSGetInfo(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @Sys_Printf(i8*, i32) #1

declare dso_local i32 @WriteTGA(i8*, i32*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
