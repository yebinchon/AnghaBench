; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_pata_ftide010_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_pata_ftide010_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ata_host = type { %struct.ftide010* }
%struct.ftide010 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pata_ftide010_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_ftide010_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.ftide010*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ata_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ata_host* %6, %struct.ata_host** %3, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 0
  %9 = load %struct.ftide010*, %struct.ftide010** %8, align 8
  store %struct.ftide010* %9, %struct.ftide010** %4, align 8
  %10 = load %struct.ftide010*, %struct.ftide010** %4, align 8
  %11 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ata_host_detach(i32 %12)
  %14 = load %struct.ftide010*, %struct.ftide010** %4, align 8
  %15 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_ERR(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.ftide010*, %struct.ftide010** %4, align 8
  %21 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local %struct.ata_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ata_host_detach(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
