; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_flic_inject_airq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_flic_inject_airq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_device_attr = type { i32 }
%struct.s390_io_adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_device_attr*)* @flic_inject_airq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flic_inject_airq(%struct.kvm* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_io_adapter*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %8 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.s390_io_adapter* @get_io_adapter(%struct.kvm* %11, i32 %12)
  store %struct.s390_io_adapter* %13, %struct.s390_io_adapter** %7, align 8
  %14 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %7, align 8
  %15 = icmp ne %struct.s390_io_adapter* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.kvm*, %struct.kvm** %4, align 8
  %21 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %7, align 8
  %22 = call i32 @kvm_s390_inject_airq(%struct.kvm* %20, %struct.s390_io_adapter* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.s390_io_adapter* @get_io_adapter(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_s390_inject_airq(%struct.kvm*, %struct.s390_io_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
