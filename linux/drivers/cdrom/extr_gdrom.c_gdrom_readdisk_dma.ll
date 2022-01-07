; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_readdisk_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_readdisk_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.request = type { i32 }
%struct.packet_command = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@GD_TO_BLK = common dso_local global i32 0, align 4
@GD_SESSION_OFFSET = common dso_local global i32 0, align 4
@GDROM_DMA_STARTADDR_REG = common dso_local global i32 0, align 4
@GDROM_HARD_SECTOR = common dso_local global i32 0, align 4
@GDROM_DMA_LENGTH_REG = common dso_local global i32 0, align 4
@GDROM_DMA_DIRECTION_REG = common dso_local global i32 0, align 4
@GDROM_DMA_ENABLE_REG = common dso_local global i32 0, align 4
@GDROM_ERROR_REG = common dso_local global i32 0, align 4
@GDROM_SECNUM_REG = common dso_local global i32 0, align 4
@GDROM_BCL_REG = common dso_local global i32 0, align 4
@GDROM_BCH_REG = common dso_local global i32 0, align 4
@GDROM_DSEL_REG = common dso_local global i32 0, align 4
@GDROM_INTSEC_REG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GDROM_COM_PACKET = common dso_local global i32 0, align 4
@GDROM_STATUSCOMMAND_REG = common dso_local global i32 0, align 4
@gd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GDROM_DATA_REG = common dso_local global i32 0, align 4
@GDROM_DMA_STATUS_REG = common dso_local global i32 0, align 4
@request_queue = common dso_local global i32 0, align 4
@GDROM_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @gdrom_readdisk_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdrom_readdisk_dma(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.packet_command*, align 8
  %8 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.packet_command* @kzalloc(i32 8, i32 %9)
  store %struct.packet_command* %10, %struct.packet_command** %7, align 8
  %11 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %12 = icmp ne %struct.packet_command* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %14, i32* %2, align 4
  br label %186

15:                                               ; preds = %1
  %16 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 48, i32* %19, align 4
  %20 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 32, i32* %23, align 4
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = call i32 @blk_rq_pos(%struct.request* %24)
  %26 = load i32, i32* @GD_TO_BLK, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* @GD_SESSION_OFFSET, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.request*, %struct.request** %3, align 8
  %31 = call i32 @blk_rq_sectors(%struct.request* %30)
  %32 = load i32, i32* @GD_TO_BLK, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.request*, %struct.request** %3, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bio_data(i32 %36)
  %38 = call i32 @virt_to_phys(i32 %37)
  %39 = load i32, i32* @GDROM_DMA_STARTADDR_REG, align 4
  %40 = call i32 @__raw_writel(i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GDROM_HARD_SECTOR, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @GDROM_DMA_LENGTH_REG, align 4
  %45 = call i32 @__raw_writel(i32 %43, i32 %44)
  %46 = load i32, i32* @GDROM_DMA_DIRECTION_REG, align 4
  %47 = call i32 @__raw_writel(i32 1, i32 %46)
  %48 = load i32, i32* @GDROM_DMA_ENABLE_REG, align 4
  %49 = call i32 @__raw_writel(i32 1, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %61 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 255
  %66 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %67 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = ashr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %74 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %81 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 9
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 255
  %86 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %87 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 10
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @GDROM_ERROR_REG, align 4
  %91 = call i32 @__raw_writeb(i32 1, i32 %90)
  %92 = load i32, i32* @GDROM_SECNUM_REG, align 4
  %93 = call i32 @__raw_writeb(i32 0, i32 %92)
  %94 = load i32, i32* @GDROM_BCL_REG, align 4
  %95 = call i32 @__raw_writeb(i32 0, i32 %94)
  %96 = load i32, i32* @GDROM_BCH_REG, align 4
  %97 = call i32 @__raw_writeb(i32 0, i32 %96)
  %98 = load i32, i32* @GDROM_DSEL_REG, align 4
  %99 = call i32 @__raw_writeb(i32 0, i32 %98)
  %100 = load i32, i32* @GDROM_INTSEC_REG, align 4
  %101 = call i32 @__raw_writeb(i32 0, i32 %100)
  %102 = load i32, i32* @jiffies, align 4
  %103 = load i32, i32* @HZ, align 4
  %104 = sdiv i32 %103, 2
  %105 = add nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %117, %15
  %108 = call i64 (...) @gdrom_is_busy()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @jiffies, align 4
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @time_before(i32 %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %110, %107
  %116 = phi i1 [ false, %107 ], [ %114, %110 ]
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  %118 = call i32 (...) @cpu_relax()
  br label %107

119:                                              ; preds = %115
  %120 = load i32, i32* @GDROM_COM_PACKET, align 4
  %121 = load i32, i32* @GDROM_STATUSCOMMAND_REG, align 4
  %122 = call i32 @__raw_writeb(i32 %120, i32 %121)
  %123 = load i32, i32* @jiffies, align 4
  %124 = load i32, i32* @HZ, align 4
  %125 = sdiv i32 %124, 2
  %126 = add nsw i32 %123, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %8, align 8
  br label %128

128:                                              ; preds = %138, %119
  %129 = call i64 (...) @gdrom_is_busy()
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* @jiffies, align 4
  %133 = load i64, i64* %8, align 8
  %134 = call i64 @time_before(i32 %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %131, %128
  %137 = phi i1 [ false, %128 ], [ %135, %131 ]
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = call i32 (...) @cpu_relax()
  br label %128

140:                                              ; preds = %136
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 1), align 4
  %141 = load i32, i32* @GDROM_DATA_REG, align 4
  %142 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %143 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %142, i32 0, i32 0
  %144 = call i32 @outsw(i32 %141, i32** %143, i32 6)
  %145 = load i32, i32* @jiffies, align 4
  %146 = load i32, i32* @HZ, align 4
  %147 = sdiv i32 %146, 2
  %148 = add nsw i32 %145, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %161, %140
  %151 = load i32, i32* @GDROM_DMA_STATUS_REG, align 4
  %152 = call i64 @__raw_readb(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32, i32* @jiffies, align 4
  %156 = load i64, i64* %8, align 8
  %157 = call i64 @time_before(i32 %155, i64 %156)
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %154, %150
  %160 = phi i1 [ false, %150 ], [ %158, %154 ]
  br i1 %160, label %161, label %163

161:                                              ; preds = %159
  %162 = call i32 (...) @cpu_relax()
  br label %150

163:                                              ; preds = %159
  %164 = load i32, i32* @GDROM_DMA_STATUS_REG, align 4
  %165 = call i32 @__raw_writeb(i32 1, i32 %164)
  %166 = load i32, i32* @request_queue, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 1), align 4
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* @GDROM_DEFAULT_TIMEOUT, align 4
  %171 = call i32 @wait_event_interruptible_timeout(i32 %166, i32 %169, i32 %170)
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 1), align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* @BLK_STS_IOERR, align 4
  br label %178

176:                                              ; preds = %163
  %177 = load i32, i32* @BLK_STS_OK, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  store i32 %179, i32* %6, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %180 = load %struct.request*, %struct.request** %3, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @blk_mq_end_request(%struct.request* %180, i32 %181)
  %183 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %184 = call i32 @kfree(%struct.packet_command* %183)
  %185 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %178, %13
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.packet_command* @kzalloc(i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @bio_data(i32) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i64 @gdrom_is_busy(...) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @outsw(i32, i32**, i32) #1

declare dso_local i64 @__raw_readb(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @kfree(%struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
