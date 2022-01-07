; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_64.c_pcibios_unmap_io_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_64.c_pcibios_unmap_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, %struct.resource** }
%struct.resource = type { i64, i64 }
%struct.pci_controller = type { i32*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"IO unmapping for PCI-PCI bridge %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"IO unmapping for PHB %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  alloc=0x%p\0A\00", align 1
@_IO_BASE = common dso_local global i64 0, align 8
@init_mm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_unmap_io_space(%struct.pci_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %5 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %6 = icmp eq %struct.pci_bus* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %10 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32* @pci_name(i64 %16)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32 0, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %21 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %20)
  store %struct.pci_controller* %21, %struct.pci_controller** %4, align 8
  %22 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %23 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %33 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %34)
  %36 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %37 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @vunmap(i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %26, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32*) #1

declare dso_local i32* @pci_name(i64) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @vunmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
