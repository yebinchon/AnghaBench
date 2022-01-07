; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.pci_device_id = type { i32 }
%struct.bcma_bus = type { i32, i32, %struct.pci_dev*, %struct.TYPE_4__, i32*, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PCI card detected, they are not supported.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BCMA_HOSTTYPE_PCI = common dso_local global i32 0, align 4
@bcma_host_pci_ops = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @bcma_host_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_host_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.bcma_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bcma_bus* @kzalloc(i32 48, i32 %12)
  store %struct.bcma_bus* %13, %struct.bcma_bus** %6, align 8
  %14 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %15 = icmp ne %struct.bcma_bus* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %139

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %156

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = call i8* @dev_name(i32* %25)
  store i8* %26, i8** %8, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %38, %31, %23
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @pci_request_regions(%struct.pci_dev* %45, i8* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %153

51:                                               ; preds = %44
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_set_master(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %54, i32 64, i32* %9)
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 65280
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, -65281
  %63 = call i32 @pci_write_config_dword(%struct.pci_dev* %60, i32 64, i32 %62)
  br label %64

64:                                               ; preds = %59, %51
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i32 @pci_is_pcie(%struct.pci_dev* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %70 = call i32 @bcma_err(%struct.bcma_bus* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %150

73:                                               ; preds = %64
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 2
  %76 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %77 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %76, i32 0, i32 6
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32 @pci_iomap(%struct.pci_dev* %80, i32 0, i64 -1)
  %82 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %83 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %85 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %73
  br label %150

89:                                               ; preds = %73
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %92 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %91, i32 0, i32 2
  store %struct.pci_dev* %90, %struct.pci_dev** %92, align 8
  %93 = load i32, i32* @BCMA_HOSTTYPE_PCI, align 4
  %94 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %95 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %97 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %96, i32 0, i32 4
  store i32* @bcma_host_pci_ops, i32** %97, align 8
  %98 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %99 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %98, i32 0, i32 2
  %100 = load %struct.pci_dev*, %struct.pci_dev** %99, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %104 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %107 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %106, i32 0, i32 2
  %108 = load %struct.pci_dev*, %struct.pci_dev** %107, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %112 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %115 = call i32 @bcma_init_bus(%struct.bcma_bus* %114)
  %116 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %117 = call i32 @bcma_bus_scan(%struct.bcma_bus* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %89
  br label %144

121:                                              ; preds = %89
  %122 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %123 = load i32, i32* @BCMA_CORE_PCIE2, align 4
  %124 = call i64 @bcma_find_core(%struct.bcma_bus* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %128 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %131 = call i32 @bcma_bus_register(%struct.bcma_bus* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %141

135:                                              ; preds = %129
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %138 = call i32 @pci_set_drvdata(%struct.pci_dev* %136, %struct.bcma_bus* %137)
  br label %139

139:                                              ; preds = %135, %16
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %160

141:                                              ; preds = %134
  %142 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %143 = call i32 @bcma_unregister_cores(%struct.bcma_bus* %142)
  br label %144

144:                                              ; preds = %141, %120
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %147 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @pci_iounmap(%struct.pci_dev* %145, i32 %148)
  br label %150

150:                                              ; preds = %144, %88, %68
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = call i32 @pci_release_regions(%struct.pci_dev* %151)
  br label %153

153:                                              ; preds = %150, %50
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = call i32 @pci_disable_device(%struct.pci_dev* %154)
  br label %156

156:                                              ; preds = %153, %22
  %157 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %158 = call i32 @kfree(%struct.bcma_bus* %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %139
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.bcma_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @bcma_init_bus(%struct.bcma_bus*) #1

declare dso_local i32 @bcma_bus_scan(%struct.bcma_bus*) #1

declare dso_local i64 @bcma_find_core(%struct.bcma_bus*, i32) #1

declare dso_local i32 @bcma_bus_register(%struct.bcma_bus*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.bcma_bus*) #1

declare dso_local i32 @bcma_unregister_cores(%struct.bcma_bus*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.bcma_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
