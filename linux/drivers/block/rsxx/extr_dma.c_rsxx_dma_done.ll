; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_dma_ctrl = type { i64, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__*, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.hw_status* }
%struct.hw_status = type { i32, i64, i64 }
%struct.rsxx_dma = type { i32 }

@CR_INTR_DMA_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No tracker for tag %d (idx %d id %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Completing DMA%d(laddr x%x tag %d st: x%x cnt: x%04x) from idx %d.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DMA_ACTIVITY_TIMEOUT = common dso_local global i64 0, align 8
@RSXX_CS_IDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_dma_ctrl*)* @rsxx_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_dma_done(%struct.rsxx_dma_ctrl* %0) #0 {
  %2 = alloca %struct.rsxx_dma_ctrl*, align 8
  %3 = alloca %struct.rsxx_dma*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hw_status*, align 8
  store %struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma_ctrl** %2, align 8
  %9 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.hw_status*, %struct.hw_status** %11, align 8
  store %struct.hw_status* %12, %struct.hw_status** %8, align 8
  %13 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %13, i32 0, i32 5
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %1
  %21 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %22 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %21, i32 0, i32 5
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %30 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %29, i32 0, i32 5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %20, %1
  br label %233

37:                                               ; preds = %28
  %38 = load %struct.hw_status*, %struct.hw_status** %8, align 8
  %39 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %40 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %38, i64 %42
  %44 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le16_to_cpu(i32 %45)
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %149, %37
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %50 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %179

53:                                               ; preds = %47
  %54 = call i32 (...) @rmb()
  %55 = load %struct.hw_status*, %struct.hw_status** %8, align 8
  %56 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %57 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %55, i64 %59
  %61 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  %63 = load %struct.hw_status*, %struct.hw_status** %8, align 8
  %64 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %65 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %63, i64 %67
  %69 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  %71 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %72 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call %struct.rsxx_dma* @get_tracker_dma(i32 %73, i64 %74)
  store %struct.rsxx_dma* %75, %struct.rsxx_dma** %3, align 8
  %76 = load %struct.rsxx_dma*, %struct.rsxx_dma** %3, align 8
  %77 = icmp eq %struct.rsxx_dma* %76, null
  br i1 %77, label %78, label %109

78:                                               ; preds = %53
  %79 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %80 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %79, i32 0, i32 5
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %86 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %85, i32 0, i32 5
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* @CR_INTR_DMA_ALL, align 4
  %89 = call i32 @rsxx_disable_ier(%struct.TYPE_9__* %87, i32 %88)
  %90 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %91 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %90, i32 0, i32 5
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %97 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %96, i32 0, i32 5
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = call i32 @CARD_TO_DEV(%struct.TYPE_9__* %98)
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %102 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %106 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %100, i64 %104, i32 %107)
  br label %233

109:                                              ; preds = %53
  %110 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %111 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %110, i32 0, i32 5
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = call i32 @CARD_TO_DEV(%struct.TYPE_9__* %112)
  %114 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %115 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.rsxx_dma*, %struct.rsxx_dma** %3, align 8
  %118 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %124 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @dev_dbg(i32 %113, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %119, i64 %120, i64 %121, i64 %122, i64 %126)
  %128 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %129 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = call i32 @atomic_dec(i32* %130)
  %132 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %133 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %132, i32 0, i32 7
  %134 = load i64, i64* @jiffies, align 8
  %135 = load i64, i64* @DMA_ACTIVITY_TIMEOUT, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @mod_timer(i32* %133, i64 %136)
  %138 = load i64, i64* %6, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %109
  %141 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %142 = load %struct.rsxx_dma*, %struct.rsxx_dma** %3, align 8
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @rsxx_handle_dma_error(%struct.rsxx_dma_ctrl* %141, %struct.rsxx_dma* %142, i64 %143)
  br label %149

145:                                              ; preds = %109
  %146 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %147 = load %struct.rsxx_dma*, %struct.rsxx_dma** %3, align 8
  %148 = call i32 @rsxx_complete_dma(%struct.rsxx_dma_ctrl* %146, %struct.rsxx_dma* %147, i32 0)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %151 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @push_tracker(i32 %152, i64 %153)
  %155 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %156 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 1
  %160 = load i32, i32* @RSXX_CS_IDX_MASK, align 4
  %161 = sext i32 %160 to i64
  %162 = and i64 %159, %161
  %163 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %164 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %163, i32 0, i32 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  %166 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %167 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load %struct.hw_status*, %struct.hw_status** %8, align 8
  %171 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %172 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %171, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %170, i64 %174
  %176 = getelementptr inbounds %struct.hw_status, %struct.hw_status* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @le16_to_cpu(i32 %177)
  store i64 %178, i64* %5, align 8
  br label %47

179:                                              ; preds = %47
  %180 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %181 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %180, i32 0, i32 5
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = call i32 @dma_intr_coal_auto_tune(%struct.TYPE_9__* %182)
  %184 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %185 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = call i64 @atomic_read(i32* %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %179
  %190 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %191 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %190, i32 0, i32 7
  %192 = call i32 @del_timer_sync(i32* %191)
  br label %193

193:                                              ; preds = %189, %179
  %194 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %195 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %194, i32 0, i32 5
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i64, i64* %4, align 8
  %199 = call i32 @spin_lock_irqsave(i32* %197, i64 %198)
  %200 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %201 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %200, i32 0, i32 5
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %204 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @CR_INTR_DMA(i32 %205)
  %207 = call i32 @rsxx_enable_ier(%struct.TYPE_9__* %202, i32 %206)
  %208 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %209 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %208, i32 0, i32 5
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %4, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  %214 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %215 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %214, i32 0, i32 1
  %216 = call i32 @spin_lock_bh(i32* %215)
  %217 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %218 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %193
  %223 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %224 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %227 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %226, i32 0, i32 2
  %228 = call i32 @queue_work(i32 %225, i32* %227)
  br label %229

229:                                              ; preds = %222, %193
  %230 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %2, align 8
  %231 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %230, i32 0, i32 1
  %232 = call i32 @spin_unlock_bh(i32* %231)
  br label %233

233:                                              ; preds = %229, %78, %36
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.rsxx_dma* @get_tracker_dma(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rsxx_disable_ier(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @rsxx_handle_dma_error(%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*, i64) #1

declare dso_local i32 @rsxx_complete_dma(%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*, i32) #1

declare dso_local i32 @push_tracker(i32, i64) #1

declare dso_local i32 @dma_intr_coal_auto_tune(%struct.TYPE_9__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @rsxx_enable_ier(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CR_INTR_DMA(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
