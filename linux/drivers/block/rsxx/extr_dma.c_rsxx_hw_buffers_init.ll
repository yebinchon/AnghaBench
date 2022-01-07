; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_hw_buffers_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_hw_buffers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rsxx_dma_ctrl = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.TYPE_3__ = type { i64, i32, i32* }

@STATUS_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@COMMAND_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SB_ADD_LO = common dso_local global i64 0, align 8
@SB_ADD_HI = common dso_local global i64 0, align 8
@CB_ADD_LO = common dso_local global i64 0, align 8
@CB_ADD_HI = common dso_local global i64 0, align 8
@HW_STATUS_CNT = common dso_local global i64 0, align 8
@RSXX_MAX_OUTSTANDING_CMDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed reading status cnt x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SW_STATUS_CNT = common dso_local global i64 0, align 8
@HW_CMD_IDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed reading cmd cnt x%x\0A\00", align 1
@SW_CMD_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_hw_buffers_init(%struct.pci_dev* %0, %struct.rsxx_dma_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.rsxx_dma_ctrl*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.rsxx_dma_ctrl* %1, %struct.rsxx_dma_ctrl** %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %9 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %10 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @dma_alloc_coherent(i32* %7, i32 %8, i32* %11, i32 %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32* %14, i32** %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %21 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %22 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @dma_alloc_coherent(i32* %19, i32 %20, i32* %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32* %26, i32** %29, align 8
  %30 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %31 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %37 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %2
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %195

44:                                               ; preds = %35
  %45 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %46 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %50 = call i32 @memset(i32* %48, i32 172, i32 %49)
  %51 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %52 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @lower_32_bits(i32 %54)
  %56 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %57 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SB_ADD_LO, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @iowrite32(i64 %55, i64 %60)
  %62 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %63 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @upper_32_bits(i32 %65)
  %67 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %68 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SB_ADD_HI, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @iowrite32(i64 %66, i64 %71)
  %73 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %74 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %78 = call i32 @memset(i32* %76, i32 131, i32 %77)
  %79 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %80 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @lower_32_bits(i32 %82)
  %84 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %85 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CB_ADD_LO, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @iowrite32(i64 %83, i64 %88)
  %90 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %91 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @upper_32_bits(i32 %93)
  %95 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %96 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CB_ADD_HI, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @iowrite32(i64 %94, i64 %99)
  %101 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %102 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HW_STATUS_CNT, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i8* @ioread32(i64 %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %109 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  %111 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %112 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RSXX_MAX_OUTSTANDING_CMDS, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %44
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 0
  %120 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %121 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @dev_crit(i32* %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %195

127:                                              ; preds = %44
  %128 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %129 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %133 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @HW_STATUS_CNT, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @iowrite32(i64 %131, i64 %136)
  %138 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %139 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %143 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SW_STATUS_CNT, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @iowrite32(i64 %141, i64 %146)
  %148 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %149 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @HW_CMD_IDX, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i8* @ioread32(i64 %152)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %156 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %159 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @RSXX_MAX_OUTSTANDING_CMDS, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %127
  %165 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 0
  %167 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %168 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @dev_crit(i32* %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %195

174:                                              ; preds = %127
  %175 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %176 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %180 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @HW_CMD_IDX, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @iowrite32(i64 %178, i64 %183)
  %185 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %186 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %190 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @SW_CMD_IDX, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @iowrite32(i64 %188, i64 %193)
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %174, %164, %117, %41
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @dev_crit(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
