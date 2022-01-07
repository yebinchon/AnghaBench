; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_resource_is_pcicfg_ioport.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_resource_is_pcicfg_ioport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*)* @resource_is_pcicfg_ioport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resource_is_pcicfg_ioport(%struct.resource* %0) #0 {
  %2 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %2, align 8
  %3 = load %struct.resource*, %struct.resource** %2, align 8
  %4 = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IORESOURCE_IO, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.resource*, %struct.resource** %2, align 8
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 3320
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.resource*, %struct.resource** %2, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3327
  br label %19

19:                                               ; preds = %14, %9, %1
  %20 = phi i1 [ false, %9 ], [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
