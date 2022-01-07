; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/i2c/busses/extr_i2c-cns3xxx.c_cns3xxx_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/i2c/busses/extr_i2c-cns3xxx.c_cns3xxx_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cns3xxx_i2c = type { i32, i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cns3xxx_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns3xxx_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cns3xxx_i2c*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.cns3xxx_i2c* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.cns3xxx_i2c* %6, %struct.cns3xxx_i2c** %3, align 8
  %7 = call i32 (...) @CNS3xxx_I2C_DISABLE_INTR()
  %8 = call i32 (...) @CNS3xxx_I2C_DISABLE()
  %9 = load %struct.cns3xxx_i2c*, %struct.cns3xxx_i2c** %3, align 8
  %10 = getelementptr inbounds %struct.cns3xxx_i2c, %struct.cns3xxx_i2c* %9, i32 0, i32 1
  %11 = call i32 @i2c_del_adapter(i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call i32 @platform_set_drvdata(%struct.platform_device* %12, i32* null)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = load i32, i32* @IORESOURCE_IRQ, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %4, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.cns3xxx_i2c*, %struct.cns3xxx_i2c** %3, align 8
  %24 = call i32 @free_irq(i64 %22, %struct.cns3xxx_i2c* %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.cns3xxx_i2c*, %struct.cns3xxx_i2c** %3, align 8
  %27 = getelementptr inbounds %struct.cns3xxx_i2c, %struct.cns3xxx_i2c* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iounmap(i32 %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %4, align 8
  %33 = load %struct.resource*, %struct.resource** %4, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load %struct.resource*, %struct.resource** %4, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.resource*, %struct.resource** %4, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = add nsw i64 %45, 1
  %47 = call i32 @release_mem_region(i64 %38, i64 %46)
  br label %48

48:                                               ; preds = %35, %25
  %49 = load %struct.cns3xxx_i2c*, %struct.cns3xxx_i2c** %3, align 8
  %50 = call i32 @kfree(%struct.cns3xxx_i2c* %49)
  ret i32 0
}

declare dso_local %struct.cns3xxx_i2c* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @CNS3xxx_I2C_DISABLE_INTR(...) #1

declare dso_local i32 @CNS3xxx_I2C_DISABLE(...) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.cns3xxx_i2c*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @kfree(%struct.cns3xxx_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
