; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.carm_port* }
%struct.carm_port = type { i32, %struct.carm_host* }
%struct.carm_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.carm_request = type { i32, i32, %struct.scatterlist*, i8* }
%struct.scatterlist = type { i32 }
%struct.carm_msg_rw = type { i32, %struct.carm_msg_sg*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.carm_msg_sg = type { i8*, i8* }

@CARM_MAX_REQ_SG = common dso_local global i32 0, align 4
@REQ_OP_DRV_OUT = common dso_local global i64 0, align 8
@CARM_MAX_HOST_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"build msg\0A\00", align 1
@WRITE = common dso_local global i64 0, align 8
@CARM_MSG_WRITE = common dso_local global i8* null, align 8
@CARM_MSG_READ = common dso_local global i8* null, align 8
@SGT_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"send msg, tag == %u\0A\00", align 1
@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @carm_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.carm_port*, align 8
  %9 = alloca %struct.carm_host*, align 8
  %10 = alloca %struct.carm_request*, align 8
  %11 = alloca %struct.carm_msg_rw*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.carm_msg_sg*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %19 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %19, i32 0, i32 0
  %21 = load %struct.request_queue*, %struct.request_queue** %20, align 8
  store %struct.request_queue* %21, %struct.request_queue** %6, align 8
  %22 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %23 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %22, i32 0, i32 0
  %24 = load %struct.request*, %struct.request** %23, align 8
  store %struct.request* %24, %struct.request** %7, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  %27 = load %struct.carm_port*, %struct.carm_port** %26, align 8
  store %struct.carm_port* %27, %struct.carm_port** %8, align 8
  %28 = load %struct.carm_port*, %struct.carm_port** %8, align 8
  %29 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %28, i32 0, i32 1
  %30 = load %struct.carm_host*, %struct.carm_host** %29, align 8
  store %struct.carm_host* %30, %struct.carm_host** %9, align 8
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = call %struct.carm_request* @blk_mq_rq_to_pdu(%struct.request* %31)
  store %struct.carm_request* %32, %struct.carm_request** %10, align 8
  store i32 0, i32* %14, align 4
  %33 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %34 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %36 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %35, i32 0, i32 2
  %37 = load %struct.scatterlist*, %struct.scatterlist** %36, align 8
  %38 = load i32, i32* @CARM_MAX_REQ_SG, align 4
  %39 = call i32 @sg_init_table(%struct.scatterlist* %37, i32 %38)
  %40 = load %struct.request*, %struct.request** %7, align 8
  %41 = call i32 @blk_mq_start_request(%struct.request* %40)
  %42 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %43 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.request*, %struct.request** %7, align 8
  %46 = call i64 @req_op(%struct.request* %45)
  %47 = load i64, i64* @REQ_OP_DRV_OUT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  br label %203

50:                                               ; preds = %2
  %51 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %52 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %51, i32 0, i32 2
  %53 = load %struct.scatterlist*, %struct.scatterlist** %52, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i64 0
  store %struct.scatterlist* %54, %struct.scatterlist** %12, align 8
  %55 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %56 = load %struct.request*, %struct.request** %7, align 8
  %57 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %58 = call i32 @blk_rq_map_sg(%struct.request_queue* %55, %struct.request* %56, %struct.scatterlist* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %247

62:                                               ; preds = %50
  %63 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %64 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.request*, %struct.request** %7, align 8
  %70 = call i32 @carm_rq_dir(%struct.request* %69)
  %71 = call i32 @dma_map_sg(i32* %66, %struct.scatterlist* %67, i32 %68, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %247

75:                                               ; preds = %62
  %76 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %77 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CARM_MAX_HOST_SG, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %227

84:                                               ; preds = %75
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %87 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %90 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = call i32 (i8*, ...) @VPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %95 = load %struct.request*, %struct.request** %7, align 8
  %96 = getelementptr inbounds %struct.request, %struct.request* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @carm_ref_msg(%struct.carm_host* %94, i32 %97)
  %99 = inttoptr i64 %98 to %struct.carm_msg_rw*
  store %struct.carm_msg_rw* %99, %struct.carm_msg_rw** %11, align 8
  %100 = load %struct.request*, %struct.request** %7, align 8
  %101 = call i64 @rq_data_dir(%struct.request* %100)
  %102 = load i64, i64* @WRITE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %84
  %105 = load i8*, i8** @CARM_MSG_WRITE, align 8
  %106 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %107 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %106, i32 0, i32 8
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @CARM_MSG_WRITE, align 8
  %109 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %110 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  br label %118

111:                                              ; preds = %84
  %112 = load i8*, i8** @CARM_MSG_READ, align 8
  %113 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %114 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %113, i32 0, i32 8
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @CARM_MSG_READ, align 8
  %116 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %117 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %111, %104
  %119 = load %struct.carm_port*, %struct.carm_port** %8, align 8
  %120 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %123 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %126 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @SGT_32BIT, align 4
  %128 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %129 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 8
  %130 = load %struct.request*, %struct.request** %7, align 8
  %131 = getelementptr inbounds %struct.request, %struct.request* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @TAG_ENCODE(i32 %132)
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %136 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.request*, %struct.request** %7, align 8
  %138 = call i32 @blk_rq_pos(%struct.request* %137)
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %141 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %140, i32 0, i32 4
  store i8* %139, i8** %141, align 8
  %142 = load %struct.request*, %struct.request** %7, align 8
  %143 = call i32 @blk_rq_pos(%struct.request* %142)
  %144 = ashr i32 %143, 16
  %145 = ashr i32 %144, 16
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %149 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load %struct.request*, %struct.request** %7, align 8
  %151 = call i32 @blk_rq_sectors(%struct.request* %150)
  %152 = call i8* @cpu_to_le16(i32 %151)
  %153 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %154 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  store i32 56, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %190, %118
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %193

159:                                              ; preds = %155
  %160 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %11, align 8
  %161 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %160, i32 0, i32 1
  %162 = load %struct.carm_msg_sg*, %struct.carm_msg_sg** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.carm_msg_sg, %struct.carm_msg_sg* %162, i64 %164
  store %struct.carm_msg_sg* %165, %struct.carm_msg_sg** %18, align 8
  %166 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %167 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %166, i32 0, i32 2
  %168 = load %struct.scatterlist*, %struct.scatterlist** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %168, i64 %170
  %172 = call i32 @sg_dma_address(%struct.scatterlist* %171)
  %173 = call i8* @cpu_to_le32(i32 %172)
  %174 = load %struct.carm_msg_sg*, %struct.carm_msg_sg** %18, align 8
  %175 = getelementptr inbounds %struct.carm_msg_sg, %struct.carm_msg_sg* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %177 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %176, i32 0, i32 2
  %178 = load %struct.scatterlist*, %struct.scatterlist** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %178, i64 %180
  %182 = call i32 @sg_dma_len(%struct.scatterlist* %181)
  %183 = call i8* @cpu_to_le32(i32 %182)
  %184 = load %struct.carm_msg_sg*, %struct.carm_msg_sg** %18, align 8
  %185 = getelementptr inbounds %struct.carm_msg_sg, %struct.carm_msg_sg* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = add i64 %187, 16
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %16, align 4
  br label %190

190:                                              ; preds = %159
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %13, align 4
  br label %155

193:                                              ; preds = %155
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @carm_lookup_bucket(i32 %194)
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp slt i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @BUG_ON(i32 %198)
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %202 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %193, %49
  %204 = load %struct.request*, %struct.request** %7, align 8
  %205 = getelementptr inbounds %struct.request, %struct.request* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, ...) @VPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %206)
  %208 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %209 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %210 = load %struct.request*, %struct.request** %7, align 8
  %211 = getelementptr inbounds %struct.request, %struct.request* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @carm_send_msg(%struct.carm_host* %208, %struct.carm_request* %209, i32 %212)
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %203
  %217 = load i32, i32* %14, align 4
  %218 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %219 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %227

222:                                              ; preds = %203
  %223 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %224 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %223, i32 0, i32 1
  %225 = call i32 @spin_unlock_irq(i32* %224)
  %226 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %226, i32* %3, align 4
  br label %254

227:                                              ; preds = %216, %83
  %228 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %229 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %228, i32 0, i32 2
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %233 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %232, i32 0, i32 2
  %234 = load %struct.scatterlist*, %struct.scatterlist** %233, align 8
  %235 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %234, i64 0
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.request*, %struct.request** %7, align 8
  %238 = call i32 @carm_rq_dir(%struct.request* %237)
  %239 = call i32 @dma_unmap_sg(i32* %231, %struct.scatterlist* %235, i32 %236, i32 %238)
  %240 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %241 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %242 = call i32 @carm_push_q(%struct.carm_host* %240, %struct.request_queue* %241)
  %243 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %244 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %243, i32 0, i32 1
  %245 = call i32 @spin_unlock_irq(i32* %244)
  %246 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %246, i32* %3, align 4
  br label %254

247:                                              ; preds = %74, %61
  %248 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %249 = call i32 @carm_round_robin(%struct.carm_host* %248)
  %250 = load %struct.carm_host*, %struct.carm_host** %9, align 8
  %251 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %250, i32 0, i32 1
  %252 = call i32 @spin_unlock_irq(i32* %251)
  %253 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %247, %227, %222
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local %struct.carm_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i32 @blk_rq_map_sg(%struct.request_queue*, %struct.request*, %struct.scatterlist*) #1

declare dso_local i32 @dma_map_sg(i32*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @carm_rq_dir(%struct.request*) #1

declare dso_local i32 @VPRINTK(i8*, ...) #1

declare dso_local i64 @carm_ref_msg(%struct.carm_host*, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @TAG_ENCODE(i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @carm_lookup_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @carm_send_msg(%struct.carm_host*, %struct.carm_request*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dma_unmap_sg(i32*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @carm_push_q(%struct.carm_host*, %struct.request_queue*) #1

declare dso_local i32 @carm_round_robin(%struct.carm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
