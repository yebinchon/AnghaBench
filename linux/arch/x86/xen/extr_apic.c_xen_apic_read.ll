; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_apic.c_xen_apic_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_apic.c_xen_apic_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_platform_op = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@XENPF_INTERFACE_VERSION = common dso_local global i32 0, align 4
@XENPF_get_cpuinfo = common dso_local global i32 0, align 4
@APIC_LVR = common dso_local global i64 0, align 8
@APIC_ID = common dso_local global i64 0, align 8
@BAD_APICID = common dso_local global i32 0, align 4
@APIC_LDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @xen_apic_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xen_apic_read(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xen_platform_op, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 1
  %11 = load i32, i32* @XENPF_INTERFACE_VERSION, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 2
  %13 = load i32, i32* @XENPF_get_cpuinfo, align 4
  store i32 %13, i32* %12, align 4
  store i32 0, i32* %5, align 4
  %14 = call i32 (...) @xen_initial_domain()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i64 (...) @smp_processor_id()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %1
  store i64 0, i64* %2, align 8
  br label %46

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @APIC_LVR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i64 20, i64* %2, align 8
  br label %46

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @APIC_ID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i64 0, i64* %2, align 8
  br label %46

30:                                               ; preds = %25
  %31 = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @BAD_APICID, align 4
  %36 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 24
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %39, %29, %24, %19
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @xen_initial_domain(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @HYPERVISOR_platform_op(%struct.xen_platform_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
