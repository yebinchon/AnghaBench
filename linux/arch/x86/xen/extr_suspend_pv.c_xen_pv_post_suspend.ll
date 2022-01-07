; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_suspend_pv.c_xen_pv_post_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_suspend_pv.c_xen_pv_post_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@FIX_PARAVIRT_BOOTMAP = common dso_local global i32 0, align 4
@xen_start_info = common dso_local global %struct.TYPE_6__* null, align 8
@HYPERVISOR_shared_info = common dso_local global i8* null, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@xen_cpu_initialized_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_pv_post_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @xen_build_mfn_list_list()
  %4 = load i32, i32* @FIX_PARAVIRT_BOOTMAP, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @set_fixmap(i32 %4, i32 %7)
  %9 = load i32, i32* @FIX_PARAVIRT_BOOTMAP, align 4
  %10 = call i64 @fix_to_virt(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @HYPERVISOR_shared_info, align 8
  %12 = call i32 (...) @xen_setup_mfn_list_list()
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @pfn_to_mfn(i8* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @pfn_to_mfn(i8* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* %27, i8** %31, align 8
  br label %34

32:                                               ; preds = %1
  %33 = call i32 (...) @xen_vcpu_restore()
  br label %34

34:                                               ; preds = %32, %15
  %35 = call i32 (...) @xen_mm_unpin_all()
  ret void
}

declare dso_local i32 @xen_build_mfn_list_list(...) #1

declare dso_local i32 @set_fixmap(i32, i32) #1

declare dso_local i64 @fix_to_virt(i32) #1

declare dso_local i32 @xen_setup_mfn_list_list(...) #1

declare dso_local i8* @pfn_to_mfn(i8*) #1

declare dso_local i32 @xen_vcpu_restore(...) #1

declare dso_local i32 @xen_mm_unpin_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
