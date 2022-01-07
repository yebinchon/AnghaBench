; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_get_cpu_address_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_get_cpu_address_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32, i32 }

@X86_FEATURE_PAE = common dso_local global i32 0, align 4
@X86_FEATURE_PSE36 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_cpu_address_sizes(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp uge i32 %9, -2147483640
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = call i32 @cpuid(i32 -2147483640, i32* %3, i32* %4, i32* %5, i32* %6)
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 255
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %24 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
