; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_eeh_save_issued_dmas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_eeh_save_issued_dmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rsxx_dma = type { i64, i32, i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RSXX_MAX_OUTSTANDING_CMDS = common dso_local global i32 0, align 4
@HW_CMD_BLK_WRITE = common dso_local global i64 0, align 8
@HW_CMD_BLK_DISCARD = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_eeh_save_issued_dmas(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsxx_dma*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  %9 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %10 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.list_head* @kcalloc(i32 %11, i32 4, i32 %12)
  store %struct.list_head* %13, %struct.list_head** %8, align 8
  %14 = load %struct.list_head*, %struct.list_head** %8, align 8
  %15 = icmp ne %struct.list_head* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %210

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %204, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %23 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %207

26:                                               ; preds = %20
  %27 = load %struct.list_head*, %struct.list_head** %8, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 %29
  %31 = call i32 @INIT_LIST_HEAD(%struct.list_head* %30)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %144, %26
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RSXX_MAX_OUTSTANDING_CMDS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %147

36:                                               ; preds = %32
  %37 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %38 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.rsxx_dma* @get_tracker_dma(i32 %44, i32 %45)
  store %struct.rsxx_dma* %46, %struct.rsxx_dma** %7, align 8
  %47 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %48 = icmp eq %struct.rsxx_dma* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %144

50:                                               ; preds = %36
  %51 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %52 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HW_CMD_BLK_WRITE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %58 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  br label %96

67:                                               ; preds = %50
  %68 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %69 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HW_CMD_BLK_DISCARD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %75 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  br label %95

84:                                               ; preds = %67
  %85 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %86 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %84, %73
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %98 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HW_CMD_BLK_DISCARD, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %96
  %103 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %104 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %108 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %111 = call i32 @get_dma_size(%struct.rsxx_dma* %110)
  %112 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %113 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @HW_CMD_BLK_WRITE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %102
  %118 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %121

119:                                              ; preds = %102
  %120 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 @dma_unmap_page(i32* %106, i32 %109, i32 %111, i32 %122)
  br label %124

124:                                              ; preds = %121, %96
  %125 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %126 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %125, i32 0, i32 1
  %127 = load %struct.list_head*, %struct.list_head** %8, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.list_head, %struct.list_head* %127, i64 %129
  %131 = call i32 @list_add_tail(i32* %126, %struct.list_head* %130)
  %132 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %133 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @push_tracker(i32 %139, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %124, %49
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %32

147:                                              ; preds = %32
  %148 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %149 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = call i32 @spin_lock_bh(i32* %154)
  %156 = load %struct.list_head*, %struct.list_head** %8, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.list_head, %struct.list_head* %156, i64 %158
  %160 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %161 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = call i32 @list_splice(%struct.list_head* %159, i32* %166)
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %170 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = call i32 @atomic_sub(i32 %168, i32* %176)
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %180 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %179, i32 0, i32 1
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, %178
  store i32 %188, i32* %186, align 8
  %189 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %190 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %197 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %196, i32 0, i32 1
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = call i32 @spin_unlock_bh(i32* %202)
  br label %204

204:                                              ; preds = %147
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %20

207:                                              ; preds = %20
  %208 = load %struct.list_head*, %struct.list_head** %8, align 8
  %209 = call i32 @kfree(%struct.list_head* %208)
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %207, %16
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.list_head* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.rsxx_dma* @get_tracker_dma(i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @get_dma_size(%struct.rsxx_dma*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @push_tracker(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_splice(%struct.list_head*, i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
