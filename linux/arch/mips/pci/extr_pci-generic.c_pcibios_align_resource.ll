; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-generic.c_pcibios_align_resource.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-generic.c_pcibios_align_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_host_bridge = type { i32 (%struct.pci_dev.0*, %struct.resource*, i32, i32, i32)* }
%struct.pci_dev.0 = type opaque

@IORESOURCE_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_align_resource(i8* %0, %struct.resource* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_host_bridge*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.pci_dev*
  store %struct.pci_dev* %14, %struct.pci_dev** %10, align 8
  %15 = load %struct.resource*, %struct.resource** %7, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.resource*, %struct.resource** %7, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IORESOURCE_IO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1023
  %31 = and i32 %30, -1024
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %24, %4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %43)
  store %struct.pci_host_bridge* %44, %struct.pci_host_bridge** %12, align 8
  %45 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %12, align 8
  %46 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %45, i32 0, i32 0
  %47 = load i32 (%struct.pci_dev.0*, %struct.resource*, i32, i32, i32)*, i32 (%struct.pci_dev.0*, %struct.resource*, i32, i32, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.pci_dev.0*, %struct.resource*, i32, i32, i32)* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %32
  %50 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %12, align 8
  %51 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %50, i32 0, i32 0
  %52 = load i32 (%struct.pci_dev.0*, %struct.resource*, i32, i32, i32)*, i32 (%struct.pci_dev.0*, %struct.resource*, i32, i32, i32)** %51, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %54 = bitcast %struct.pci_dev* %53 to %struct.pci_dev.0*
  %55 = load %struct.resource*, %struct.resource** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 %52(%struct.pci_dev.0* %54, %struct.resource* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %62

60:                                               ; preds = %32
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %49
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
