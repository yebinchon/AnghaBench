; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_platform.c_pata_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_platform.c_pata_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.pata_platform_info = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalid number of resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@pio_mask = common dso_local global i32 0, align 4
@pata_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pata_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.pata_platform_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = call %struct.pata_platform_info* @dev_get_platdata(i32* %9)
  store %struct.pata_platform_info* %10, %struct.pata_platform_info** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %84

26:                                               ; preds = %15, %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_IO, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %4, align 8
  %31 = icmp eq %struct.resource* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %4, align 8
  %36 = load %struct.resource*, %struct.resource** %4, align 8
  %37 = icmp eq %struct.resource* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %84

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_IO, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 1)
  store %struct.resource* %48, %struct.resource** %5, align 8
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = icmp eq %struct.resource* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 1)
  store %struct.resource* %54, %struct.resource** %5, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = icmp eq %struct.resource* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %84

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_IRQ, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %6, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = load %struct.resource*, %struct.resource** %4, align 8
  %71 = load %struct.resource*, %struct.resource** %5, align 8
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = load %struct.pata_platform_info*, %struct.pata_platform_info** %7, align 8
  %74 = icmp ne %struct.pata_platform_info* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load %struct.pata_platform_info*, %struct.pata_platform_info** %7, align 8
  %77 = getelementptr inbounds %struct.pata_platform_info, %struct.pata_platform_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 0, %79 ]
  %82 = load i32, i32* @pio_mask, align 4
  %83 = call i32 @__pata_platform_probe(i32* %69, %struct.resource* %70, %struct.resource* %71, %struct.resource* %72, i32 %81, i32 %82, i32* @pata_platform_sht, i32 0)
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %60, %41, %20
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.pata_platform_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__pata_platform_probe(i32*, %struct.resource*, %struct.resource*, %struct.resource*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
