; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_hvm.c_xen_hvm_exit_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_hvm.c_xen_hvm_exit_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.xen_hvm_pagetable_dying = type { i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@HVMOP_pagetable_dying = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @xen_hvm_exit_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_hvm_exit_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.xen_hvm_pagetable_dying, align 4
  %4 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = load i32, i32* @DOMID_SELF, align 4
  %6 = getelementptr inbounds %struct.xen_hvm_pagetable_dying, %struct.xen_hvm_pagetable_dying* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @__pa(i32 %9)
  %11 = getelementptr inbounds %struct.xen_hvm_pagetable_dying, %struct.xen_hvm_pagetable_dying* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @HVMOP_pagetable_dying, align 4
  %13 = call i32 @HYPERVISOR_hvm_op(i32 %12, %struct.xen_hvm_pagetable_dying* %3)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  ret void
}

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @HYPERVISOR_hvm_op(i32, %struct.xen_hvm_pagetable_dying*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
