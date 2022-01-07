; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_vz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_vz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32 }

@cpu_has_guestctl1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*)* @cpu_probe_vz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_probe_vz(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %3 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %4 = call i32 @cpu_probe_guestctl0(%struct.cpuinfo_mips* %3)
  %5 = load i64, i64* @cpu_has_guestctl1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %9 = call i32 @cpu_probe_guestctl1(%struct.cpuinfo_mips* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %12 = call i32 @cpu_probe_gtoffset(%struct.cpuinfo_mips* %11)
  %13 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %14 = call i32 @decode_guest_configs(%struct.cpuinfo_mips* %13)
  ret void
}

declare dso_local i32 @cpu_probe_guestctl0(%struct.cpuinfo_mips*) #1

declare dso_local i32 @cpu_probe_guestctl1(%struct.cpuinfo_mips*) #1

declare dso_local i32 @cpu_probe_gtoffset(%struct.cpuinfo_mips*) #1

declare dso_local i32 @decode_guest_configs(%struct.cpuinfo_mips*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
