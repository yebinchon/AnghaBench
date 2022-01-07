; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/contrib/minizip/extr_zip.c_Write_LocalFileHeader.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/contrib/minizip/extr_zip.c_Write_LocalFileHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }

@LOCALHEADERMAGIC = common dso_local global i64 0, align 8
@ZIP_OK = common dso_local global i32 0, align 4
@ZIP_ERRNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Write_LocalFileHeader(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* @LOCALHEADERMAGIC, align 8
  %26 = trunc i64 %25 to i16
  %27 = call i32 @zip64local_putValue(i32* %21, i32 %24, i16 signext %26, i32 4)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ZIP_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @zip64local_putValue(i32* %39, i32 %42, i16 signext 45, i32 2)
  store i32 %43, i32* %9, align 4
  br label %51

44:                                               ; preds = %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @zip64local_putValue(i32* %46, i32 %49, i16 signext 20, i32 2)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %44, %37
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ZIP_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i16
  %67 = call i32 @zip64local_putValue(i32* %58, i32 %61, i16 signext %66, i32 2)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %56, %52
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ZIP_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i16
  %83 = call i32 @zip64local_putValue(i32* %74, i32 %77, i16 signext %82, i32 2)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %72, %68
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @ZIP_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i16
  %99 = call i32 @zip64local_putValue(i32* %90, i32 %93, i16 signext %98, i32 4)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %88, %84
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @ZIP_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @zip64local_putValue(i32* %106, i32 %109, i16 signext 0, i32 4)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %104, %100
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @ZIP_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %111
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @zip64local_putValue(i32* %123, i32 %126, i16 signext -1, i32 4)
  store i32 %127, i32* %9, align 4
  br label %135

128:                                              ; preds = %115
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @zip64local_putValue(i32* %130, i32 %133, i16 signext 0, i32 4)
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %128, %121
  br label %136

136:                                              ; preds = %135, %111
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @ZIP_OK, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %136
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @zip64local_putValue(i32* %148, i32 %151, i16 signext -1, i32 4)
  store i32 %152, i32* %9, align 4
  br label %160

153:                                              ; preds = %140
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @zip64local_putValue(i32* %155, i32 %158, i16 signext 0, i32 4)
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %153, %146
  br label %161

161:                                              ; preds = %160, %136
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @ZIP_OK, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %10, align 8
  %172 = trunc i64 %171 to i16
  %173 = call i32 @zip64local_putValue(i32* %167, i32 %170, i16 signext %172, i32 2)
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %165, %161
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i64, i64* %11, align 8
  %182 = add nsw i64 %181, 20
  store i64 %182, i64* %11, align 8
  br label %183

183:                                              ; preds = %180, %174
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @ZIP_OK, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = trunc i64 %193 to i16
  %195 = call i32 @zip64local_putValue(i32* %189, i32 %192, i16 signext %194, i32 2)
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %187, %183
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* @ZIP_OK, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %218

200:                                              ; preds = %196
  %201 = load i64, i64* %10, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = load i64, i64* %10, align 8
  %212 = call i64 @ZWRITE64(i32 %206, i32 %209, i8* %210, i64 %211)
  %213 = load i64, i64* %10, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %203
  %216 = load i32, i32* @ZIP_ERRNO, align 4
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %215, %203
  br label %218

218:                                              ; preds = %217, %200, %196
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @ZIP_OK, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %240

222:                                              ; preds = %218
  %223 = load i64, i64* %7, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %222
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i8*, i8** %8, align 8
  %233 = load i64, i64* %7, align 8
  %234 = call i64 @ZWRITE64(i32 %228, i32 %231, i8* %232, i64 %233)
  %235 = load i64, i64* %7, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %225
  %238 = load i32, i32* @ZIP_ERRNO, align 4
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %237, %225
  br label %240

240:                                              ; preds = %239, %222, %218
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @ZIP_OK, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %289

244:                                              ; preds = %240
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %289

250:                                              ; preds = %244
  store i16 1, i16* %12, align 2
  store i16 16, i16* %13, align 2
  store i16 0, i16* %14, align 2
  store i16 0, i16* %15, align 2
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @ZTELL64(i32 %253, i32 %256)
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i16, i16* %12, align 2
  %267 = call i32 @zip64local_putValue(i32* %262, i32 %265, i16 signext %266, i32 2)
  store i32 %267, i32* %9, align 4
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i16, i16* %13, align 2
  %274 = call i32 @zip64local_putValue(i32* %269, i32 %272, i16 signext %273, i32 2)
  store i32 %274, i32* %9, align 4
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i16, i16* %15, align 2
  %281 = call i32 @zip64local_putValue(i32* %276, i32 %279, i16 signext %280, i32 8)
  store i32 %281, i32* %9, align 4
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i16, i16* %14, align 2
  %288 = call i32 @zip64local_putValue(i32* %283, i32 %286, i16 signext %287, i32 8)
  store i32 %288, i32* %9, align 4
  br label %289

289:                                              ; preds = %250, %244, %240
  %290 = load i32, i32* %9, align 4
  ret i32 %290
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zip64local_putValue(i32*, i32, i16 signext, i32) #1

declare dso_local i64 @ZWRITE64(i32, i32, i8*, i64) #1

declare dso_local i32 @ZTELL64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
