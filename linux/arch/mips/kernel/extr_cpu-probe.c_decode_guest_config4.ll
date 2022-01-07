; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_guest_config4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_guest_config4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MIPS_CONF_M = common dso_local global i32 0, align 4
@MIPS_CONF4_KSCREXIST = common dso_local global i32 0, align 4
@MIPS_CONF4_KSCREXIST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_guest_config4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_guest_config4(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MIPS_CONF_M, align 4
  %7 = load i32, i32* @MIPS_CONF4_KSCREXIST, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @probe_gc0_config(i32 %4, i32 %5, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MIPS_CONF4_KSCREXIST, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @MIPS_CONF4_KSCREXIST_SHIFT, align 4
  %14 = lshr i32 %12, %13
  %15 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %16 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MIPS_CONF_M, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = call i32 @BIT(i32 5)
  %24 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %25 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MIPS_CONF_M, align 4
  %32 = and i32 %30, %31
  ret i32 %32
}

declare dso_local i32 @probe_gc0_config(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
