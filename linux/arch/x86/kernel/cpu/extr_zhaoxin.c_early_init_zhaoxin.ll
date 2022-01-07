; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_zhaoxin.c_early_init_zhaoxin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_zhaoxin.c_early_init_zhaoxin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32, i32 }

@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_NONSTOP_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_SYSENTER32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @early_init_zhaoxin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_init_zhaoxin(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 6
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %14 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %23 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %24 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %22, i32 %23)
  %25 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %26 = load i32, i32* @X86_FEATURE_NONSTOP_TSC, align 4
  %27 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = call i32 @cpuid(i32 1, i32* %3, i32* %4, i32* %5, i32* %6)
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 268435456
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = call i32 @get_count_order(i32 %41)
  %43 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %44 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45, %28
  ret void
}

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_count_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
