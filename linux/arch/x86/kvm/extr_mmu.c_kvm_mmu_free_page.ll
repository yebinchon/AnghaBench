; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i64, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@mmu_page_header_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_mmu_page*)* @kvm_mmu_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mmu_free_page(%struct.kvm_mmu_page* %0) #0 {
  %2 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_mmu_page* %0, %struct.kvm_mmu_page** %2, align 8
  %3 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @is_empty_shadow_page(i64 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @MMU_WARN_ON(i32 %9)
  %11 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %11, i32 0, i32 4
  %13 = call i32 @hlist_del(i32* %12)
  %14 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %14, i32 0, i32 3
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @free_page(i64 %19)
  %21 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @free_page(i64 %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* @mmu_page_header_cache, align 4
  %33 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %34 = call i32 @kmem_cache_free(i32 %32, %struct.kvm_mmu_page* %33)
  ret void
}

declare dso_local i32 @MMU_WARN_ON(i32) #1

declare dso_local i32 @is_empty_shadow_page(i64) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kvm_mmu_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
