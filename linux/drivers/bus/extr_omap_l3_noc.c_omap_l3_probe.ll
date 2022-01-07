; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_omap_l3_noc.c_omap_l3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_omap_l3_noc.c_omap_l3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_l3 = type { i32, i32, i32, i32*, i32* }
%struct.platform_device = type { i32 }
%struct.of_device_id = type { i32 }
%struct.resource = type { i32 }

@omap_l3_probe.l3 = internal global %struct.omap_l3* null, align 8
@l3_noc_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"OF data missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@L3_BASE_IS_SUBMODULE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ioremap %d failed\0A\00", align 1
@l3_interrupt_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"l3-dbg-irq\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"request_irq failed for %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"l3-app-irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_l3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_l3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @l3_noc_match, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.of_device_id* @of_match_device(i32 %9, i32* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %4, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %176

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.omap_l3* @devm_kzalloc(i32* %23, i32 32, i32 %24)
  store %struct.omap_l3* %25, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %26 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %27 = icmp ne %struct.omap_l3* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %176

31:                                               ; preds = %21
  %32 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %33 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(%struct.omap_l3* %32, i32 %35, i32 32)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %40 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.omap_l3* %42)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %120, %31
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %47 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %123

50:                                               ; preds = %44
  %51 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %52 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @L3_BASE_IS_SUBMODULE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %50
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %66 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %74 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %120

79:                                               ; preds = %50
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load i32, i32* @IORESOURCE_MEM, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call %struct.resource* @platform_get_resource(%struct.platform_device* %80, i32 %81, i32 %82)
  store %struct.resource* %83, %struct.resource** %8, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.resource*, %struct.resource** %8, align 8
  %87 = call i32 @devm_ioremap_resource(i32* %85, %struct.resource* %86)
  %88 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %89 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %95 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %79
  %104 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %105 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %110 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @PTR_ERR(i32 %115)
  store i32 %116, i32* %2, align 4
  br label %176

117:                                              ; preds = %79
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %60
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %44

123:                                              ; preds = %44
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = call i8* @platform_get_irq(%struct.platform_device* %124, i32 0)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %128 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %130 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %133 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @l3_interrupt_handler, align 4
  %136 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %137 = call i32 @devm_request_irq(i32* %131, i32 %134, i32 %135, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.omap_l3* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %123
  %141 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %142 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %145 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %2, align 4
  br label %176

149:                                              ; preds = %123
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = call i8* @platform_get_irq(%struct.platform_device* %150, i32 1)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %154 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %156 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %159 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @l3_interrupt_handler, align 4
  %162 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %163 = call i32 @devm_request_irq(i32* %157, i32 %160, i32 %161, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.omap_l3* %162)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %149
  %167 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %168 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.omap_l3*, %struct.omap_l3** @omap_l3_probe.l3, align 8
  %171 = getelementptr inbounds %struct.omap_l3, %struct.omap_l3* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32*, i8*, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %166, %149
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %140, %103, %28, %15
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.omap_l3* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.omap_l3*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_l3*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.omap_l3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
