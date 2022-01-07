; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_early_detect_mem_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_amd.c_early_detect_mem_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@X86_FEATURE_SME = common dso_local global i32 0, align 4
@X86_FEATURE_SEV = common dso_local global i32 0, align 4
@MSR_K8_SYSCFG = common dso_local global i32 0, align 4
@MSR_K8_SYSCFG_MEM_ENCRYPT = common dso_local global i32 0, align 4
@CONFIG_X86_32 = common dso_local global i32 0, align 4
@MSR_K7_HWCR = common dso_local global i32 0, align 4
@MSR_K7_HWCR_SMMLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @early_detect_mem_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_detect_mem_encrypt(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %5 = load i32, i32* @X86_FEATURE_SME, align 4
  %6 = call i64 @cpu_has(%struct.cpuinfo_x86* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %10 = load i32, i32* @X86_FEATURE_SEV, align 4
  %11 = call i64 @cpu_has(%struct.cpuinfo_x86* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @MSR_K8_SYSCFG, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @rdmsrl(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MSR_K8_SYSCFG_MEM_ENCRYPT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %44

22:                                               ; preds = %13
  %23 = call i32 @cpuid_ebx(i32 -2147483617)
  %24 = ashr i32 %23, 6
  %25 = and i32 %24, 63
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @CONFIG_X86_32, align 4
  %31 = call i64 @IS_ENABLED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %44

34:                                               ; preds = %22
  %35 = load i32, i32* @MSR_K7_HWCR, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @rdmsrl(i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MSR_K7_HWCR_SMMLOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %48

43:                                               ; preds = %34
  br label %52

44:                                               ; preds = %33, %21
  %45 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %46 = load i32, i32* @X86_FEATURE_SME, align 4
  %47 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %42
  %49 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %50 = load i32, i32* @X86_FEATURE_SEV, align 4
  %51 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %48, %8
  ret void
}

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @cpuid_ebx(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
