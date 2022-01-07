; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i32, i64, i32, i64, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.ace_device* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32, %struct.ace_device*, i32, i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ace_setup(ace=0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"physaddr=0x%llx irq=%i\0A\00", align 1
@ace_fsm_tasklet = common dso_local global i32 0, align 4
@ace_stall_timer = common dso_local global i32 0, align 4
@ace_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_BOUNCE_HIGH = common dso_local global i32 0, align 4
@ACE_NUM_MINORS = common dso_local global i32 0, align 4
@ace_major = common dso_local global i32 0, align 4
@ace_fops = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"xs%c\00", align 1
@ACE_BUS_WIDTH_16 = common dso_local global i64 0, align 8
@ACE_BUSMODE = common dso_local global i32 0, align 4
@ace_reg_le16_ops = common dso_local global i32 0, align 4
@ace_reg_be16_ops = common dso_local global i32 0, align 4
@ace_reg_8_ops = common dso_local global i32 0, align 4
@ACE_VERSION = common dso_local global i32 0, align 4
@ACE_CTRL = common dso_local global i32 0, align 4
@ACE_CTRL_FORCECFGMODE = common dso_local global i32 0, align 4
@ACE_CTRL_DATABUFRDYIRQ = common dso_local global i32 0, align 4
@ACE_CTRL_ERRORIRQ = common dso_local global i32 0, align 4
@ace_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"systemace\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Xilinx SystemACE revision %i.%i.%i\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"physaddr 0x%llx, mapped to 0x%p, irq=%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"xsysace: error initializing device at 0x%llx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ace_device*)* @ace_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_setup(%struct.ace_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ace_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ace_device* %0, %struct.ace_device** %3, align 8
  %7 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %8 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %11 = call i32 (i32, i8*, ...) @dev_dbg(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.ace_device* %10)
  %12 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %13 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %16 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %19 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %17, i64 %20)
  %22 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %23 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %22, i32 0, i32 15
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %26 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %25, i32 0, i32 14
  %27 = call i32 @init_completion(i32* %26)
  %28 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %29 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %28, i32 0, i32 13
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %32 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ioremap(i64 %33, i32 128)
  %35 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %36 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %38 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  br label %279

42:                                               ; preds = %1
  %43 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %44 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %43, i32 0, i32 12
  %45 = load i32, i32* @ace_fsm_tasklet, align 4
  %46 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %47 = ptrtoint %struct.ace_device* %46 to i64
  %48 = call i32 @tasklet_init(i32* %44, i32 %45, i64 %47)
  %49 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %50 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %49, i32 0, i32 11
  %51 = load i32, i32* @ace_stall_timer, align 4
  %52 = call i32 @timer_setup(i32* %50, i32 %51, i32 0)
  %53 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %54 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %53, i32 0, i32 6
  %55 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %56 = call %struct.TYPE_12__* @blk_mq_init_sq_queue(i32* %54, i32* @ace_mq_ops, i32 2, i32 %55)
  %57 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %58 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %57, i32 0, i32 7
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %60 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %59, i32 0, i32 7
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = call i64 @IS_ERR(%struct.TYPE_12__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %42
  %65 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %66 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %65, i32 0, i32 7
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.TYPE_12__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %70 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %69, i32 0, i32 7
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %70, align 8
  br label %274

71:                                               ; preds = %42
  %72 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %73 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %74 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %73, i32 0, i32 7
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store %struct.ace_device* %72, %struct.ace_device** %76, align 8
  %77 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %78 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %77, i32 0, i32 7
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i32 @blk_queue_logical_block_size(%struct.TYPE_12__* %79, i32 512)
  %81 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %82 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %81, i32 0, i32 7
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = load i32, i32* @BLK_BOUNCE_HIGH, align 4
  %85 = call i32 @blk_queue_bounce_limit(%struct.TYPE_12__* %83, i32 %84)
  %86 = load i32, i32* @ACE_NUM_MINORS, align 4
  %87 = call %struct.TYPE_11__* @alloc_disk(i32 %86)
  %88 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %89 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %88, i32 0, i32 8
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %89, align 8
  %90 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %91 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %90, i32 0, i32 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = icmp ne %struct.TYPE_11__* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %71
  br label %266

95:                                               ; preds = %71
  %96 = load i32, i32* @ace_major, align 4
  %97 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %98 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %97, i32 0, i32 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 6
  store i32 %96, i32* %100, align 8
  %101 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %102 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ACE_NUM_MINORS, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %107 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %106, i32 0, i32 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %111 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %110, i32 0, i32 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  store i32* @ace_fops, i32** %113, align 8
  %114 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %115 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %116 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %115, i32 0, i32 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  store i32 %114, i32* %118, align 8
  %119 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %120 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %119, i32 0, i32 7
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %123 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %122, i32 0, i32 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %125, align 8
  %126 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %127 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %128 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %127, i32 0, i32 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  store %struct.ace_device* %126, %struct.ace_device** %130, align 8
  %131 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %132 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %131, i32 0, i32 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %137 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 97
  %140 = trunc i32 %139 to i8
  %141 = call i32 @snprintf(i32 %135, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %140)
  %142 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %143 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ACE_BUS_WIDTH_16, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %95
  %148 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %149 = load i32, i32* @ACE_BUSMODE, align 4
  %150 = call i32 @ace_out_le16(%struct.ace_device* %148, i32 %149, i32 257)
  %151 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %152 = load i32, i32* @ACE_BUSMODE, align 4
  %153 = call i32 @ace_in_le16(%struct.ace_device* %151, i32 %152)
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %157 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %156, i32 0, i32 10
  store i32* @ace_reg_le16_ops, i32** %157, align 8
  br label %161

158:                                              ; preds = %147
  %159 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %160 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %159, i32 0, i32 10
  store i32* @ace_reg_be16_ops, i32** %160, align 8
  br label %161

161:                                              ; preds = %158, %155
  br label %168

162:                                              ; preds = %95
  %163 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %164 = load i32, i32* @ACE_BUSMODE, align 4
  %165 = call i32 @ace_out_8(%struct.ace_device* %163, i32 %164, i32 0)
  %166 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %167 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %166, i32 0, i32 10
  store i32* @ace_reg_8_ops, i32** %167, align 8
  br label %168

168:                                              ; preds = %162, %161
  %169 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %170 = load i32, i32* @ACE_VERSION, align 4
  %171 = call i32 @ace_in(%struct.ace_device* %169, i32 %170)
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %4, align 4
  %176 = icmp eq i32 %175, 65535
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %168
  br label %257

178:                                              ; preds = %174
  %179 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %180 = load i32, i32* @ACE_CTRL, align 4
  %181 = load i32, i32* @ACE_CTRL_FORCECFGMODE, align 4
  %182 = load i32, i32* @ACE_CTRL_DATABUFRDYIRQ, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @ACE_CTRL_ERRORIRQ, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @ace_out(%struct.ace_device* %179, i32 %180, i32 %185)
  %187 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %188 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %187, i32 0, i32 9
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %178
  %192 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %193 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %192, i32 0, i32 9
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @ace_interrupt, align 4
  %196 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %197 = call i32 @request_irq(i64 %194, i32 %195, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.ace_device* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %191
  %201 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %202 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @dev_err(i32 %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %205 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %206 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %205, i32 0, i32 9
  store i64 0, i64* %206, align 8
  br label %207

207:                                              ; preds = %200, %191
  br label %208

208:                                              ; preds = %207, %178
  %209 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %210 = load i32, i32* @ACE_CTRL, align 4
  %211 = call i32 @ace_in(%struct.ace_device* %209, i32 %210)
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* @ACE_CTRL_DATABUFRDYIRQ, align 4
  %213 = load i32, i32* @ACE_CTRL_ERRORIRQ, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* %5, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %5, align 4
  %217 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %218 = load i32, i32* @ACE_CTRL, align 4
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @ace_out(%struct.ace_device* %217, i32 %218, i32 %219)
  %221 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %222 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = ashr i32 %224, 12
  %226 = and i32 %225, 15
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* %4, align 4
  %229 = ashr i32 %228, 8
  %230 = and i32 %229, 15
  %231 = load i32, i32* %4, align 4
  %232 = and i32 %231, 255
  %233 = call i32 (i32, i8*, i64, ...) @dev_info(i32 %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %227, i32 %230, i32 %232)
  %234 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %235 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %238 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %241 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %244 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %243, i32 0, i32 9
  %245 = load i64, i64* %244, align 8
  %246 = call i32 (i32, i8*, ...) @dev_dbg(i32 %236, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %239, i32 %242, i64 %245)
  %247 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %248 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %247, i32 0, i32 2
  store i32 1, i32* %248, align 8
  %249 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %250 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %249, i32 0, i32 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %250, align 8
  %252 = call i32 @ace_revalidate_disk(%struct.TYPE_11__* %251)
  %253 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %254 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %253, i32 0, i32 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = call i32 @add_disk(%struct.TYPE_11__* %255)
  store i32 0, i32* %2, align 4
  br label %289

257:                                              ; preds = %177
  %258 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %259 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %258, i32 0, i32 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %261, align 8
  %262 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %263 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %262, i32 0, i32 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = call i32 @put_disk(%struct.TYPE_11__* %264)
  br label %266

266:                                              ; preds = %257, %94
  %267 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %268 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %267, i32 0, i32 7
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = call i32 @blk_cleanup_queue(%struct.TYPE_12__* %269)
  %271 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %272 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %271, i32 0, i32 6
  %273 = call i32 @blk_mq_free_tag_set(i32* %272)
  br label %274

274:                                              ; preds = %266, %64
  %275 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %276 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @iounmap(i32 %277)
  br label %279

279:                                              ; preds = %274, %41
  %280 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %281 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %284 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = call i32 (i32, i8*, i64, ...) @dev_info(i32 %282, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %285)
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %279, %208
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_12__*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @alloc_disk(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8 signext) #1

declare dso_local i32 @ace_out_le16(%struct.ace_device*, i32, i32) #1

declare dso_local i32 @ace_in_le16(%struct.ace_device*, i32) #1

declare dso_local i32 @ace_out_8(%struct.ace_device*, i32, i32) #1

declare dso_local i32 @ace_in(%struct.ace_device*, i32) #1

declare dso_local i32 @ace_out(%struct.ace_device*, i32, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.ace_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, ...) #1

declare dso_local i32 @ace_revalidate_disk(%struct.TYPE_11__*) #1

declare dso_local i32 @add_disk(%struct.TYPE_11__*) #1

declare dso_local i32 @put_disk(%struct.TYPE_11__*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_12__*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
