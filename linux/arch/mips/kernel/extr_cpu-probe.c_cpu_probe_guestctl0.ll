; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_guestctl0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_guestctl0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32 }

@MIPS_GCTL0_G0E = common dso_local global i32 0, align 4
@MIPS_CPU_GUESTCTL0EXT = common dso_local global i32 0, align 4
@MIPS_GCTL0_G1 = common dso_local global i32 0, align 4
@MIPS_CPU_GUESTCTL1 = common dso_local global i32 0, align 4
@MIPS_GCTL0_G2 = common dso_local global i32 0, align 4
@MIPS_CPU_GUESTCTL2 = common dso_local global i32 0, align 4
@MIPS_GCTL0_RAD = common dso_local global i32 0, align 4
@MIPS_CPU_GUESTID = common dso_local global i32 0, align 4
@MIPS_GCTL0_DRG = common dso_local global i32 0, align 4
@MIPS_CPU_DRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*)* @cpu_probe_guestctl0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_probe_guestctl0(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %5 = call i32 (...) @read_c0_guestctl0()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MIPS_GCTL0_G0E, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @MIPS_CPU_GUESTCTL0EXT, align 4
  %12 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %13 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MIPS_GCTL0_G1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @MIPS_CPU_GUESTCTL1, align 4
  %23 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %24 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MIPS_GCTL0_G2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @MIPS_CPU_GUESTCTL2, align 4
  %34 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MIPS_GCTL0_RAD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @MIPS_CPU_GUESTID, align 4
  %45 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %46 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = call i32 @write_c0_guestctl1(i32 0)
  %50 = call i32 (...) @tlbw_use_hazard()
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MIPS_GCTL0_DRG, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @write_c0_guestctl0(i32 %53)
  %55 = call i32 (...) @back_to_back_c0_hazard()
  %56 = call i32 (...) @read_c0_guestctl0()
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @MIPS_GCTL0_DRG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %43
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @write_c0_guestctl0(i32 %62)
  %64 = load i32, i32* @MIPS_CPU_DRG, align 4
  %65 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %66 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %43
  br label %70

70:                                               ; preds = %69, %38
  ret void
}

declare dso_local i32 @read_c0_guestctl0(...) #1

declare dso_local i32 @write_c0_guestctl1(i32) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @write_c0_guestctl0(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
