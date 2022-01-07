; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_init_dev_archdata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_init_dev_archdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_archdata = type { i32, %struct.platform_device*, i8*, i8*, i8* }
%struct.platform_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_archdata*, i8*, i8*, i8*, %struct.platform_device*, i32)* @pci_init_dev_archdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_init_dev_archdata(%struct.dev_archdata* %0, i8* %1, i8* %2, i8* %3, %struct.platform_device* %4, i32 %5) #0 {
  %7 = alloca %struct.dev_archdata*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca i32, align 4
  store %struct.dev_archdata* %0, %struct.dev_archdata** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.platform_device* %4, %struct.platform_device** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.dev_archdata*, %struct.dev_archdata** %7, align 8
  %15 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.dev_archdata*, %struct.dev_archdata** %7, align 8
  %18 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.dev_archdata*, %struct.dev_archdata** %7, align 8
  %21 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %23 = load %struct.dev_archdata*, %struct.dev_archdata** %7, align 8
  %24 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %23, i32 0, i32 1
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.dev_archdata*, %struct.dev_archdata** %7, align 8
  %27 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
