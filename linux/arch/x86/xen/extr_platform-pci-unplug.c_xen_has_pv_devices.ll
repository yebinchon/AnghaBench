; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_platform-pci-unplug.c_xen_has_pv_devices.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_platform-pci-unplug.c_xen_has_pv_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xen_platform_pci_unplug = common dso_local global i32 0, align 4
@XEN_UNPLUG_NEVER = common dso_local global i32 0, align 4
@XEN_UNPLUG_ALL = common dso_local global i32 0, align 4
@XEN_UNPLUG_UNNECESSARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_has_pv_devices() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @xen_domain()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

5:                                                ; preds = %0
  %6 = call i64 (...) @xen_pv_domain()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = call i64 (...) @xen_pvh_domain()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %5
  store i32 1, i32* %1, align 4
  br label %35

12:                                               ; preds = %8
  %13 = load i32, i32* @xen_platform_pci_unplug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %35

16:                                               ; preds = %12
  %17 = load i32, i32* @xen_platform_pci_unplug, align 4
  %18 = load i32, i32* @XEN_UNPLUG_NEVER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %35

22:                                               ; preds = %16
  %23 = load i32, i32* @xen_platform_pci_unplug, align 4
  %24 = load i32, i32* @XEN_UNPLUG_ALL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %1, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @xen_platform_pci_unplug, align 4
  %30 = load i32, i32* @XEN_UNPLUG_UNNECESSARY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %1, align 4
  br label %35

34:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %27, %21, %15, %11, %4
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @xen_domain(...) #1

declare dso_local i64 @xen_pv_domain(...) #1

declare dso_local i64 @xen_pvh_domain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
