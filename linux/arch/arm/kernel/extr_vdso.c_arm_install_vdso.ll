; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_vdso.c_arm_install_vdso.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_vdso.c_arm_install_vdso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i32 }

@vdso_text_pagelist = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@vdso_total_pages = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@vdso_text_mapping = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_install_vdso(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** @vdso_text_pagelist, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @install_vvar(%struct.mm_struct* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %49

19:                                               ; preds = %13
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @vdso_total_pages, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @VM_READ, align 4
  %32 = load i32, i32* @VM_EXEC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VM_MAYREAD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VM_MAYWRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VM_MAYEXEC, align 4
  %39 = or i32 %37, %38
  %40 = call %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* %28, i64 %29, i64 %30, i32 %39, i32* @vdso_text_mapping)
  store %struct.vm_area_struct* %40, %struct.vm_area_struct** %5, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = call i32 @IS_ERR(%struct.vm_area_struct* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %19
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %12, %18, %44, %19
  ret void
}

declare dso_local i64 @install_vvar(%struct.mm_struct*, i64) #1

declare dso_local %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct*, i64, i64, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
