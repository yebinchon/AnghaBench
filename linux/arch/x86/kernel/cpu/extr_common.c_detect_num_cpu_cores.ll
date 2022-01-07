; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_detect_num_cpu_cores.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_detect_num_cpu_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }

@CONFIG_SMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_num_cpu_cores(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @CONFIG_SMP, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  br label %29

18:                                               ; preds = %12
  %19 = call i32 @cpuid_count(i32 4, i32 0, i32* %3, i32* %4, i32* %5, i32* %6)
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 31
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = lshr i32 %24, 26
  %26 = add i32 %25, 1
  %27 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %28 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %23, %18
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
