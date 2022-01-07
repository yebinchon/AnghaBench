; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_vcpu_ioctl_enable_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_vcpu_ioctl_enable_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_enable_cap = type { i32, i64*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_enable_cap*)* @kvm_vcpu_ioctl_enable_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_enable_cap(%struct.kvm_vcpu* %0, %struct.kvm_enable_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_enable_cap*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_enable_cap* %1, %struct.kvm_enable_cap** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @kvm_vm_ioctl_check_extension(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %18
  %27 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %26
  %37 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %48 [
    i32 129, label %40
    i32 128, label %44
  ]

40:                                               ; preds = %36
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %51

44:                                               ; preds = %36
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %44, %40
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %33, %23, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @kvm_vm_ioctl_check_extension(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
