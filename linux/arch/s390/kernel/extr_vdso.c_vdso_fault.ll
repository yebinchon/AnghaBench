; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vdso.c_vdso_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vdso.c_vdso_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_special_mapping = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.vm_fault = type { i64, %struct.page* }

@vdso64_pagelist = common dso_local global %struct.page** null, align 8
@vdso64_pages = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@vdso32_pagelist = common dso_local global %struct.page** null, align 8
@vdso32_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*, %struct.vm_fault*)* @vdso_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdso_fault(%struct.vm_special_mapping* %0, %struct.vm_area_struct* %1, %struct.vm_fault* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_special_mapping*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_fault*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i64, align 8
  store %struct.vm_special_mapping* %0, %struct.vm_special_mapping** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.vm_fault* %2, %struct.vm_fault** %7, align 8
  %10 = load %struct.page**, %struct.page*** @vdso64_pagelist, align 8
  store %struct.page** %10, %struct.page*** %8, align 8
  %11 = load i64, i64* @vdso64_pages, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %18, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.page**, %struct.page*** %8, align 8
  %21 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.page*, %struct.page** %20, i64 %23
  %25 = load %struct.page*, %struct.page** %24, align 8
  %26 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %27 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %26, i32 0, i32 1
  store %struct.page* %25, %struct.page** %27, align 8
  %28 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %29 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %28, i32 0, i32 1
  %30 = load %struct.page*, %struct.page** %29, align 8
  %31 = call i32 @get_page(%struct.page* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
