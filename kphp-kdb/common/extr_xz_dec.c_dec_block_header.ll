; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dec_block_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dec_block_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_OPTIONS_ERROR = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i64 0, align 8
@VLI_UNKNOWN = common dso_local global i8* null, align 8
@XZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*)* @dec_block_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_block_header(%struct.xz_dec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xz_dec*, align 8
  %4 = alloca i32, align 4
  store %struct.xz_dec* %0, %struct.xz_dec** %3, align 8
  %5 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %6 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 4
  store i32 %9, i32* %7, align 8
  %10 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %11 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %15 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @xz_crc32(i32* %13, i32 %17, i32 0)
  %19 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %20 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %24 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = call i64 @get_le32(i32* %28)
  %30 = icmp ne i64 %18, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %244

33:                                               ; preds = %1
  %34 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %35 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 2, i32* %36, align 8
  %37 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %38 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 63
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @XZ_OPTIONS_ERROR, align 4
  store i32 %46, i32* %2, align 4
  br label %244

47:                                               ; preds = %33
  %48 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %49 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 64
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %47
  %57 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %58 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %59 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %63 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %66 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @dec_vli(%struct.xz_dec* %57, i32* %61, i32* %64, i32 %68)
  %70 = load i64, i64* @XZ_STREAM_END, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %73, i32* %2, align 4
  br label %244

74:                                               ; preds = %56
  %75 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %76 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %79 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  br label %86

81:                                               ; preds = %47
  %82 = load i8*, i8** @VLI_UNKNOWN, align 8
  %83 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %84 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %81, %74
  %87 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %88 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %86
  %96 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %97 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %98 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %102 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %105 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @dec_vli(%struct.xz_dec* %96, i32* %100, i32* %103, i32 %107)
  %109 = load i64, i64* @XZ_STREAM_END, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %95
  %112 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %112, i32* %2, align 4
  br label %244

113:                                              ; preds = %95
  %114 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %115 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %118 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  br label %125

120:                                              ; preds = %86
  %121 = load i8*, i8** @VLI_UNKNOWN, align 8
  %122 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %123 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  br label %125

125:                                              ; preds = %120, %113
  %126 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %127 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %131 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %129, %133
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %137, i32* %2, align 4
  br label %244

138:                                              ; preds = %125
  %139 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %140 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %144 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 33
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i32, i32* @XZ_OPTIONS_ERROR, align 4
  store i32 %153, i32* %2, align 4
  br label %244

154:                                              ; preds = %138
  %155 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %156 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %160 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %154
  %169 = load i32, i32* @XZ_OPTIONS_ERROR, align 4
  store i32 %169, i32* %2, align 4
  br label %244

170:                                              ; preds = %154
  %171 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %172 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %176 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %174, %178
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %182, i32* %2, align 4
  br label %244

183:                                              ; preds = %170
  %184 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %185 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %188 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %192 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %190, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @xz_dec_lzma2_reset(i32 %186, i32 %198)
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @XZ_OK, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %183
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %244

205:                                              ; preds = %183
  br label %206

206:                                              ; preds = %232, %205
  %207 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %208 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %212 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %210, %214
  br i1 %215, label %216, label %233

216:                                              ; preds = %206
  %217 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %218 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %222 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %216
  %231 = load i32, i32* @XZ_OPTIONS_ERROR, align 4
  store i32 %231, i32* %2, align 4
  br label %244

232:                                              ; preds = %216
  br label %206

233:                                              ; preds = %206
  %234 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %235 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  store i32 0, i32* %236, align 8
  %237 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %238 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  store i64 0, i64* %239, align 8
  %240 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %241 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  store i64 0, i64* %242, align 8
  %243 = load i32, i32* @XZ_OK, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %233, %230, %203, %181, %168, %152, %136, %111, %72, %45, %31
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i64 @xz_crc32(i32*, i32, i32) #1

declare dso_local i64 @get_le32(i32*) #1

declare dso_local i64 @dec_vli(%struct.xz_dec*, i32*, i32*, i32) #1

declare dso_local i32 @xz_dec_lzma2_reset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
