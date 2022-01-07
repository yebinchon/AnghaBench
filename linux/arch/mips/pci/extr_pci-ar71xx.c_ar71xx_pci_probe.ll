; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar71xx.c_ar71xx_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar71xx.c_ar71xx_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ar71xx_pci_controller = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32, %struct.resource* }
%struct.resource = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32, %struct.resource* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"cfg_base\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"io_base\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PCI IO space\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mem_base\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"PCI memory space\00", align 1
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_FAST_BACK = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@ar71xx_pci_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ar71xx_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_pci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ar71xx_pci_controller*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ar71xx_pci_controller* @devm_kzalloc(i32* %8, i32 104, i32 %9)
  store %struct.ar71xx_pci_controller* %10, %struct.ar71xx_pci_controller** %4, align 8
  %11 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %12 = icmp ne %struct.ar71xx_pci_controller* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %149

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i8*, i8** @IORESOURCE_MEM, align 8
  %19 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %17, i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %25 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %27 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %33 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %149

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i64 @platform_get_irq(%struct.platform_device* %37, i32 0)
  %39 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %40 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %42 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %149

48:                                               ; preds = %36
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i8*, i8** @IORESOURCE_IO, align 8
  %51 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %49, i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %51, %struct.resource** %5, align 8
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %149

57:                                               ; preds = %48
  %58 = load %struct.resource*, %struct.resource** %5, align 8
  %59 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %60 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  store %struct.resource* %58, %struct.resource** %61, align 8
  %62 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %63 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.resource*, %struct.resource** %5, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %69 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load %struct.resource*, %struct.resource** %5, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %75 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load i8*, i8** @IORESOURCE_IO, align 8
  %78 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %79 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load i8*, i8** @IORESOURCE_MEM, align 8
  %83 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %81, i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %83, %struct.resource** %5, align 8
  %84 = load %struct.resource*, %struct.resource** %5, align 8
  %85 = icmp ne %struct.resource* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %57
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %149

89:                                               ; preds = %57
  %90 = load %struct.resource*, %struct.resource** %5, align 8
  %91 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %92 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  store %struct.resource* %90, %struct.resource** %93, align 8
  %94 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %95 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %96, align 8
  %97 = load %struct.resource*, %struct.resource** %5, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %101 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load %struct.resource*, %struct.resource** %5, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %107 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load i8*, i8** @IORESOURCE_MEM, align 8
  %110 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %111 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = call i32 (...) @ar71xx_pci_reset()
  %114 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %115 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PCI_COMMAND_FAST_BACK, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %6, align 4
  %125 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %126 = load i32, i32* @PCI_COMMAND, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @ar71xx_pci_local_write(%struct.ar71xx_pci_controller* %125, i32 %126, i32 4, i32 %127)
  %129 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %130 = call i32 @ar71xx_pci_check_error(%struct.ar71xx_pci_controller* %129, i32 1)
  %131 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %132 = call i32 @ar71xx_pci_irq_init(%struct.ar71xx_pci_controller* %131)
  %133 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %134 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store i32* @ar71xx_pci_ops, i32** %135, align 8
  %136 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %137 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %136, i32 0, i32 3
  %138 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %139 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %140, align 8
  %141 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %142 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %141, i32 0, i32 2
  %143 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %144 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %145, align 8
  %146 = load %struct.ar71xx_pci_controller*, %struct.ar71xx_pci_controller** %4, align 8
  %147 = getelementptr inbounds %struct.ar71xx_pci_controller, %struct.ar71xx_pci_controller* %146, i32 0, i32 1
  %148 = call i32 @register_pci_controller(%struct.TYPE_6__* %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %89, %86, %54, %45, %31, %13
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.ar71xx_pci_controller* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i8*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @ar71xx_pci_reset(...) #1

declare dso_local i32 @ar71xx_pci_local_write(%struct.ar71xx_pci_controller*, i32, i32, i32) #1

declare dso_local i32 @ar71xx_pci_check_error(%struct.ar71xx_pci_controller*, i32) #1

declare dso_local i32 @ar71xx_pci_irq_init(%struct.ar71xx_pci_controller*) #1

declare dso_local i32 @register_pci_controller(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
