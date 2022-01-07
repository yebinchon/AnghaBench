; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-legacy.c_pcibios_align_resource.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-legacy.c_pcibios_align_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }
%struct.pci_dev = type { %struct.pci_controller* }
%struct.pci_controller = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCIBIOS_MIN_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCIBIOS_MIN_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_align_resource(i8* %0, %struct.resource* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.pci_controller*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.pci_dev*
  store %struct.pci_dev* %13, %struct.pci_dev** %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load %struct.pci_controller*, %struct.pci_controller** %15, align 8
  store %struct.pci_controller* %16, %struct.pci_controller** %10, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IORESOURCE_IO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PCIBIOS_MIN_IO, align 4
  %29 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %30 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %28, %33
  %35 = icmp slt i32 %27, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32, i32* @PCIBIOS_MIN_IO, align 4
  %38 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %39 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %37, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %36, %26
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 768
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1023
  %51 = and i32 %50, -1024
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %80

53:                                               ; preds = %4
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PCIBIOS_MIN_MEM, align 4
  %63 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %64 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %62, %67
  %69 = icmp slt i32 %61, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i32, i32* @PCIBIOS_MIN_MEM, align 4
  %72 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %73 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %71, %76
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %70, %60
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
