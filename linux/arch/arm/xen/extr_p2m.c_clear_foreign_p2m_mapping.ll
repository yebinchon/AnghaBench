; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/xen/extr_p2m.c_clear_foreign_p2m_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/xen/extr_p2m.c_clear_foreign_p2m_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_unmap_grant_ref = type { i32 }
%struct.page = type { i32 }

@XEN_PAGE_SHIFT = common dso_local global i32 0, align 4
@INVALID_P2M_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_foreign_p2m_mapping(%struct.gnttab_unmap_grant_ref* %0, %struct.gnttab_unmap_grant_ref* %1, %struct.page** %2, i32 %3) #0 {
  %5 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %6 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gnttab_unmap_grant_ref* %0, %struct.gnttab_unmap_grant_ref** %5, align 8
  store %struct.gnttab_unmap_grant_ref* %1, %struct.gnttab_unmap_grant_ref** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %15, i64 %17
  %19 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XEN_PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @INVALID_P2M_ENTRY, align 4
  %24 = call i32 @set_phys_to_machine(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

28:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @set_phys_to_machine(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
