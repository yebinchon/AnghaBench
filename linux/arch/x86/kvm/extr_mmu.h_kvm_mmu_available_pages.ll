; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.h_kvm_mmu_available_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.h_kvm_mmu_available_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*)* @kvm_mmu_available_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_mmu_available_pages(%struct.kvm* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %4 = load %struct.kvm*, %struct.kvm** %3, align 8
  %5 = getelementptr inbounds %struct.kvm, %struct.kvm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %7, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.kvm*, %struct.kvm** %3, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %17, %21
  store i64 %22, i64* %2, align 8
  br label %24

23:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
