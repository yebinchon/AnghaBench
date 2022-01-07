; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa_cplds_irqs.c_cplds_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa_cplds_irqs.c_cplds_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }
%struct.cplds = type { i64, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@FPGA_IRQ_MASK_EN = common dso_local global i64 0, align 8
@FPGA_IRQ_SET_CLR = common dso_local global i64 0, align 8
@cplds_irq_handler = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"couldn't request main irq%d: %d\0A\00", align 1
@CPLDS_NB_IRQ = common dso_local global i32 0, align 4
@cplds_irq_domain_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"couldn't create the irq mapping %d..%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cplds_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cplds_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.cplds*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cplds* @devm_kzalloc(%struct.TYPE_6__* %10, i32 32, i32 %11)
  store %struct.cplds* %12, %struct.cplds** %5, align 8
  %13 = load %struct.cplds*, %struct.cplds** %5, align 8
  %14 = icmp ne %struct.cplds* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %162

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i8* @platform_get_irq(%struct.platform_device* %19, i32 0)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.cplds*, %struct.cplds** %5, align 8
  %23 = getelementptr inbounds %struct.cplds, %struct.cplds* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.cplds*, %struct.cplds** %5, align 8
  %25 = getelementptr inbounds %struct.cplds, %struct.cplds* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.cplds*, %struct.cplds** %5, align 8
  %30 = getelementptr inbounds %struct.cplds, %struct.cplds* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %162

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i8* @platform_get_irq(%struct.platform_device* %34, i32 1)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %4, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = call i64 @devm_ioremap_resource(%struct.TYPE_6__* %45, %struct.resource* %46)
  %48 = load %struct.cplds*, %struct.cplds** %5, align 8
  %49 = getelementptr inbounds %struct.cplds, %struct.cplds* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cplds*, %struct.cplds** %5, align 8
  %51 = getelementptr inbounds %struct.cplds, %struct.cplds* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @IS_ERR(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.cplds*, %struct.cplds** %5, align 8
  %57 = getelementptr inbounds %struct.cplds, %struct.cplds* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @PTR_ERR(i64 %58)
  store i32 %59, i32* %2, align 4
  br label %162

60:                                               ; preds = %40
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.cplds*, %struct.cplds** %5, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.cplds* %62)
  %64 = load %struct.cplds*, %struct.cplds** %5, align 8
  %65 = getelementptr inbounds %struct.cplds, %struct.cplds* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cplds*, %struct.cplds** %5, align 8
  %68 = getelementptr inbounds %struct.cplds, %struct.cplds* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FPGA_IRQ_MASK_EN, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.cplds*, %struct.cplds** %5, align 8
  %74 = getelementptr inbounds %struct.cplds, %struct.cplds* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FPGA_IRQ_SET_CLR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 0, i64 %77)
  %79 = load %struct.cplds*, %struct.cplds** %5, align 8
  %80 = getelementptr inbounds %struct.cplds, %struct.cplds* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @irq_get_trigger_type(i32 %82)
  store i64 %83, i64* %8, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.cplds*, %struct.cplds** %5, align 8
  %87 = getelementptr inbounds %struct.cplds, %struct.cplds* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @cplds_irq_handler, align 4
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_name(%struct.TYPE_6__* %93)
  %95 = load %struct.cplds*, %struct.cplds** %5, align 8
  %96 = call i32 @devm_request_irq(%struct.TYPE_6__* %85, i32 %89, i32 %90, i64 %91, i32 %94, %struct.cplds* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @ENOSYS, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %60
  %102 = load i32, i32* @EPROBE_DEFER, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %162

104:                                              ; preds = %60
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.cplds*, %struct.cplds** %5, align 8
  %111 = getelementptr inbounds %struct.cplds, %struct.cplds* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @dev_err(%struct.TYPE_6__* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %162

117:                                              ; preds = %104
  %118 = load %struct.cplds*, %struct.cplds** %5, align 8
  %119 = getelementptr inbounds %struct.cplds, %struct.cplds* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @irq_set_irq_wake(i32 %121, i32 1)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CPLDS_NB_IRQ, align 4
  %128 = load %struct.cplds*, %struct.cplds** %5, align 8
  %129 = call i32 @irq_domain_add_linear(i32 %126, i32 %127, i32* @cplds_irq_domain_ops, %struct.cplds* %128)
  %130 = load %struct.cplds*, %struct.cplds** %5, align 8
  %131 = getelementptr inbounds %struct.cplds, %struct.cplds* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.cplds*, %struct.cplds** %5, align 8
  %133 = getelementptr inbounds %struct.cplds, %struct.cplds* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %117
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %162

139:                                              ; preds = %117
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %139
  %143 = load %struct.cplds*, %struct.cplds** %5, align 8
  %144 = getelementptr inbounds %struct.cplds, %struct.cplds* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @CPLDS_NB_IRQ, align 4
  %148 = call i32 @irq_create_strict_mappings(i32 %145, i32 %146, i32 0, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @CPLDS_NB_IRQ, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i32 @dev_err(%struct.TYPE_6__* %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %157)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %162

160:                                              ; preds = %142
  br label %161

161:                                              ; preds = %160, %139
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %151, %136, %107, %101, %55, %28, %15
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.cplds* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cplds*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @irq_get_trigger_type(i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_6__*, i32, i32, i64, i32, %struct.cplds*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.cplds*) #1

declare dso_local i32 @irq_create_strict_mappings(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
