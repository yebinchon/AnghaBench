; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/entry/vdso/extr_vma.c_vdso_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/entry/vdso/extr_vma.c_vdso_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_special_mapping = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vdso_image* }
%struct.vdso_image = type { i32, i64 }
%struct.vm_fault = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*, %struct.vm_fault*)* @vdso_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdso_fault(%struct.vm_special_mapping* %0, %struct.vm_area_struct* %1, %struct.vm_fault* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_special_mapping*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_fault*, align 8
  %8 = alloca %struct.vdso_image*, align 8
  store %struct.vm_special_mapping* %0, %struct.vm_special_mapping** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.vm_fault* %2, %struct.vm_fault** %7, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.vdso_image*, %struct.vdso_image** %13, align 8
  store %struct.vdso_image* %14, %struct.vdso_image** %8, align 8
  %15 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %16 = icmp ne %struct.vdso_image* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %24 = getelementptr inbounds %struct.vdso_image, %struct.vdso_image* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17, %3
  %28 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %31 = getelementptr inbounds %struct.vdso_image, %struct.vdso_image* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %34 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %32, %38
  %40 = call i32 @virt_to_page(i64 %39)
  %41 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %42 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %44 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @get_page(i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %29, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
