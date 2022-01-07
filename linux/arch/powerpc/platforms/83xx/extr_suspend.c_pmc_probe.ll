; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_pmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_pmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.pmc_type* }
%struct.pmc_type = type { i64 }
%struct.resource = type { i64 }

@pmc_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@has_deep_sleep = common dso_local global i64 0, align 8
@immrbase = common dso_local global i64 0, align 8
@pmc_dev = common dso_local global %struct.platform_device* null, align 8
@is_pci_agent = common dso_local global i64 0, align 8
@pmc_irq = common dso_local global i64 0, align 8
@pmc_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pmc\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@pmc_regs = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@clock_regs = common dso_local global i8* null, align 8
@IMMR_SYSCR_OFFSET = common dso_local global i64 0, align 8
@syscr_regs = common dso_local global i8* null, align 8
@mpc83xx_suspend_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource, align 8
  %7 = alloca %struct.pmc_type*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @pmc_match, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.of_device_id* @of_match_device(i32 %13, %struct.TYPE_2__* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %4, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %131

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.pmc_type*, %struct.pmc_type** %24, align 8
  store %struct.pmc_type* %25, %struct.pmc_type** %7, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @of_device_is_available(%struct.device_node* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %131

32:                                               ; preds = %22
  %33 = load %struct.pmc_type*, %struct.pmc_type** %7, align 8
  %34 = getelementptr inbounds %struct.pmc_type, %struct.pmc_type* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* @has_deep_sleep, align 8
  %36 = call i64 (...) @get_immrbase()
  store i64 %36, i64* @immrbase, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  store %struct.platform_device* %37, %struct.platform_device** @pmc_dev, align 8
  %38 = call i64 (...) @mpc83xx_is_pci_agent()
  store i64 %38, i64* @is_pci_agent, align 8
  %39 = load i64, i64* @is_pci_agent, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i64, i64* @is_pci_agent, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %131

44:                                               ; preds = %32
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = call i32 @of_address_to_resource(%struct.device_node* %45, i32 0, %struct.resource* %6)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %131

52:                                               ; preds = %44
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i64 @irq_of_parse_and_map(%struct.device_node* %53, i32 0)
  store i64 %54, i64* @pmc_irq, align 8
  %55 = load i64, i64* @pmc_irq, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i64, i64* @pmc_irq, align 8
  %59 = load i32, i32* @pmc_irq_handler, align 4
  %60 = load i32, i32* @IRQF_SHARED, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i32 @request_irq(i64 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.platform_device* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %131

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %52
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @ioremap(i64 %71, i32 1)
  store i8* %72, i8** @pmc_regs, align 8
  %73 = load i8*, i8** @pmc_regs, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %122

78:                                               ; preds = %69
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = call i32 @of_address_to_resource(%struct.device_node* %79, i32 1, %struct.resource* %6)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %119

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @ioremap(i64 %88, i32 1)
  store i8* %89, i8** @clock_regs, align 8
  %90 = load i8*, i8** @clock_regs, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %119

95:                                               ; preds = %86
  %96 = load i64, i64* @has_deep_sleep, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i64, i64* @immrbase, align 8
  %100 = load i64, i64* @IMMR_SYSCR_OFFSET, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i8* @ioremap(i64 %101, i32 1)
  store i8* %102, i8** @syscr_regs, align 8
  %103 = load i8*, i8** @syscr_regs, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %116

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i64, i64* @is_pci_agent, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (...) @mpc83xx_set_agent()
  br label %114

114:                                              ; preds = %112, %109
  %115 = call i32 @suspend_set_ops(i32* @mpc83xx_suspend_ops)
  store i32 0, i32* %2, align 4
  br label %131

116:                                              ; preds = %105
  %117 = load i8*, i8** @clock_regs, align 8
  %118 = call i32 @iounmap(i8* %117)
  br label %119

119:                                              ; preds = %116, %92, %83
  %120 = load i8*, i8** @pmc_regs, align 8
  %121 = call i32 @iounmap(i8* %120)
  br label %122

122:                                              ; preds = %119, %75
  %123 = load i64, i64* @pmc_irq, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i64, i64* @pmc_irq, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = call i32 @free_irq(i64 %126, %struct.platform_device* %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %114, %65, %49, %41, %29, %19
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i64 @get_immrbase(...) #1

declare dso_local i64 @mpc83xx_is_pci_agent(...) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.platform_device*) #1

declare dso_local i8* @ioremap(i64, i32) #1

declare dso_local i32 @mpc83xx_set_agent(...) #1

declare dso_local i32 @suspend_set_ops(i32*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @free_irq(i64, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
