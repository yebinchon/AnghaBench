; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_p2m.c_clear_foreign_p2m_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_p2m.c_clear_foreign_p2m_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_unmap_grant_ref = type { i32 }
%struct.page = type { i32 }

@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@INVALID_P2M_ENTRY = common dso_local global i64 0, align 8
@FOREIGN_FRAME_BIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_foreign_p2m_mapping(%struct.gnttab_unmap_grant_ref* %0, %struct.gnttab_unmap_grant_ref* %1, %struct.page** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %7 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.gnttab_unmap_grant_ref* %0, %struct.gnttab_unmap_grant_ref** %6, align 8
  store %struct.gnttab_unmap_grant_ref* %1, %struct.gnttab_unmap_grant_ref** %7, align 8
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %15 = call i64 @xen_feature(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.page**, %struct.page*** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 %26
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = call i64 @page_to_pfn(%struct.page* %28)
  %30 = call i64 @__pfn_to_mfn(i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.page**, %struct.page*** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %33
  %35 = load %struct.page*, %struct.page** %34, align 8
  %36 = call i64 @page_to_pfn(%struct.page* %35)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @INVALID_P2M_ENTRY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %23
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @FOREIGN_FRAME_BIT, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40, %23
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %64

48:                                               ; preds = %40
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* @INVALID_P2M_ENTRY, align 8
  %51 = call i32 @set_phys_to_machine(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %57 = icmp ne %struct.gnttab_unmap_grant_ref* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %60 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @HYPERVISOR_grant_table_op(i32 %59, %struct.gnttab_unmap_grant_ref* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %17
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @xen_feature(i32) #1

declare dso_local i64 @__pfn_to_mfn(i64) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @set_phys_to_machine(i64, i64) #1

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
