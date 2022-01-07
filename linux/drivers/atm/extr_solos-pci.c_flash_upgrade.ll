; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_flash_upgrade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_flash_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i64, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"solos-FPGA.bin\00", align 1
@ATMEL_FPGA_BLOCK = common dso_local global i32 0, align 4
@SPI_FLASH_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"solos-Firmware.bin\00", align 1
@ATMEL_SOLOS_BLOCK = common dso_local global i32 0, align 4
@LEGACY_BUFFERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"solos-db-FPGA.bin\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"FPGA version doesn't support daughter board upgrades\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Flash upgrade starting\0A\00", align 1
@DRIVER_VERSION = common dso_local global i32 0, align 4
@DRIVER_VER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Firmware size: %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Number of blocks: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Changing FPGA to Update mode\0A\00", align 1
@FPGA_MODE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"Set FPGA Flash mode to FPGA Chip Erase\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Set FPGA Flash mode to Solos Chip Erase\0A\00", align 1
@FLASH_MODE = common dso_local global i64 0, align 8
@WRITE_FLASH = common dso_local global i64 0, align 8
@FLASH_BUSY = common dso_local global i64 0, align 8
@FLASH_BUF = common dso_local global i64 0, align 8
@FLASH_BLOCK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"Returning FPGA to Data mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*, i32)* @flash_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_upgrade(%struct.solos_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solos_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.solos_card* %0, %struct.solos_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %84 [
    i32 0, label %14
    i32 1, label %24
    i32 2, label %34
    i32 3, label %59
  ]

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %15 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %16 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ATMEL_FPGA_BLOCK, align 4
  store i32 %20, i32* %8, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @SPI_FLASH_BLOCK, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %87

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %25 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %26 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ATMEL_SOLOS_BLOCK, align 4
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @SPI_FLASH_BLOCK, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %87

34:                                               ; preds = %2
  %35 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %36 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LEGACY_BUFFERS, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %41 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %42 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ATMEL_FPGA_BLOCK, align 4
  store i32 %46, i32* %8, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SPI_FLASH_BLOCK, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %52 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %337

58:                                               ; preds = %49
  br label %87

59:                                               ; preds = %2
  %60 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %61 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LEGACY_BUFFERS, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %66 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %67 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @ATMEL_SOLOS_BLOCK, align 4
  store i32 %71, i32* %8, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @SPI_FLASH_BLOCK, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %83

75:                                               ; preds = %59
  %76 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %77 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_info(i32* %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EPERM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %337

83:                                               ; preds = %74
  br label %87

84:                                               ; preds = %2
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %337

87:                                               ; preds = %83, %58, %33, %23
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %90 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i64 @request_firmware(%struct.firmware** %6, i8* %88, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %337

98:                                               ; preds = %87
  %99 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %100 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_info(i32* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @DRIVER_VERSION, align 4
  %105 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %106 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DRIVER_VER, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @iowrite32(i32 %104, i64 %109)
  %111 = load %struct.firmware*, %struct.firmware** %6, align 8
  %112 = getelementptr inbounds %struct.firmware, %struct.firmware* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sdiv i32 %113, %114
  store i32 %115, i32* %9, align 4
  %116 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %117 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.firmware*, %struct.firmware** %6, align 8
  %121 = getelementptr inbounds %struct.firmware, %struct.firmware* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_info(i32* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %125 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (i32*, i8*, ...) @dev_info(i32* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %131 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i32 (i32*, i8*, ...) @dev_info(i32* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %135 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %136 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @FPGA_MODE, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @iowrite32(i32 1, i64 %139)
  %141 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %142 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @FPGA_MODE, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @ioread32(i64 %145)
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %98
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %158

152:                                              ; preds = %149, %98
  %153 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %154 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = call i32 (i32*, i8*, ...) @dev_info(i32* %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %152, %149
  %159 = load i32, i32* %5, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %5, align 4
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %170

164:                                              ; preds = %161, %158
  %165 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %166 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = call i32 (i32*, i8*, ...) @dev_info(i32* %168, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i32, i32* %5, align 4
  %172 = mul nsw i32 %171, 2
  %173 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %174 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @FLASH_MODE, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @iowrite32(i32 %172, i64 %177)
  %179 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %180 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @WRITE_FLASH, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @iowrite32(i32 1, i64 %183)
  %185 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %186 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %189 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @FLASH_BUSY, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @ioread32(i64 %192)
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @wait_event(i32 %187, i32 %196)
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %307, %170
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.firmware*, %struct.firmware** %6, align 8
  %201 = getelementptr inbounds %struct.firmware, %struct.firmware* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %311

204:                                              ; preds = %198
  %205 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %206 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @WRITE_FLASH, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @iowrite32(i32 0, i64 %209)
  %211 = load i32, i32* %5, align 4
  %212 = mul nsw i32 %211, 2
  %213 = add nsw i32 %212, 1
  %214 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %215 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @FLASH_MODE, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @iowrite32(i32 %213, i64 %218)
  store i32 0, i32* %11, align 4
  br label %220

220:                                              ; preds = %275, %204
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %278

224:                                              ; preds = %220
  %225 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %226 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %224
  %230 = load %struct.firmware*, %struct.firmware** %6, align 8
  %231 = getelementptr inbounds %struct.firmware, %struct.firmware* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %232, %234
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = inttoptr i64 %238 to i32*
  %240 = call i32 @swahb32p(i32* %239)
  store i32 %240, i32* %12, align 4
  br label %253

241:                                              ; preds = %224
  %242 = load %struct.firmware*, %struct.firmware** %6, align 8
  %243 = getelementptr inbounds %struct.firmware, %struct.firmware* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %244, %246
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %247, %249
  %251 = inttoptr i64 %250 to i32*
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %12, align 4
  br label %253

253:                                              ; preds = %241, %229
  %254 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %255 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @LEGACY_BUFFERS, align 8
  %258 = icmp sgt i64 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %253
  %260 = load i32, i32* %12, align 4
  %261 = load i64, i64* @FLASH_BUF, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %261, %263
  %265 = call i32 @iowrite32(i32 %260, i64 %264)
  br label %274

266:                                              ; preds = %253
  %267 = load i32, i32* %12, align 4
  %268 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %269 = call i64 @RX_BUF(%struct.solos_card* %268, i32 3)
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %269, %271
  %273 = call i32 @iowrite32(i32 %267, i64 %272)
  br label %274

274:                                              ; preds = %266, %259
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 4
  store i32 %277, i32* %11, align 4
  br label %220

278:                                              ; preds = %220
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %8, align 4
  %281 = sdiv i32 %279, %280
  %282 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %283 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @FLASH_BLOCK, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @iowrite32(i32 %281, i64 %286)
  %288 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %289 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @WRITE_FLASH, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @iowrite32(i32 1, i64 %292)
  %294 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %295 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %298 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @FLASH_BUSY, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @ioread32(i64 %301)
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = call i32 @wait_event(i32 %296, i32 %305)
  br label %307

307:                                              ; preds = %278
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* %10, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %10, align 4
  br label %198

311:                                              ; preds = %198
  %312 = load %struct.firmware*, %struct.firmware** %6, align 8
  %313 = call i32 @release_firmware(%struct.firmware* %312)
  %314 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %315 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @WRITE_FLASH, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i32 @iowrite32(i32 0, i64 %318)
  %320 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %321 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @FPGA_MODE, align 8
  %324 = add nsw i64 %322, %323
  %325 = call i32 @iowrite32(i32 0, i64 %324)
  %326 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %327 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @FLASH_MODE, align 8
  %330 = add nsw i64 %328, %329
  %331 = call i32 @iowrite32(i32 0, i64 %330)
  %332 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %333 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %332, i32 0, i32 1
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  %336 = call i32 (i32*, i8*, ...) @dev_info(i32* %335, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %337

337:                                              ; preds = %311, %95, %84, %75, %50
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @swahb32p(i32*) #1

declare dso_local i64 @RX_BUF(%struct.solos_card*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
