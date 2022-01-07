; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu.c_xen_unmap_domain_gfn_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu.c_xen_unmap_domain_gfn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_unmap_domain_gfn_range(%struct.vm_area_struct* %0, i32 %1, %struct.page** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page**, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.page** %2, %struct.page*** %7, align 8
  %8 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %9 = call i64 @xen_feature(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.page**, %struct.page*** %7, align 8
  %15 = call i32 @xen_xlate_unmap_gfn_range(%struct.vm_area_struct* %12, i32 %13, %struct.page** %14)
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.page**, %struct.page*** %7, align 8
  %18 = icmp ne %struct.page** %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %19, %11
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @xen_feature(i32) #1

declare dso_local i32 @xen_xlate_unmap_gfn_range(%struct.vm_area_struct*, i32, %struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
