; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/chrp/extr_pci.c_rtas_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/chrp/extr_pci.c_rtas_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_controller = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"read-pci-config\00", align 1
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @rtas_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pci_controller*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %16 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %15)
  store %struct.pci_controller* %16, %struct.pci_controller** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 255
  %21 = shl i32 %20, 8
  %22 = or i32 %18, %21
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pci_controller*, %struct.pci_controller** %11, align 8
  %27 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = and i32 %29, 255
  %31 = shl i32 %30, 16
  %32 = or i32 %22, %31
  %33 = load %struct.pci_controller*, %struct.pci_controller** %11, align 8
  %34 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 24
  %37 = or i32 %32, %36
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %39 = call i32 @rtas_token(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @rtas_call(i32 %39, i32 2, i32 2, i32* %13, i64 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  br label %51

49:                                               ; preds = %5
  %50 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  ret i32 %52
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @rtas_token(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
