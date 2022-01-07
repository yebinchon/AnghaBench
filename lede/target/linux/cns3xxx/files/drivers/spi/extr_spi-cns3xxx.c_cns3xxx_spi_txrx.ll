; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/spi/extr_spi-cns3xxx.c_cns3xxx_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32*, i32*, i32, i64 }
%struct.cns3xxx_spi = type { i32*, i32*, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"txrx: tx %p, rx %p, len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[SPI_CNS3XXX_DEBUG] hw->tx[%02d]: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"[SPI_CNS3XXX_DEBUG] hw->rx[%02d]: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @cns3xxx_spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns3xxx_spi_txrx(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.cns3xxx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call %struct.cns3xxx_spi* @to_hw(%struct.spi_device* %10)
  store %struct.cns3xxx_spi* %11, %struct.cns3xxx_spi** %5, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %19, i32 %22)
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %28 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %33 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %38 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %40 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %45 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %47 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %46, i32 0, i32 3
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %50 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %170

53:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %110, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %57 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %113

61:                                               ; preds = %54
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %66 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %71)
  %73 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %78 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi* %73, i32 %76, i32 0, i32 %83, i8** %7)
  %85 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %86 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %61
  %90 = load i8*, i8** %7, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %93 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %99 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %98, i32 0, i32 0
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %102 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %107)
  br label %109

109:                                              ; preds = %89, %61
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %54

113:                                              ; preds = %54
  %114 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %115 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %113
  %119 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %124 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi* %119, i32 %122, i32 1, i32 %129, i8** %7)
  %131 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %132 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %155

135:                                              ; preds = %118
  %136 = load i8*, i8** %7, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %139 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  %144 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %145 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %144, i32 0, i32 0
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %148 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %153)
  br label %155

155:                                              ; preds = %135, %118
  br label %169

156:                                              ; preds = %113
  %157 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %158 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %159 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %162 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi* %157, i32 %160, i32 0, i32 %167, i8** %7)
  br label %169

169:                                              ; preds = %156, %155
  br label %249

170:                                              ; preds = %2
  %171 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %172 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %248

175:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %208, %175
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %179 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %180, 1
  %182 = icmp slt i32 %177, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %176
  %184 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %185 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %186 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi* %184, i32 %187, i32 0, i32 255, i8** %9)
  %189 = load i8*, i8** %9, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %192 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %190, i32* %196, align 4
  %197 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %198 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %197, i32 0, i32 0
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %201 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %198, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %199, i32 %206)
  br label %208

208:                                              ; preds = %183
  %209 = load i32, i32* %8, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %8, align 4
  br label %176

211:                                              ; preds = %176
  %212 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %213 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %218 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %219 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi* %217, i32 %220, i32 1, i32 255, i8** %9)
  br label %228

222:                                              ; preds = %211
  %223 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %224 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %225 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi* %223, i32 %226, i32 0, i32 255, i8** %9)
  br label %228

228:                                              ; preds = %222, %216
  %229 = load i8*, i8** %9, align 8
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %232 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %230, i32* %236, align 4
  %237 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %238 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %237, i32 0, i32 0
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %241 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %238, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %239, i32 %246)
  br label %248

248:                                              ; preds = %228, %170
  br label %249

249:                                              ; preds = %248, %169
  %250 = load %struct.cns3xxx_spi*, %struct.cns3xxx_spi** %5, align 8
  %251 = getelementptr inbounds %struct.cns3xxx_spi, %struct.cns3xxx_spi* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  ret i32 %252
}

declare dso_local %struct.cns3xxx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @cns3xxx_spi_tx_rx(%struct.cns3xxx_spi*, i32, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
