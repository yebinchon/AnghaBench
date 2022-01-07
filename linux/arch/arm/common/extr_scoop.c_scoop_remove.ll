; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.scoop_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @scoop_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scoop_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.scoop_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.scoop_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.scoop_dev* %6, %struct.scoop_dev** %4, align 8
  %7 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %8 = icmp ne %struct.scoop_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %14 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %20 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %19, i32 0, i32 1
  %21 = call i32 @gpiochip_remove(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %23, i32* null)
  %25 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %26 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %30 = call i32 @kfree(%struct.scoop_dev* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.scoop_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.scoop_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
