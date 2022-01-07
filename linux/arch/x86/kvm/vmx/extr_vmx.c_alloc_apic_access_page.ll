; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_alloc_apic_access_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_alloc_apic_access_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@APIC_ACCESS_PAGE_PRIVATE_MEMSLOT = common dso_local global i32 0, align 4
@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @alloc_apic_access_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_apic_access_page(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.kvm*, %struct.kvm** %2, align 8
  %16 = load i32, i32* @APIC_ACCESS_PAGE_PRIVATE_MEMSLOT, align 4
  %17 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @__x86_set_memory_region(%struct.kvm* %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %41

23:                                               ; preds = %14
  %24 = load %struct.kvm*, %struct.kvm** %2, align 8
  %25 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = call %struct.page* @gfn_to_page(%struct.kvm* %24, i32 %27)
  store %struct.page* %28, %struct.page** %3, align 8
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i64 @is_error_page(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %23
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @put_page(%struct.page* %36)
  %38 = load %struct.kvm*, %struct.kvm** %2, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %32, %22, %13
  %42 = load %struct.kvm*, %struct.kvm** %2, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__x86_set_memory_region(%struct.kvm*, i32, i32, i32) #1

declare dso_local %struct.page* @gfn_to_page(%struct.kvm*, i32) #1

declare dso_local i64 @is_error_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
