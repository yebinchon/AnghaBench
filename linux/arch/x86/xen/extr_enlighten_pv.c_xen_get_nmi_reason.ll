; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_get_nmi_reason.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_get_nmi_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@_XEN_NMIREASON_io_error = common dso_local global i32 0, align 4
@HYPERVISOR_shared_info = common dso_local global %struct.TYPE_4__* null, align 8
@NMI_REASON_IOCHK = common dso_local global i8 0, align 1
@_XEN_NMIREASON_pci_serr = common dso_local global i32 0, align 4
@NMI_REASON_SERR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @xen_get_nmi_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @xen_get_nmi_reason() #0 {
  %1 = alloca i8, align 1
  store i8 0, i8* %1, align 1
  %2 = load i32, i32* @_XEN_NMIREASON_io_error, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %2, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i8, i8* @NMI_REASON_IOCHK, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* %1, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, %10
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %1, align 1
  br label %15

15:                                               ; preds = %8, %0
  %16 = load i32, i32* @_XEN_NMIREASON_pci_serr, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i8, i8* @NMI_REASON_SERR, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %1, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %1, align 1
  br label %29

29:                                               ; preds = %22, %15
  %30 = load i8, i8* %1, align 1
  ret i8 %30
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
