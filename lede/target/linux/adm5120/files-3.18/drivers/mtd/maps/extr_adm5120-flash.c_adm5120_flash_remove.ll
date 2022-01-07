; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.adm5120_flash_info = type { i32*, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adm5120_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_flash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adm5120_flash_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.adm5120_flash_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.adm5120_flash_info* %6, %struct.adm5120_flash_info** %4, align 8
  %7 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %8 = icmp eq %struct.adm5120_flash_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_set_drvdata(%struct.platform_device* %11, i32* null)
  %13 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %14 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %19 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @mtd_device_unregister(i32* %20)
  %22 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %23 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @map_destroy(i32* %24)
  br label %26

26:                                               ; preds = %17, %10
  %27 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %28 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %35 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @iounmap(i32* %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %42 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %47 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @release_resource(i32* %48)
  %50 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %4, align 8
  %51 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  br label %54

54:                                               ; preds = %45, %40
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.adm5120_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @mtd_device_unregister(i32*) #1

declare dso_local i32 @map_destroy(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
