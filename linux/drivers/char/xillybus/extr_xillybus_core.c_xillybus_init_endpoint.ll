; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_init_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_init_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, i32, i32, i64, i64, %struct.xilly_endpoint_hardware*, %struct.device*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.device = type { i32 }
%struct.xilly_endpoint_hardware = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xilly_endpoint* @xillybus_init_endpoint(%struct.pci_dev* %0, %struct.device* %1, %struct.xilly_endpoint_hardware* %2) #0 {
  %4 = alloca %struct.xilly_endpoint*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.xilly_endpoint_hardware*, align 8
  %8 = alloca %struct.xilly_endpoint*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.xilly_endpoint_hardware* %2, %struct.xilly_endpoint_hardware** %7, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.xilly_endpoint* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.xilly_endpoint* %11, %struct.xilly_endpoint** %8, align 8
  %12 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %13 = icmp ne %struct.xilly_endpoint* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.xilly_endpoint* null, %struct.xilly_endpoint** %4, align 8
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %18 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %17, i32 0, i32 7
  store %struct.pci_dev* %16, %struct.pci_dev** %18, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %21 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %20, i32 0, i32 6
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.xilly_endpoint_hardware*, %struct.xilly_endpoint_hardware** %7, align 8
  %23 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %24 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %23, i32 0, i32 5
  store %struct.xilly_endpoint_hardware* %22, %struct.xilly_endpoint_hardware** %24, align 8
  %25 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %26 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %25, i32 0, i32 0
  store i32 11, i32* %26, align 8
  %27 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %28 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %30 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %32 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %31, i32 0, i32 2
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  %35 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %34, i32 0, i32 1
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %8, align 8
  store %struct.xilly_endpoint* %37, %struct.xilly_endpoint** %4, align 8
  br label %38

38:                                               ; preds = %15, %14
  %39 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %4, align 8
  ret %struct.xilly_endpoint* %39
}

declare dso_local %struct.xilly_endpoint* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
