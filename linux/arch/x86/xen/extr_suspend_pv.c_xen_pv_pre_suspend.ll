; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_suspend_pv.c_xen_pv_pre_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_suspend_pv.c_xen_pv_pre_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@xen_start_info = common dso_local global %struct.TYPE_6__* null, align 8
@xen_dummy_shared_info = common dso_local global i32 0, align 4
@HYPERVISOR_shared_info = common dso_local global i32* null, align 8
@FIX_PARAVIRT_BOOTMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_pv_pre_suspend() #0 {
  %1 = call i32 (...) @xen_mm_pin_all()
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %5 = call i8* @mfn_to_pfn(i8* %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @mfn_to_pfn(i8* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i8* %13, i8** %17, align 8
  %18 = call i32 (...) @irqs_disabled()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  store i32* @xen_dummy_shared_info, i32** @HYPERVISOR_shared_info, align 8
  %23 = load i32, i32* @FIX_PARAVIRT_BOOTMAP, align 4
  %24 = call i32 @fix_to_virt(i32 %23)
  %25 = call i32 @__pte_ma(i32 0)
  %26 = call i64 @HYPERVISOR_update_va_mapping(i32 %24, i32 %25, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %0
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %0
  ret void
}

declare dso_local i32 @xen_mm_pin_all(...) #1

declare dso_local i8* @mfn_to_pfn(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @HYPERVISOR_update_va_mapping(i32, i32, i32) #1

declare dso_local i32 @fix_to_virt(i32) #1

declare dso_local i32 @__pte_ma(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
