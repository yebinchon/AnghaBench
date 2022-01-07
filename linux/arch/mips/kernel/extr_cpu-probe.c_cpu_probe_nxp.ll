; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_nxp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_nxp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32 }

@PRID_IMP_MASK = common dso_local global i32 0, align 4
@CPU_PR4450 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Philips PR4450\00", align 1
@__cpu_name = common dso_local global i8** null, align 8
@MIPS_CPU_ISA_M32R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*, i32)* @cpu_probe_nxp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_probe_nxp(%struct.cpuinfo_mips* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %6 = call i32 @decode_configs(%struct.cpuinfo_mips* %5)
  %7 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PRID_IMP_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %23 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @CPU_PR4450, align 4
  %14 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i8**, i8*** @__cpu_name, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %21 = load i32, i32* @MIPS_CPU_ISA_M32R1, align 4
  %22 = call i32 @set_isa(%struct.cpuinfo_mips* %20, i32 %21)
  br label %23

23:                                               ; preds = %2, %12
  ret void
}

declare dso_local i32 @decode_configs(%struct.cpuinfo_mips*) #1

declare dso_local i32 @set_isa(%struct.cpuinfo_mips*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
