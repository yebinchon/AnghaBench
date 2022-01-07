; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.bt3c_info*, i32 }
%struct.bt3c_info = type { %struct.pcmcia_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_VPP = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @bt3c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.bt3c_info*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 2
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.bt3c_info* @devm_kzalloc(i32* %6, i32 8, i32 %7)
  store %struct.bt3c_info* %8, %struct.bt3c_info** %4, align 8
  %9 = load %struct.bt3c_info*, %struct.bt3c_info** %4, align 8
  %10 = icmp ne %struct.bt3c_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %16 = load %struct.bt3c_info*, %struct.bt3c_info** %4, align 8
  %17 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %16, i32 0, i32 0
  store %struct.pcmcia_device* %15, %struct.pcmcia_device** %17, align 8
  %18 = load %struct.bt3c_info*, %struct.bt3c_info** %4, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 1
  store %struct.bt3c_info* %18, %struct.bt3c_info** %20, align 8
  %21 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %22 = load i32, i32* @CONF_AUTO_SET_VPP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = call i32 @bt3c_config(%struct.pcmcia_device* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %14, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.bt3c_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @bt3c_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
