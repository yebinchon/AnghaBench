; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_paride.c_pi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_paride.c_pi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pardevice = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_driver* }
%struct.device_driver = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pardevice*)* @pi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi_probe(%struct.pardevice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.pardevice* %0, %struct.pardevice** %3, align 8
  %6 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %7 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_driver*, %struct.device_driver** %8, align 8
  store %struct.device_driver* %9, %struct.device_driver** %4, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %11 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strlen(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %15 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %18 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @strncmp(i32 %16, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
