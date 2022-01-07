; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_transmeta.c_init_transmeta.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_transmeta.c_init_transmeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32* }

@.str = private unnamed_addr constant [45 x i8] c"CPU: Processor revision %u.%u.%u.%u, %u MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"CPU: Processor revision %08X, %u MHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"CPU: Code Morphing Software revision %u.%u.%u-%u-%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CPU: %s\0A\00", align 1
@CPUID_1_EDX = common dso_local global i64 0, align 8
@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@randomize_va_space = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_transmeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_transmeta(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [65 x i8], align 16
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %15 = call i32 @early_init_transmeta(%struct.cpuinfo_x86* %14)
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %17 = call i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86* %16)
  %18 = call i32 @cpuid_eax(i32 -2138701824)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp uge i32 %19, -2138701823
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = bitcast i32* %6 to i8*
  %23 = bitcast i32* %9 to i8*
  %24 = bitcast i32* %10 to i8*
  %25 = bitcast i32* %11 to i8*
  %26 = call i32 @cpuid(i32 -2138701823, i8* %22, i8* %23, i8* %24, i8* %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 33554432
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = lshr i32 %30, 24
  %32 = and i32 %31, 255
  %33 = load i32, i32* %9, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = load i32, i32* %9, align 4
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 255
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %29, %21
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* %5, align 4
  %46 = icmp uge i32 %45, -2138701822
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = bitcast i32* %12 to i8*
  %49 = bitcast i32* %7 to i8*
  %50 = bitcast i32* %8 to i8*
  %51 = bitcast i32* %6 to i8*
  %52 = call i32 @cpuid(i32 -2138701822, i8* %48, i8* %49, i8* %50, i8* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 33554432
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %7, align 4
  %61 = lshr i32 %60, 24
  %62 = and i32 %61, 255
  %63 = load i32, i32* %7, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = load i32, i32* %7, align 4
  %67 = lshr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 255
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %59, %44
  %74 = load i32, i32* %5, align 4
  %75 = icmp uge i32 %74, -2138701818
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 0
  %78 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 4
  %79 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 8
  %80 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 12
  %81 = call i32 @cpuid(i32 -2138701821, i8* %77, i8* %78, i8* %79, i8* %80)
  %82 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 16
  %83 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 20
  %84 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 24
  %85 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 28
  %86 = call i32 @cpuid(i32 -2138701820, i8* %82, i8* %83, i8* %84, i8* %85)
  %87 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 32
  %88 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 36
  %89 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 40
  %90 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 44
  %91 = call i32 @cpuid(i32 -2138701819, i8* %87, i8* %88, i8* %89, i8* %90)
  %92 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 48
  %93 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 52
  %94 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 56
  %95 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 60
  %96 = call i32 @cpuid(i32 -2138701818, i8* %92, i8* %93, i8* %94, i8* %95)
  %97 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 64
  store i8 0, i8* %97, align 16
  %98 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 0
  %99 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %76, %73
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @rdmsr(i32 -2138701820, i32 %101, i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @wrmsr(i32 -2138701820, i32 -1, i32 %104)
  %106 = call i32 @cpuid_edx(i32 1)
  %107 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %108 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @CPUID_1_EDX, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @wrmsr(i32 -2138701820, i32 %112, i32 %113)
  %115 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %116 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %117 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %115, i32 %116)
  ret void
}

declare dso_local i32 @early_init_transmeta(%struct.cpuinfo_x86*) #1

declare dso_local i32 @cpu_detect_cache_sizes(%struct.cpuinfo_x86*) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @cpuid(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @cpuid_edx(i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
