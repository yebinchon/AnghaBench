; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_xive_native_tima_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_xive_native_tima_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@xive_tima_os = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @xive_native_tima_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_native_tima_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %5 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %6 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %5, i32 0, i32 2
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %7, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  switch i32 %14, label %28 [
    i32 0, label %15
    i32 1, label %15
    i32 2, label %17
    i32 3, label %27
  ]

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @xive_tima_os, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = call i32 @vmf_insert_pfn(%struct.vm_area_struct* %18, i32 %21, i32 %24)
  %26 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %1, %27
  %29 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %17, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vmf_insert_pfn(%struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
