; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_use_multiport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_use_multiport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ports_device = type { i32 }

@VIRTIO_CONSOLE_F_MULTIPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ports_device*)* @use_multiport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_multiport(%struct.ports_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ports_device*, align 8
  store %struct.ports_device* %0, %struct.ports_device** %3, align 8
  %4 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %5 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %11 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @VIRTIO_CONSOLE_F_MULTIPORT, align 4
  %14 = call i32 @__virtio_test_bit(i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @__virtio_test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
