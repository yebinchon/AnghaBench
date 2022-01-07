; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_coredump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_mapping = type { i64*, i64, i8*, i64 }
%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.btmrvl_sdio_card = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32, %struct.btmrvl_private* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.btmrvl_private = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Firmware dump not supported for this card!\00", align 1
@mem_type_mapping_tbl = common dso_local global %struct.memory_type_mapping* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"== btmrvl firmware dump start ==\00", align 1
@RDWR_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SDIO read memory length err\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SDIO read err\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Firmware dump finished!\00", align 1
@FW_DUMP_READ_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"SDIO Write MEMDUMP_FINISH ERR\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s_SIZE=0x%x\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Vzalloc %s failed\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"========Start dump \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"========\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\0A========End dump========\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Start %s output, please wait...\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Allocated buffer not enough\00", align 1
@RDWR_STATUS_DONE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"%s done: size=0x%tx\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"== btmrvl firmware dump end ==\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Vzalloc fw_dump_data fail!\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"== btmrvl firmware dump to /sys/class/devcoredump start\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [54 x i8] c"== btmrvl firmware dump to /sys/class/devcoredump end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @btmrvl_sdio_coredump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmrvl_sdio_coredump(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.btmrvl_sdio_card*, align 8
  %5 = alloca %struct.btmrvl_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.memory_type_mapping*, align 8
  %23 = alloca %struct.memory_type_mapping*, align 8
  %24 = alloca %struct.memory_type_mapping*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %25)
  store %struct.sdio_func* %26, %struct.sdio_func** %3, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %21, align 8
  %27 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %28 = call %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %27)
  store %struct.btmrvl_sdio_card* %28, %struct.btmrvl_sdio_card** %4, align 8
  %29 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %30 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %29, i32 0, i32 3
  %31 = load %struct.btmrvl_private*, %struct.btmrvl_private** %30, align 8
  store %struct.btmrvl_private* %31, %struct.btmrvl_private** %5, align 8
  %32 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %33 = call i32 @btmrvl_sdio_dump_regs(%struct.btmrvl_private* %32)
  %34 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %35 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %1
  %39 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %386

40:                                               ; preds = %1
  store i64 0, i64* %16, align 8
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i64, i64* %16, align 8
  %43 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %44 = call i64 @ARRAY_SIZE(%struct.memory_type_mapping* %43)
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %47, i64 %48
  store %struct.memory_type_mapping* %49, %struct.memory_type_mapping** %22, align 8
  %50 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %22, align 8
  %51 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %22, align 8
  %56 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @vfree(i64* %57)
  %59 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %22, align 8
  %60 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %59, i32 0, i32 0
  store i64* null, i64** %60, align 8
  br label %61

61:                                               ; preds = %54, %46
  %62 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %22, align 8
  %63 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %16, align 8
  br label %41

67:                                               ; preds = %41
  %68 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %69 = call i32 @btmrvl_sdio_wakeup_fw(%struct.btmrvl_private* %68)
  %70 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %71 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i32 @sdio_claim_host(%struct.TYPE_7__* %72)
  %74 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %76 = load i64, i64* %19, align 8
  %77 = call i32 @btmrvl_sdio_rdwr_firmware(%struct.btmrvl_private* %75, i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %290

82:                                               ; preds = %67
  %83 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %84 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %89 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @sdio_readb(%struct.TYPE_7__* %90, i32 %91, i32* %6)
  store i64 %92, i64* %15, align 8
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %290

97:                                               ; preds = %82
  store i64 0, i64* %16, align 8
  br label %98

98:                                               ; preds = %285, %97
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %288

102:                                              ; preds = %98
  %103 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %104 = load i64, i64* %16, align 8
  %105 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %103, i64 %104
  store %struct.memory_type_mapping* %105, %struct.memory_type_mapping** %23, align 8
  %106 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %107 = load i64, i64* %19, align 8
  %108 = call i32 @btmrvl_sdio_rdwr_firmware(%struct.btmrvl_private* %106, i64 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %290

113:                                              ; preds = %102
  store i64 0, i64* %20, align 8
  %114 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %115 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  store i64 0, i64* %17, align 8
  br label %119

119:                                              ; preds = %141, %113
  %120 = load i64, i64* %17, align 8
  %121 = icmp ult i64 %120, 4
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %124 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @sdio_readb(%struct.TYPE_7__* %125, i32 %126, i32* %6)
  store i64 %127, i64* %18, align 8
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %290

132:                                              ; preds = %122
  %133 = load i64, i64* %18, align 8
  %134 = load i64, i64* %17, align 8
  %135 = mul i64 %134, 8
  %136 = shl i64 %133, %135
  %137 = load i64, i64* %20, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %20, align 8
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %132
  %142 = load i64, i64* %17, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %17, align 8
  br label %119

144:                                              ; preds = %119
  %145 = load i64, i64* %20, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %150 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* @FW_DUMP_READ_DONE, align 4
  %153 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %154 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @sdio_writeb(%struct.TYPE_7__* %151, i32 %152, i32 %157, i32* %6)
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %147
  %162 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %290

163:                                              ; preds = %147
  br label %288

164:                                              ; preds = %144
  %165 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %166 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load i64, i64* %20, align 8
  %169 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %167, i64 %168)
  %170 = load i64, i64* %20, align 8
  %171 = add i64 %170, 1
  %172 = call i8* @vzalloc(i64 %171)
  %173 = bitcast i8* %172 to i64*
  %174 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %175 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %174, i32 0, i32 0
  store i64* %173, i64** %175, align 8
  %176 = load i64, i64* %20, align 8
  %177 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %178 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %180 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = icmp ne i64* %181, null
  br i1 %182, label %188, label %183

183:                                              ; preds = %164
  %184 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %185 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %186)
  br label %290

188:                                              ; preds = %164
  %189 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %190 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %191 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @strlen(i8* %192)
  %194 = add nsw i64 %189, %193
  %195 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %196 = add nsw i64 %194, %195
  %197 = load i64, i64* %20, align 8
  %198 = add i64 %197, 1
  %199 = add i64 %196, %198
  %200 = call i64 @strlen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %201 = add i64 %199, %200
  %202 = load i64, i64* %21, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %21, align 8
  %204 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %205 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  store i64* %206, i64** %11, align 8
  %207 = load i64*, i64** %11, align 8
  %208 = load i64, i64* %20, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  store i64* %209, i64** %12, align 8
  %210 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %211 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %19, align 8
  %213 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %214 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %283, %188
  %218 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %219 = load i64, i64* %19, align 8
  %220 = call i32 @btmrvl_sdio_rdwr_firmware(%struct.btmrvl_private* %218, i64 %219)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %290

225:                                              ; preds = %217
  %226 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %227 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %226, i32 0, i32 1
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %8, align 4
  %231 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %232 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %231, i32 0, i32 1
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %8, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %262, %225
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ule i32 %238, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %243 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %242, i32 0, i32 0
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = call i64 @sdio_readb(%struct.TYPE_7__* %244, i32 %245, i32* %6)
  %247 = load i64*, i64** %11, align 8
  store i64 %246, i64* %247, align 8
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %241
  %251 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %290

252:                                              ; preds = %241
  %253 = load i64*, i64** %11, align 8
  %254 = load i64*, i64** %12, align 8
  %255 = icmp ult i64* %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load i64*, i64** %11, align 8
  %258 = getelementptr inbounds i64, i64* %257, i32 1
  store i64* %258, i64** %11, align 8
  br label %261

259:                                              ; preds = %252
  %260 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %256
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %7, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %237

265:                                              ; preds = %237
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @RDWR_STATUS_DONE, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %283

270:                                              ; preds = %265
  %271 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %272 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = load i64*, i64** %11, align 8
  %275 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %23, align 8
  %276 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = ptrtoint i64* %274 to i64
  %279 = ptrtoint i64* %277 to i64
  %280 = sub i64 %278, %279
  %281 = sdiv exact i64 %280, 8
  %282 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %273, i64 %281)
  br label %284

283:                                              ; preds = %269
  br i1 true, label %217, label %284

284:                                              ; preds = %283, %270
  br label %285

285:                                              ; preds = %284
  %286 = load i64, i64* %16, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %16, align 8
  br label %98

288:                                              ; preds = %163, %98
  %289 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %250, %224, %183, %161, %130, %112, %95, %81
  %291 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %292 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %291, i32 0, i32 0
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %292, align 8
  %294 = call i32 @sdio_release_host(%struct.TYPE_7__* %293)
  %295 = load i64, i64* %21, align 8
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %386

298:                                              ; preds = %290
  %299 = load i64, i64* %21, align 8
  %300 = add i64 %299, 1
  %301 = call i8* @vzalloc(i64 %300)
  %302 = bitcast i8* %301 to i64*
  store i64* %302, i64** %13, align 8
  %303 = load i64*, i64** %13, align 8
  %304 = icmp ne i64* %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %298
  %306 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %386

307:                                              ; preds = %298
  %308 = load i64*, i64** %13, align 8
  store i64* %308, i64** %14, align 8
  %309 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %310

310:                                              ; preds = %373, %307
  %311 = load i64, i64* %16, align 8
  %312 = load i64, i64* %15, align 8
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %376

314:                                              ; preds = %310
  %315 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %316 = load i64, i64* %16, align 8
  %317 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %315, i64 %316
  store %struct.memory_type_mapping* %317, %struct.memory_type_mapping** %24, align 8
  %318 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %24, align 8
  %319 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %318, i32 0, i32 0
  %320 = load i64*, i64** %319, align 8
  %321 = icmp ne i64* %320, null
  br i1 %321, label %322, label %372

322:                                              ; preds = %314
  %323 = load i64*, i64** %14, align 8
  %324 = call i32 @strcpy(i64* %323, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %325 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %326 = load i64*, i64** %14, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 %325
  store i64* %327, i64** %14, align 8
  %328 = load i64*, i64** %14, align 8
  %329 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %24, align 8
  %330 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %329, i32 0, i32 2
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @strcpy(i64* %328, i8* %331)
  %333 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %24, align 8
  %334 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %333, i32 0, i32 2
  %335 = load i8*, i8** %334, align 8
  %336 = call i64 @strlen(i8* %335)
  %337 = load i64*, i64** %14, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 %336
  store i64* %338, i64** %14, align 8
  %339 = load i64*, i64** %14, align 8
  %340 = call i32 @strcpy(i64* %339, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %341 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %342 = load i64*, i64** %14, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 %341
  store i64* %343, i64** %14, align 8
  %344 = load i64*, i64** %14, align 8
  %345 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %24, align 8
  %346 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %345, i32 0, i32 0
  %347 = load i64*, i64** %346, align 8
  %348 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %24, align 8
  %349 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = call i32 @memcpy(i64* %344, i64* %347, i64 %350)
  %352 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %24, align 8
  %353 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load i64*, i64** %14, align 8
  %356 = getelementptr inbounds i64, i64* %355, i64 %354
  store i64* %356, i64** %14, align 8
  %357 = load i64*, i64** %14, align 8
  %358 = call i32 @strcpy(i64* %357, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %359 = call i64 @strlen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %360 = load i64*, i64** %14, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 %359
  store i64* %361, i64** %14, align 8
  %362 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %363 = load i64, i64* %16, align 8
  %364 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %362, i64 %363
  %365 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %364, i32 0, i32 0
  %366 = load i64*, i64** %365, align 8
  %367 = call i32 @vfree(i64* %366)
  %368 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** @mem_type_mapping_tbl, align 8
  %369 = load i64, i64* %16, align 8
  %370 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %368, i64 %369
  %371 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %370, i32 0, i32 0
  store i64* null, i64** %371, align 8
  br label %372

372:                                              ; preds = %322, %314
  br label %373

373:                                              ; preds = %372
  %374 = load i64, i64* %16, align 8
  %375 = add i64 %374, 1
  store i64 %375, i64* %16, align 8
  br label %310

376:                                              ; preds = %310
  %377 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %378 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %377, i32 0, i32 0
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 0
  %381 = load i64*, i64** %13, align 8
  %382 = load i64, i64* %21, align 8
  %383 = load i32, i32* @GFP_KERNEL, align 4
  %384 = call i32 @dev_coredumpv(i32* %380, i64* %381, i64 %382, i32 %383)
  %385 = call i32 (i8*, ...) @BT_INFO(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0))
  br label %386

386:                                              ; preds = %376, %305, %297, %38
  ret void
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.btmrvl_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @btmrvl_sdio_dump_regs(%struct.btmrvl_private*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.memory_type_mapping*) #1

declare dso_local i32 @vfree(i64*) #1

declare dso_local i32 @btmrvl_sdio_wakeup_fw(%struct.btmrvl_private*) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_7__*) #1

declare dso_local i32 @BT_INFO(i8*, ...) #1

declare dso_local i32 @btmrvl_sdio_rdwr_firmware(%struct.btmrvl_private*, i64) #1

declare dso_local i64 @sdio_readb(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @sdio_writeb(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i8* @vzalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_7__*) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @dev_coredumpv(i32*, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
