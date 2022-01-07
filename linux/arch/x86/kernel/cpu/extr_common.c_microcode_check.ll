; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_microcode_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_microcode_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpuinfo_x86 = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [88 x i8] c"x86/CPU: CPU features have changed after loading microcode, but might not take effect.\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"x86/CPU: Please consider either early loading through initrd/built-in or a potential BIOS update.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @microcode_check() #0 {
  %1 = alloca %struct.cpuinfo_x86, align 4
  %2 = call i32 (...) @perf_check_microcode()
  %3 = call i32 @cpuid_eax(i32 0)
  %4 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %1, i32 0, i32 1
  store i32 %3, i32* %4, align 4
  %5 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %1, i32 0, i32 0
  %6 = call i32 @memcpy(i32* %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), i32 4)
  %7 = call i32 @get_cpu_cap(%struct.cpuinfo_x86* %1)
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %1, i32 0, i32 0
  %9 = call i32 @memcmp(i32* %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), i32 4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %15

12:                                               ; preds = %0
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @perf_check_microcode(...) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_cpu_cap(%struct.cpuinfo_x86*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
