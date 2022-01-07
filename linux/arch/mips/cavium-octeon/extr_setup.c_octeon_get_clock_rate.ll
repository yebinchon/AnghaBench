; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_setup.c_octeon_get_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_setup.c_octeon_get_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_sysinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_get_clock_rate() #0 {
  %1 = alloca %struct.cvmx_sysinfo*, align 8
  %2 = call %struct.cvmx_sysinfo* (...) @cvmx_sysinfo_get()
  store %struct.cvmx_sysinfo* %2, %struct.cvmx_sysinfo** %1, align 8
  %3 = load %struct.cvmx_sysinfo*, %struct.cvmx_sysinfo** %1, align 8
  %4 = getelementptr inbounds %struct.cvmx_sysinfo, %struct.cvmx_sysinfo* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

declare dso_local %struct.cvmx_sysinfo* @cvmx_sysinfo_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
