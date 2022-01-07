; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_mask_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_mask_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.s390_io_adapter = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_mask_adapter(%struct.kvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s390_io_adapter*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kvm*, %struct.kvm** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.s390_io_adapter* @get_io_adapter(%struct.kvm* %10, i32 %11)
  store %struct.s390_io_adapter* %12, %struct.s390_io_adapter** %9, align 8
  %13 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %9, align 8
  %14 = icmp ne %struct.s390_io_adapter* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %9, align 8
  %17 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %15
  %24 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %9, align 8
  %25 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %9, align 8
  %29 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.s390_io_adapter* @get_io_adapter(%struct.kvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
