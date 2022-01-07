; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_switch_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_switch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, i8*, %struct.b53_io_ops*, %struct.device* }
%struct.device = type { i32 }
%struct.b53_io_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.b53_device* @b53_switch_alloc(%struct.device* %0, %struct.b53_io_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.b53_io_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.b53_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.b53_io_ops* %1, %struct.b53_io_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.b53_device* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.b53_device* %11, %struct.b53_device** %8, align 8
  %12 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %13 = icmp ne %struct.b53_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.b53_device* null, %struct.b53_device** %4, align 8
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %18 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %17, i32 0, i32 3
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.b53_io_ops*, %struct.b53_io_ops** %6, align 8
  %20 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %21 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %20, i32 0, i32 2
  store %struct.b53_io_ops* %19, %struct.b53_io_ops** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %24 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %26 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  store %struct.b53_device* %28, %struct.b53_device** %4, align 8
  br label %29

29:                                               ; preds = %15, %14
  %30 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  ret %struct.b53_device* %30
}

declare dso_local %struct.b53_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
