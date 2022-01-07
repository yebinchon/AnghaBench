; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_set_cpu_model.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_set_cpu_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_device_attr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_device_attr*)* @kvm_s390_set_cpu_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_set_cpu_model(%struct.kvm* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_device_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %4, align 8
  %6 = load i32, i32* @ENXIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 130, label %11
    i32 129, label %15
    i32 128, label %19
  ]

11:                                               ; preds = %2
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %14 = call i32 @kvm_s390_set_processor(%struct.kvm* %12, %struct.kvm_device_attr* %13)
  store i32 %14, i32* %5, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %18 = call i32 @kvm_s390_set_processor_feat(%struct.kvm* %16, %struct.kvm_device_attr* %17)
  store i32 %18, i32* %5, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %22 = call i32 @kvm_s390_set_processor_subfunc(%struct.kvm* %20, %struct.kvm_device_attr* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %2, %19, %15, %11
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @kvm_s390_set_processor(%struct.kvm*, %struct.kvm_device_attr*) #1

declare dso_local i32 @kvm_s390_set_processor_feat(%struct.kvm*, %struct.kvm_device_attr*) #1

declare dso_local i32 @kvm_s390_set_processor_subfunc(%struct.kvm*, %struct.kvm_device_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
