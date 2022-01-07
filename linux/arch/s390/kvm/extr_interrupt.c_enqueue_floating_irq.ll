; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_enqueue_floating_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_enqueue_floating_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32 }
%struct.kvm_device_attr = type { i32, i32 }
%struct.kvm_s390_interrupt_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_S390_FLIC_MAX_BUFFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, %struct.kvm_device_attr*)* @enqueue_floating_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_floating_irq(%struct.kvm_device* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  %6 = alloca %struct.kvm_s390_interrupt_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  store %struct.kvm_s390_interrupt_info* null, %struct.kvm_s390_interrupt_info** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = urem i64 %13, 4
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @KVM_S390_FLIC_MAX_BUFFER, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %64, %27
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %30, 4
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.kvm_s390_interrupt_info* @kzalloc(i32 4, i32 %33)
  store %struct.kvm_s390_interrupt_info* %34, %struct.kvm_s390_interrupt_info** %6, align 8
  %35 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %6, align 8
  %36 = icmp ne %struct.kvm_s390_interrupt_info* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %77

40:                                               ; preds = %32
  %41 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %6, align 8
  %42 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @copy_irq_from_user(%struct.kvm_s390_interrupt_info* %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %6, align 8
  %50 = call i32 @kfree(%struct.kvm_s390_interrupt_info* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %77

52:                                               ; preds = %40
  %53 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %6, align 8
  %57 = call i32 @__inject_vm(i32 %55, %struct.kvm_s390_interrupt_info* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.kvm_s390_interrupt_info*, %struct.kvm_s390_interrupt_info** %6, align 8
  %62 = call i32 @kfree(%struct.kvm_s390_interrupt_info* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %77

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  br label %28

75:                                               ; preds = %28
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %60, %48, %37, %23, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.kvm_s390_interrupt_info* @kzalloc(i32, i32) #1

declare dso_local i32 @copy_irq_from_user(%struct.kvm_s390_interrupt_info*, i32) #1

declare dso_local i32 @kfree(%struct.kvm_s390_interrupt_info*) #1

declare dso_local i32 @__inject_vm(i32, %struct.kvm_s390_interrupt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
