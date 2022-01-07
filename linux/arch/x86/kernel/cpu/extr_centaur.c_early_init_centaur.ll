; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_centaur.c_early_init_centaur.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_centaur.c_early_init_centaur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32 }

@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_NONSTOP_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_CENTAUR_MCR = common dso_local global i32 0, align 4
@X86_FEATURE_SYSENTER32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @early_init_centaur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_init_centaur(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %4 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 6, label %6
  ]

6:                                                ; preds = %1
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 15
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %14 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %6
  br label %16

16:                                               ; preds = %1, %15
  %17 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %18 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %24 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %25 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %23, i32 %24)
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = load i32, i32* @X86_FEATURE_NONSTOP_TSC, align 4
  %28 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
