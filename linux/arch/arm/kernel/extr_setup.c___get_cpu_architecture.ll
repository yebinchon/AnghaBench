; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_setup.c___get_cpu_architecture.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_setup.c___get_cpu_architecture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_ARCH_UNKNOWN = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv4T = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv3 = common dso_local global i32 0, align 4
@CPUID_EXT_MMFR0 = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv7 = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__get_cpu_architecture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_cpu_architecture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @read_cpuid_id()
  %4 = and i32 %3, 585728
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @CPU_ARCH_UNKNOWN, align 4
  store i32 %7, i32* %1, align 4
  br label %72

8:                                                ; preds = %0
  %9 = call i32 (...) @read_cpuid_id()
  %10 = and i32 %9, 585728
  %11 = icmp eq i32 %10, 28672
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = call i32 (...) @read_cpuid_id()
  %14 = and i32 %13, 8388608
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @CPU_ARCH_ARMv4T, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @CPU_ARCH_ARMv3, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %1, align 4
  br label %71

22:                                               ; preds = %8
  %23 = call i32 (...) @read_cpuid_id()
  %24 = and i32 %23, 524288
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = call i32 (...) @read_cpuid_id()
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 7
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @CPU_ARCH_ARMv3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %26
  br label %70

37:                                               ; preds = %22
  %38 = call i32 (...) @read_cpuid_id()
  %39 = and i32 %38, 983040
  %40 = icmp eq i32 %39, 983040
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load i32, i32* @CPUID_EXT_MMFR0, align 4
  %43 = call i32 @read_cpuid_ext(i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, 15
  %46 = icmp uge i32 %45, 3
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %2, align 4
  %49 = and i32 %48, 240
  %50 = icmp uge i32 %49, 48
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %41
  %52 = load i32, i32* @CPU_ARCH_ARMv7, align 4
  store i32 %52, i32* %1, align 4
  br label %66

53:                                               ; preds = %47
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 15
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %2, align 4
  %59 = and i32 %58, 240
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @CPU_ARCH_ARMv6, align 4
  store i32 %62, i32* %1, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @CPU_ARCH_UNKNOWN, align 4
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %51
  br label %69

67:                                               ; preds = %37
  %68 = load i32, i32* @CPU_ARCH_UNKNOWN, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %67, %66
  br label %70

70:                                               ; preds = %69, %36
  br label %71

71:                                               ; preds = %70, %20
  br label %72

72:                                               ; preds = %71, %6
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @read_cpuid_id(...) #1

declare dso_local i32 @read_cpuid_ext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
