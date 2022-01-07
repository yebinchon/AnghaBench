; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_hvm.c_xen_hvm_init_shared_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_hvm.c_xen_hvm_init_shared_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_add_to_physmap = type { i32, i32, i64, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@XENMAPSPACE_shared_info = common dso_local global i32 0, align 4
@shared_info_pfn = common dso_local global i32 0, align 4
@XENMEM_add_to_physmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_hvm_init_shared_info() #0 {
  %1 = alloca %struct.xen_add_to_physmap, align 8
  %2 = load i32, i32* @DOMID_SELF, align 4
  %3 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 3
  store i32 %2, i32* %3, align 8
  %4 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @XENMAPSPACE_shared_info, align 4
  %6 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @shared_info_pfn, align 4
  %8 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @XENMEM_add_to_physmap, align 4
  %10 = call i64 @HYPERVISOR_memory_op(i32 %9, %struct.xen_add_to_physmap* %1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @BUG()
  br label %14

14:                                               ; preds = %12, %0
  ret void
}

declare dso_local i64 @HYPERVISOR_memory_op(i32, %struct.xen_add_to_physmap*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
