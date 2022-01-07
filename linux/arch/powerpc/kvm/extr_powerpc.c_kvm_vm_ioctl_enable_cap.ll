; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_vm_ioctl_enable_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_vm_ioctl_enable_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.kvm*, i64, i64)*, i32 (%struct.kvm*)* }
%struct.kvm_enable_cap = type { i32, i64*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_HCALL_OPCODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_enable_cap(%struct.kvm* %0, %struct.kvm_enable_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_enable_cap*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_enable_cap* %1, %struct.kvm_enable_cap** %5, align 8
  %7 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %8 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.kvm_enable_cap*, %struct.kvm_enable_cap** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_enable_cap, %struct.kvm_enable_cap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %18 [
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
