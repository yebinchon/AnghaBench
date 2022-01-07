; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_finalize_features.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_finalize_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_uml_device = type { i32 }

@VHOST_USER_SUPPORTED_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @vu_finalize_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vu_finalize_features(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_uml_device*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = call %struct.virtio_uml_device* @to_virtio_uml_device(%struct.virtio_device* %5)
  store %struct.virtio_uml_device* %6, %struct.virtio_uml_device** %3, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %8 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VHOST_USER_SUPPORTED_F, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %13 = call i32 @vring_transport_features(%struct.virtio_device* %12)
  %14 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %15 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %20 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %22 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %23 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vhost_user_set_features(%struct.virtio_uml_device* %21, i32 %24)
  ret i32 %25
}

declare dso_local %struct.virtio_uml_device* @to_virtio_uml_device(%struct.virtio_device*) #1

declare dso_local i32 @vring_transport_features(%struct.virtio_device*) #1

declare dso_local i32 @vhost_user_set_features(%struct.virtio_uml_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
