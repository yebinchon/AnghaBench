; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_setup_phb_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_setup_phb_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i64*, %struct.resource*, i32, i32, %struct.resource }
%struct.resource = type { i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"PCI: I/O resource not set for host bridge %pOF (domain %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PCI: PHB IO resource    = %pR off 0x%08llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"PCI: PHB MEM resource %d = %pR off 0x%08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_controller*, %struct.list_head*)* @pcibios_setup_phb_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcibios_setup_phb_resources(%struct.pci_controller* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %8 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %9 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %8, i32 0, i32 4
  store %struct.resource* %9, %struct.resource** %5, align 8
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %16 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %19 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %24 = call i64 @pcibios_io_space_offset(%struct.pci_controller* %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %25, i64 %26)
  %28 = load %struct.list_head*, %struct.list_head** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @pci_add_resource_offset(%struct.list_head* %28, %struct.resource* %29, i64 %30)
  br label %32

32:                                               ; preds = %22, %14
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %38 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %37, i32 0, i32 1
  %39 = load %struct.resource*, %struct.resource** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %39, i64 %41
  store %struct.resource* %42, %struct.resource** %5, align 8
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %64

48:                                               ; preds = %36
  %49 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %50 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %56, %struct.resource* %57, i64 %58)
  %60 = load %struct.list_head*, %struct.list_head** %4, align 8
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @pci_add_resource_offset(%struct.list_head* %60, %struct.resource* %61, i64 %62)
  br label %64

64:                                               ; preds = %48, %47
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %33

67:                                               ; preds = %33
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @pcibios_io_space_offset(%struct.pci_controller*) #1

declare dso_local i32 @pci_add_resource_offset(%struct.list_head*, %struct.resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
