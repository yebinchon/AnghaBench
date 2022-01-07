; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_set_tss_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_set_tss_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm*, i64)* }
%struct.kvm = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64)* @kvm_vm_ioctl_set_tss_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_set_tss_addr(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = mul nsw i32 -3, %8
  %10 = zext i32 %9 to i64
  %11 = icmp ugt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.kvm*, i64)*, i32 (%struct.kvm*, i64)** %17, align 8
  %19 = load %struct.kvm*, %struct.kvm** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 %18(%struct.kvm* %19, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
