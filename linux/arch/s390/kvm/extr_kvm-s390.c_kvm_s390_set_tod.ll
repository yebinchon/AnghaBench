; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_set_tod.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_set_tod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_device_attr = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_device_attr*)* @kvm_s390_set_tod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_set_tod(%struct.kvm* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %7 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %8 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %30 [
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
  ]

18:                                               ; preds = %14
  %19 = load %struct.kvm*, %struct.kvm** %4, align 8
  %20 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %21 = call i32 @kvm_s390_set_tod_ext(%struct.kvm* %19, %struct.kvm_device_attr* %20)
  store i32 %21, i32* %6, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.kvm*, %struct.kvm** %4, align 8
  %24 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %25 = call i32 @kvm_s390_set_tod_high(%struct.kvm* %23, %struct.kvm_device_attr* %24)
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %14
  %27 = load %struct.kvm*, %struct.kvm** %4, align 8
  %28 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %29 = call i32 @kvm_s390_set_tod_low(%struct.kvm* %27, %struct.kvm_device_attr* %28)
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %14
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %26, %22, %18
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @kvm_s390_set_tod_ext(%struct.kvm*, %struct.kvm_device_attr*) #1

declare dso_local i32 @kvm_s390_set_tod_high(%struct.kvm*, %struct.kvm_device_attr*) #1

declare dso_local i32 @kvm_s390_set_tod_low(%struct.kvm*, %struct.kvm_device_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
