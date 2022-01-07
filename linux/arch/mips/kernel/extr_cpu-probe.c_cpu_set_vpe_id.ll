; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_set_vpe_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_set_vpe_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32 }

@MIPS_GLOBALNUMBER_VP = common dso_local global i32 0, align 4
@MIPS_GLOBALNUMBER_VP_SHF = common dso_local global i32 0, align 4
@CONFIG_MIPS_MT_SMP = common dso_local global i32 0, align 4
@CONFIG_CPU_MIPSR6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_set_vpe_id(%struct.cpuinfo_mips* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MIPS_GLOBALNUMBER_VP, align 4
  %7 = load i32, i32* @MIPS_GLOBALNUMBER_VP_SHF, align 4
  %8 = lshr i32 %6, %7
  %9 = icmp ugt i32 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @CONFIG_MIPS_MT_SMP, align 4
  %16 = call i32 @IS_ENABLED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @CONFIG_CPU_MIPSR6, align 4
  %20 = call i32 @IS_ENABLED(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %14, %2
  %24 = phi i1 [ false, %14 ], [ false, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* @MIPS_GLOBALNUMBER_VP, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MIPS_GLOBALNUMBER_VP_SHF, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %37 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
