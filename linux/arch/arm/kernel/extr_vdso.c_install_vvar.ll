; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_vdso.c_install_vvar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_vdso.c_install_vvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@vdso_data_mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64)* @install_vvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_vvar(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i32, i32* @VM_READ, align 4
  %10 = load i32, i32* @VM_MAYREAD, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* %6, i64 %7, i32 %8, i32 %11, i32* @vdso_data_mapping)
  store %struct.vm_area_struct* %12, %struct.vm_area_struct** %5, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = call i32 @PTR_ERR_OR_ZERO(%struct.vm_area_struct* %13)
  ret i32 %14
}

declare dso_local %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct*, i64, i32, i32, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
