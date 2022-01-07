; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dec_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dec_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xz_buf = type { i64, i64, i32* }

@XZ_OK = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4
@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_CHECK_CRC32 = common dso_local global i32 0, align 4
@STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*, %struct.xz_buf*)* @dec_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_main(%struct.xz_dec* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xz_dec*, align 8
  %5 = alloca %struct.xz_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.xz_dec* %0, %struct.xz_dec** %4, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %5, align 8
  %7 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %8 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %11 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %2, %277
  %13 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %14 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %277 [
    i32 128, label %16
    i32 134, label %34
    i32 136, label %89
    i32 133, label %107
    i32 135, label %119
    i32 137, label %159
    i32 132, label %178
    i32 130, label %190
    i32 131, label %251
    i32 129, label %267
  ]

16:                                               ; preds = %12
  %17 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %18 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %19 = call i32 @fill_temp(%struct.xz_dec* %17, %struct.xz_buf* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @XZ_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %278

23:                                               ; preds = %16
  %24 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %25 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %24, i32 0, i32 1
  store i32 134, i32* %25, align 8
  %26 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %27 = call i32 @dec_stream_header(%struct.xz_dec* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @XZ_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %278

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %12, %33
  %35 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %36 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %39 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @XZ_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %278

44:                                               ; preds = %34
  %45 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %46 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %49 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %56 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %60 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %62 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %61, i32 0, i32 1
  store i32 132, i32* %62, align 8
  br label %277

63:                                               ; preds = %44
  %64 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %65 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %68 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 %72, 4
  %74 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %75 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %78 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %82 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %85 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %88 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %87, i32 0, i32 1
  store i32 136, i32* %88, align 8
  br label %89

89:                                               ; preds = %12, %63
  %90 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %91 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %92 = call i32 @fill_temp(%struct.xz_dec* %90, %struct.xz_buf* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @XZ_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %278

96:                                               ; preds = %89
  %97 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %98 = call i32 @dec_block_header(%struct.xz_dec* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @XZ_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %278

104:                                              ; preds = %96
  %105 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %106 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %105, i32 0, i32 1
  store i32 133, i32* %106, align 8
  br label %107

107:                                              ; preds = %12, %104
  %108 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %109 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %110 = call i32 @dec_block(%struct.xz_dec* %108, %struct.xz_buf* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @XZ_STREAM_END, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %278

116:                                              ; preds = %107
  %117 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %118 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %117, i32 0, i32 1
  store i32 135, i32* %118, align 8
  br label %119

119:                                              ; preds = %12, %116
  br label %120

120:                                              ; preds = %150, %119
  %121 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %122 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 3
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %120
  %128 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %129 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %132 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* @XZ_OK, align 4
  store i32 %136, i32* %3, align 4
  br label %278

137:                                              ; preds = %127
  %138 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %139 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %142 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %142, align 8
  %145 = getelementptr inbounds i32, i32* %140, i64 %143
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %137
  %149 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %149, i32* %3, align 4
  br label %278

150:                                              ; preds = %137
  %151 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %152 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %120

156:                                              ; preds = %120
  %157 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %158 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %157, i32 0, i32 1
  store i32 137, i32* %158, align 8
  br label %159

159:                                              ; preds = %12, %156
  %160 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %161 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @XZ_CHECK_CRC32, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %167 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %168 = call i32 @crc32_validate(%struct.xz_dec* %166, %struct.xz_buf* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @XZ_STREAM_END, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %3, align 4
  br label %278

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %159
  %176 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %177 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %176, i32 0, i32 1
  store i32 134, i32* %177, align 8
  br label %277

178:                                              ; preds = %12
  %179 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %180 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %181 = call i32 @dec_index(%struct.xz_dec* %179, %struct.xz_buf* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @XZ_STREAM_END, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %278

187:                                              ; preds = %178
  %188 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %189 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %188, i32 0, i32 1
  store i32 130, i32* %189, align 8
  br label %190

190:                                              ; preds = %12, %187
  br label %191

191:                                              ; preds = %233, %190
  %192 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %193 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %198 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %201 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = sub i64 %199, %202
  %204 = add i64 %196, %203
  %205 = and i64 %204, 3
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %191
  %208 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %209 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %212 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %210, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %217 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %218 = call i32 @index_update(%struct.xz_dec* %216, %struct.xz_buf* %217)
  %219 = load i32, i32* @XZ_OK, align 4
  store i32 %219, i32* %3, align 4
  br label %278

220:                                              ; preds = %207
  %221 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %222 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %225 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %225, align 8
  %228 = getelementptr inbounds i32, i32* %223, i64 %226
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %232, i32* %3, align 4
  br label %278

233:                                              ; preds = %220
  br label %191

234:                                              ; preds = %191
  %235 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %236 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %237 = call i32 @index_update(%struct.xz_dec* %235, %struct.xz_buf* %236)
  %238 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %239 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %242 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = call i32 @memeq(i32* %240, i32* %243, i32 4)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %234
  %247 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %247, i32* %3, align 4
  br label %278

248:                                              ; preds = %234
  %249 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %250 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %249, i32 0, i32 1
  store i32 131, i32* %250, align 8
  br label %251

251:                                              ; preds = %12, %248
  %252 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %253 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %254 = call i32 @crc32_validate(%struct.xz_dec* %252, %struct.xz_buf* %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @XZ_STREAM_END, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = load i32, i32* %6, align 4
  store i32 %259, i32* %3, align 4
  br label %278

260:                                              ; preds = %251
  %261 = load i32, i32* @STREAM_HEADER_SIZE, align 4
  %262 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %263 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 4
  %265 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %266 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %265, i32 0, i32 1
  store i32 129, i32* %266, align 8
  br label %267

267:                                              ; preds = %12, %260
  %268 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %269 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %270 = call i32 @fill_temp(%struct.xz_dec* %268, %struct.xz_buf* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %267
  %273 = load i32, i32* @XZ_OK, align 4
  store i32 %273, i32* %3, align 4
  br label %278

274:                                              ; preds = %267
  %275 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %276 = call i32 @dec_stream_footer(%struct.xz_dec* %275)
  store i32 %276, i32* %3, align 4
  br label %278

277:                                              ; preds = %12, %175, %54
  br label %12

278:                                              ; preds = %274, %272, %258, %246, %231, %215, %185, %172, %148, %135, %114, %102, %94, %42, %31, %21
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @fill_temp(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @dec_stream_header(%struct.xz_dec*) #1

declare dso_local i32 @dec_block_header(%struct.xz_dec*) #1

declare dso_local i32 @dec_block(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @crc32_validate(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @dec_index(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @index_update(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @memeq(i32*, i32*, i32) #1

declare dso_local i32 @dec_stream_footer(%struct.xz_dec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
