; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_submit_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.mtip_port*, %struct.TYPE_2__* }
%struct.mtip_port = type { i32, i32*, %struct.mtip_cmd_hdr* }
%struct.mtip_cmd_hdr = type { i64, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }
%struct.mtip_cmd = type { i32, i32, i32, i32, %struct.host_to_dev_fis*, i32, i32 }
%struct.host_to_dev_fis = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.blk_mq_hw_ctx = type { i32 }

@READ = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MTIP_MAX_RETRIES = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_READ = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_WRITE = common dso_local global i32 0, align 4
@MTIP_PF_HOST_CAP_64 = common dso_local global i32 0, align 4
@AHCI_CMD_PREFETCH = common dso_local global i32 0, align 4
@MTIP_PF_PAUSE_IO = common dso_local global i32 0, align 4
@MTIP_PF_ISSUE_CMDS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, %struct.request*, %struct.mtip_cmd*, %struct.blk_mq_hw_ctx*)* @mtip_hw_submit_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_hw_submit_io(%struct.driver_data* %0, %struct.request* %1, %struct.mtip_cmd* %2, %struct.blk_mq_hw_ctx* %3) #0 {
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.mtip_cmd*, align 8
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  %9 = alloca %struct.mtip_cmd_hdr*, align 8
  %10 = alloca %struct.host_to_dev_fis*, align 8
  %11 = alloca %struct.mtip_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.mtip_cmd* %2, %struct.mtip_cmd** %7, align 8
  store %struct.blk_mq_hw_ctx* %3, %struct.blk_mq_hw_ctx** %8, align 8
  %16 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 0
  %18 = load %struct.mtip_port*, %struct.mtip_port** %17, align 8
  %19 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %18, i32 0, i32 2
  %20 = load %struct.mtip_cmd_hdr*, %struct.mtip_cmd_hdr** %19, align 8
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 32, %24
  %26 = getelementptr inbounds %struct.mtip_cmd_hdr, %struct.mtip_cmd_hdr* %20, i64 %25
  store %struct.mtip_cmd_hdr* %26, %struct.mtip_cmd_hdr** %9, align 8
  %27 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %28 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %27, i32 0, i32 0
  %29 = load %struct.mtip_port*, %struct.mtip_port** %28, align 8
  store %struct.mtip_port* %29, %struct.mtip_port** %11, align 8
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = call i64 @rq_data_dir(%struct.request* %30)
  %32 = load i64, i64* @READ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %12, align 4
  %40 = load %struct.request*, %struct.request** %6, align 8
  %41 = call i32 @blk_rq_pos(%struct.request* %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.request*, %struct.request** %6, align 8
  %43 = call i32 @blk_rq_sectors(%struct.request* %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @blk_rq_map_sg(i32 %46, %struct.request* %47, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %53 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @dma_map_sg(i32* %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load %struct.mtip_port*, %struct.mtip_port** %11, align 8
  %63 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %62, i32 0, i32 0
  %64 = call i32 @prefetch(i32* %63)
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @MTIP_MAX_RETRIES, align 4
  %69 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %71, i32 0, i32 4
  %73 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %72, align 8
  store %struct.host_to_dev_fis* %73, %struct.host_to_dev_fis** %10, align 8
  %74 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %75 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %74, i32 0, i32 0
  store i32 39, i32* %75, align 8
  %76 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %77 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %76, i32 0, i32 1
  store i32 128, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %38
  %82 = load i32, i32* @ATA_CMD_FPDMA_READ, align 4
  %83 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %84 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %83, i32 0, i32 16
  store i32 %82, i32* %84, align 8
  br label %89

85:                                               ; preds = %38
  %86 = load i32, i32* @ATA_CMD_FPDMA_WRITE, align 4
  %87 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %88 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %87, i32 0, i32 16
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, 255
  %92 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %93 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  %97 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %98 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %103 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %13, align 4
  %105 = ashr i32 %104, 24
  %106 = and i32 %105, 255
  %107 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %108 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = ashr i32 %109, 32
  %111 = and i32 %110, 255
  %112 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %113 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = ashr i32 %114, 40
  %116 = and i32 %115, 255
  %117 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %118 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 4
  %119 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %120 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %119, i32 0, i32 8
  store i32 64, i32* %120, align 8
  %121 = load i32, i32* %14, align 4
  %122 = and i32 %121, 255
  %123 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %124 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %14, align 4
  %126 = lshr i32 %125, 8
  %127 = and i32 %126, 255
  %128 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %129 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %128, i32 0, i32 10
  store i32 %127, i32* %129, align 8
  %130 = load %struct.request*, %struct.request** %6, align 8
  %131 = getelementptr inbounds %struct.request, %struct.request* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 3
  %134 = load %struct.request*, %struct.request** %6, align 8
  %135 = getelementptr inbounds %struct.request, %struct.request* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 5
  %138 = or i32 %133, %137
  %139 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %140 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %139, i32 0, i32 11
  store i32 %138, i32* %140, align 4
  %141 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %142 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %141, i32 0, i32 15
  store i64 0, i64* %142, align 8
  %143 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %144 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %143, i32 0, i32 14
  store i64 0, i64* %144, align 8
  %145 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %146 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %145, i32 0, i32 13
  store i64 0, i64* %146, align 8
  %147 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %148 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %147, i32 0, i32 12
  store i64 0, i64* %148, align 8
  %149 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %150 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @fill_command_sg(%struct.driver_data* %149, %struct.mtip_cmd* %150, i32 %151)
  %153 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %154 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %89
  %159 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %10, align 8
  %160 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, 128
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %158, %89
  %164 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %165 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = load %struct.mtip_cmd_hdr*, %struct.mtip_cmd_hdr** %9, align 8
  %169 = getelementptr inbounds %struct.mtip_cmd_hdr, %struct.mtip_cmd_hdr* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @MTIP_PF_HOST_CAP_64, align 4
  %171 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %172 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %171, i32 0, i32 0
  %173 = load %struct.mtip_port*, %struct.mtip_port** %172, align 8
  %174 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %173, i32 0, i32 0
  %175 = call i64 @test_bit(i32 %170, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %163
  %178 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = ashr i32 %180, 16
  %182 = ashr i32 %181, 16
  %183 = call i8* @cpu_to_le32(i32 %182)
  %184 = load %struct.mtip_cmd_hdr*, %struct.mtip_cmd_hdr** %9, align 8
  %185 = getelementptr inbounds %struct.mtip_cmd_hdr, %struct.mtip_cmd_hdr* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %177, %163
  %187 = load i32, i32* %15, align 4
  %188 = shl i32 %187, 16
  %189 = or i32 %188, 5
  %190 = load i32, i32* @AHCI_CMD_PREFETCH, align 4
  %191 = or i32 %189, %190
  %192 = call i8* @cpu_to_le32(i32 %191)
  %193 = load %struct.mtip_cmd_hdr*, %struct.mtip_cmd_hdr** %9, align 8
  %194 = getelementptr inbounds %struct.mtip_cmd_hdr, %struct.mtip_cmd_hdr* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.mtip_cmd_hdr*, %struct.mtip_cmd_hdr** %9, align 8
  %196 = getelementptr inbounds %struct.mtip_cmd_hdr, %struct.mtip_cmd_hdr* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load %struct.mtip_port*, %struct.mtip_port** %11, align 8
  %201 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @MTIP_PF_PAUSE_IO, align 4
  %204 = and i32 %202, %203
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %186
  %208 = load %struct.request*, %struct.request** %6, align 8
  %209 = getelementptr inbounds %struct.request, %struct.request* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.mtip_port*, %struct.mtip_port** %11, align 8
  %212 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @set_bit(i32 %210, i32* %213)
  %215 = load i32, i32* @MTIP_PF_ISSUE_CMDS_BIT, align 4
  %216 = load %struct.mtip_port*, %struct.mtip_port** %11, align 8
  %217 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %216, i32 0, i32 0
  %218 = call i32 @set_bit(i32 %215, i32* %217)
  br label %225

219:                                              ; preds = %186
  %220 = load %struct.mtip_port*, %struct.mtip_port** %11, align 8
  %221 = load %struct.request*, %struct.request** %6, align 8
  %222 = getelementptr inbounds %struct.request, %struct.request* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @mtip_issue_ncq_command(%struct.mtip_port* %220, i32 %223)
  br label %225

225:                                              ; preds = %219, %207
  ret void
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @fill_command_sg(%struct.driver_data*, %struct.mtip_cmd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mtip_issue_ncq_command(%struct.mtip_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
