; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_guest_config5.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_guest_config5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MIPS_CONF_M = common dso_local global i32 0, align 4
@MIPS_CONF5_MVH = common dso_local global i32 0, align 4
@MIPS_CONF5_MRP = common dso_local global i32 0, align 4
@MIPS_CPU_MAAR = common dso_local global i32 0, align 4
@MIPS_CONF5_LLB = common dso_local global i32 0, align 4
@MIPS_CPU_RW_LLB = common dso_local global i32 0, align 4
@MIPS_CPU_MVH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_guest_config5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_guest_config5(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MIPS_CONF_M, align 4
  %9 = load i32, i32* @MIPS_CONF5_MVH, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MIPS_CONF5_MRP, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @probe_gc0_config_dyn(i32 %5, i32 %6, i32 %7, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MIPS_CONF5_MRP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @MIPS_CPU_MAAR, align 4
  %20 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MIPS_CONF5_MRP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @MIPS_CPU_MAAR, align 4
  %32 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %33 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MIPS_CONF5_LLB, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @MIPS_CPU_RW_LLB, align 4
  %44 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MIPS_CONF5_MVH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* @MIPS_CPU_MVH, align 4
  %56 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %57 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @MIPS_CONF_M, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = call i32 @BIT(i32 6)
  %68 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %69 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @MIPS_CONF_M, align 4
  %76 = and i32 %74, %75
  ret i32 %76
}

declare dso_local i32 @probe_gc0_config_dyn(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
