; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.cpuinfo_x86 = type { i64 }

@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@X86_VENDOR_HYGON = common dso_local global i64 0, align 8
@X86_FEATURE_OVERFLOW_RECOV = common dso_local global i32 0, align 4
@mce_flags = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@X86_FEATURE_SUCCOR = common dso_local global i32 0, align 4
@X86_FEATURE_SMCA = common dso_local global i32 0, align 4
@smca_ctl_reg = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@smca_status_reg = common dso_local global i32 0, align 4
@smca_addr_reg = common dso_local global i32 0, align 4
@smca_misc_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @__mcheck_cpu_init_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mcheck_cpu_init_early(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %4 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @X86_VENDOR_AMD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %10 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @X86_VENDOR_HYGON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8, %1
  %15 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %16 = load i32, i32* @X86_FEATURE_OVERFLOW_RECOV, align 4
  %17 = call i32 @cpu_has(%struct.cpuinfo_x86* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mce_flags, i32 0, i32 0), align 4
  %22 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %23 = load i32, i32* @X86_FEATURE_SUCCOR, align 4
  %24 = call i32 @cpu_has(%struct.cpuinfo_x86* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mce_flags, i32 0, i32 1), align 4
  %29 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %30 = load i32, i32* @X86_FEATURE_SMCA, align 4
  %31 = call i32 @cpu_has(%struct.cpuinfo_x86* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mce_flags, i32 0, i32 2), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mce_flags, i32 0, i32 2), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %14
  %39 = load i32, i32* @smca_ctl_reg, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 3), align 4
  %40 = load i32, i32* @smca_status_reg, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 2), align 4
  %41 = load i32, i32* @smca_addr_reg, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 1), align 4
  %42 = load i32, i32* @smca_misc_reg, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 0), align 4
  br label %43

43:                                               ; preds = %38, %14
  br label %44

44:                                               ; preds = %43, %8
  ret void
}

declare dso_local i32 @cpu_has(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
