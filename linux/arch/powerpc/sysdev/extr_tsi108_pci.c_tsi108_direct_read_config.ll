; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_pci.c_tsi108_direct_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_pci.c_tsi108_direct_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.pci_controller*, i32, i32)* }
%struct.pci_controller = type { i32 }
%struct.pci_bus = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lbzx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"lhbrx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lwbrx\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi108_direct_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pci_controller*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %15)
  store %struct.pci_controller* %16, %struct.pci_controller** %13, align 8
  %17 = load i64 (%struct.pci_controller*, i32, i32)*, i64 (%struct.pci_controller*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %18 = icmp ne i64 (%struct.pci_controller*, i32, i32)* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = load i64 (%struct.pci_controller*, i32, i32)*, i64 (%struct.pci_controller*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %21 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %22 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 %20(%struct.pci_controller* %21, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %29, i32* %6, align 4
  br label %60

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %5
  %32 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %33 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @tsi_mk_config_addr(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 3
  %40 = or i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %12, align 8
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %52 [
    i32 1, label %44
    i32 2, label %48
  ]

44:                                               ; preds = %31
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @__tsi108_read_pci_config(i32 %45, i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %56

48:                                               ; preds = %31
  %49 = load i32, i32* %14, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @__tsi108_read_pci_config(i32 %49, i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %56

52:                                               ; preds = %31
  %53 = load i32, i32* %14, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @__tsi108_read_pci_config(i32 %53, i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %48, %44
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %28
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @tsi_mk_config_addr(i32, i32, i32) #1

declare dso_local i32 @__tsi108_read_pci_config(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
