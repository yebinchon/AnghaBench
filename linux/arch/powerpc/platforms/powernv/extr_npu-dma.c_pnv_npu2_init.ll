; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_npu2_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_npu2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { %struct.npu* }
%struct.npu = type { i32 }

@pnv_npu2_init.npu_index = internal global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NV_MAX_NPUS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_npu2_init(%struct.pci_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca %struct.npu*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.npu* @kzalloc(i32 4, i32 %6)
  store %struct.npu* %7, %struct.npu** %4, align 8
  %8 = load %struct.npu*, %struct.npu** %4, align 8
  %9 = icmp ne %struct.npu* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @pnv_npu2_init.npu_index, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @pnv_npu2_init.npu_index, align 4
  %16 = load i32, i32* @pnv_npu2_init.npu_index, align 4
  %17 = load i32, i32* @NV_MAX_NPUS, align 4
  %18 = icmp sge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %32

25:                                               ; preds = %13
  %26 = load i32, i32* @pnv_npu2_init.npu_index, align 4
  %27 = load %struct.npu*, %struct.npu** %4, align 8
  %28 = getelementptr inbounds %struct.npu, %struct.npu* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.npu*, %struct.npu** %4, align 8
  %30 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %31 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %30, i32 0, i32 0
  store %struct.npu* %29, %struct.npu** %31, align 8
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.npu*, %struct.npu** %4, align 8
  %34 = call i32 @kfree(%struct.npu* %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %25, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.npu* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.npu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
