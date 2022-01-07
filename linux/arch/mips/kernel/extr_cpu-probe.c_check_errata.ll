; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_check_errata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_check_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 4
@PRID_REV_MASK = common dso_local global i32 0, align 4
@PRID_REV_34K_V1_0_2 = common dso_local global i32 0, align 4
@MIPS_CONF7_RPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_errata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_errata() #0 {
  %1 = alloca %struct.cpuinfo_mips*, align 8
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %1, align 8
  %2 = call i32 (...) @current_cpu_type()
  switch i32 %2, label %17 [
    i32 128, label %3
  ]

3:                                                ; preds = %0
  %4 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %5 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PRID_REV_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @PRID_REV_34K_V1_0_2, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = call i32 (...) @read_c0_config7()
  %13 = load i32, i32* @MIPS_CONF7_RPS, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @write_c0_config7(i32 %14)
  br label %16

16:                                               ; preds = %11, %3
  br label %18

17:                                               ; preds = %0
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @write_c0_config7(i32) #1

declare dso_local i32 @read_c0_config7(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
