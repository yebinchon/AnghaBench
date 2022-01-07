; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_pci_get_npu_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_pci_get_npu_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ibm,npu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @pnv_pci_get_npu_dev(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %38

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.device_node* @of_parse_phandle(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.device_node* %28, %struct.device_node** %6, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %38

32:                                               ; preds = %22
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call %struct.pci_dev* @get_pci_dev(%struct.device_node* %33)
  store %struct.pci_dev* %34, %struct.pci_dev** %7, align 8
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i32 @of_node_put(%struct.device_node* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %37, %struct.pci_dev** %3, align 8
  br label %38

38:                                               ; preds = %32, %31, %21, %14
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  ret %struct.pci_dev* %39
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.pci_dev* @get_pci_dev(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
