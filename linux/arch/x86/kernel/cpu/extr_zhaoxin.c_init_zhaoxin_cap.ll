; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_zhaoxin.c_init_zhaoxin_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_zhaoxin.c_init_zhaoxin_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i8** }

@ACE_PRESENT = common dso_local global i32 0, align 4
@ACE_ENABLED = common dso_local global i32 0, align 4
@MSR_ZHAOXIN_FCR57 = common dso_local global i32 0, align 4
@ACE_FCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CPU: Enabled ACE h/w crypto\0A\00", align 1
@RNG_PRESENT = common dso_local global i32 0, align 4
@RNG_ENABLED = common dso_local global i32 0, align 4
@RNG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CPU: Enabled h/w RNG\0A\00", align 1
@CPUID_C000_0001_EDX = common dso_local global i64 0, align 8
@X86_FEATURE_REP_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_zhaoxin_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zhaoxin_cap(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %6 = call i32 @cpuid_eax(i32 -1073741824)
  %7 = icmp uge i32 %6, -1073741823
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = call i8* @cpuid_edx(i32 -1073741823)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ACE_PRESENT, align 4
  %13 = load i32, i32* @ACE_ENABLED, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @ACE_PRESENT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %8
  %19 = load i32, i32* @MSR_ZHAOXIN_FCR57, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @rdmsr(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @ACE_FCR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @MSR_ZHAOXIN_FCR57, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @wrmsr(i32 %26, i32 %27, i32 %28)
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %18, %8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RNG_PRESENT, align 4
  %34 = load i32, i32* @RNG_ENABLED, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @RNG_PRESENT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load i32, i32* @MSR_ZHAOXIN_FCR57, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rdmsr(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @RNG_ENABLE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @MSR_ZHAOXIN_FCR57, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @wrmsr(i32 %47, i32 %48, i32 %49)
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %39, %31
  %53 = call i8* @cpuid_edx(i32 -1073741823)
  %54 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %55 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* @CPUID_C000_0001_EDX, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %53, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %1
  %60 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %61 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 6
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %66 = load i32, i32* @X86_FEATURE_REP_GOOD, align 4
  %67 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %70 = call i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86* %69)
  ret void
}

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i8* @cpuid_edx(i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
