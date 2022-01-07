; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_set_migration.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_set_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_device_attr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_device_attr*)* @kvm_s390_vm_set_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_vm_set_migration(%struct.kvm* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_device_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %4, align 8
  %6 = load i32, i32* @ENXIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %2
  %15 = load %struct.kvm*, %struct.kvm** %3, align 8
  %16 = call i32 @kvm_s390_vm_start_migration(%struct.kvm* %15)
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = call i32 @kvm_s390_vm_stop_migration(%struct.kvm* %18)
  store i32 %19, i32* %5, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %17, %14
  %22 = load %struct.kvm*, %struct.kvm** %3, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_s390_vm_start_migration(%struct.kvm*) #1

declare dso_local i32 @kvm_s390_vm_stop_migration(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
