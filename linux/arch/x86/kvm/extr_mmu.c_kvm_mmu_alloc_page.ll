; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32, i32, i8*, i8* }
%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_mmu_page* (%struct.kvm_vcpu*, i32)* @kvm_mmu_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_mmu_page* @kvm_mmu_alloc_page(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = call i8* @mmu_memory_cache_alloc(i32* %8)
  %10 = bitcast i8* %9 to %struct.kvm_mmu_page*
  store %struct.kvm_mmu_page* %10, %struct.kvm_mmu_page** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i8* @mmu_memory_cache_alloc(i32* %13)
  %15 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i8* @mmu_memory_cache_alloc(i32* %22)
  %24 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @virt_to_page(i8* %29)
  %31 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %32 = ptrtoint %struct.kvm_mmu_page* %31 to i64
  %33 = call i32 @set_page_private(i32 %30, i64 %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %42, i32 0, i32 0
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @list_add(i32* %43, i32* %48)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @kvm_mod_used_mmu_pages(%struct.TYPE_6__* %52, i32 1)
  %54 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  ret %struct.kvm_mmu_page* %54
}

declare dso_local i8* @mmu_memory_cache_alloc(i32*) #1

declare dso_local i32 @set_page_private(i32, i64) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kvm_mod_used_mmu_pages(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
