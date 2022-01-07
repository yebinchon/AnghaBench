; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___kvm_sync_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___kvm_sync_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.kvm_vcpu*, %struct.kvm_mmu_page*)* }
%struct.kvm_mmu_page = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_mmu_page*, %struct.list_head*)* @__kvm_sync_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_sync_page(%struct.kvm_vcpu* %0, %struct.kvm_mmu_page* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %8 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %9 = call i32 @is_ept_sp(%struct.kvm_mmu_page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %13 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = call i32 @is_pae(%struct.kvm_vcpu* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %15, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %11, %3
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64 (%struct.kvm_vcpu*, %struct.kvm_mmu_page*)*, i64 (%struct.kvm_vcpu*, %struct.kvm_mmu_page*)** %28, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %31 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %32 = call i64 %29(%struct.kvm_vcpu* %30, %struct.kvm_mmu_page* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23, %11
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %39 = load %struct.list_head*, %struct.list_head** %7, align 8
  %40 = call i32 @kvm_mmu_prepare_zap_page(i32 %37, %struct.kvm_mmu_page* %38, %struct.list_head* %39)
  store i32 0, i32* %4, align 4
  br label %42

41:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @is_ept_sp(%struct.kvm_mmu_page*) #1

declare dso_local i32 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_prepare_zap_page(i32, %struct.kvm_mmu_page*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
