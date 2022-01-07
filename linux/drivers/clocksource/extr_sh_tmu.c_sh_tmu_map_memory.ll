; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_map_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_map_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_device*)* @sh_tmu_map_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_map_memory(%struct.sh_tmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_tmu_device*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.sh_tmu_device* %0, %struct.sh_tmu_device** %3, align 8
  %5 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %6 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.TYPE_2__* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.resource*, %struct.resource** %4, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %14 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = call i32 @resource_size(%struct.resource* %24)
  %26 = call i32* @ioremap_nocache(i32 %23, i32 %25)
  %27 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %28 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %30 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.resource* @platform_get_resource(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
