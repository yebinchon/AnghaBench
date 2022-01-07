; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_bus_scan_register_devices.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_bus_scan_register_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vio_bus_scan_register_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vio_bus_scan_register_devices(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* %9)
  store %struct.device_node* %10, %struct.device_node** %3, align 8
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = call %struct.device_node* @of_get_next_child(%struct.device_node* %14, %struct.device_node* null)
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  br label %16

16:                                               ; preds = %19, %13
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @vio_register_device_node(%struct.device_node* %20)
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call %struct.device_node* @of_get_next_child(%struct.device_node* %22, %struct.device_node* %23)
  store %struct.device_node* %24, %struct.device_node** %4, align 8
  br label %16

25:                                               ; preds = %16
  %26 = load %struct.device_node*, %struct.device_node** %3, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  br label %28

28:                                               ; preds = %7, %25, %8
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @vio_register_device_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
