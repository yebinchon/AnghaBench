; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpuflags.c_get_cpuflags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpuflags.c_get_cpuflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@loaded_flags = common dso_local global i32 0, align 4
@X86_FEATURE_FPU = common dso_local global i32 0, align 4
@cpu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_EFLAGS_ID = common dso_local global i32 0, align 4
@cpu_vendor = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_cpuflags() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @loaded_flags, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %76

8:                                                ; preds = %0
  store i32 1, i32* @loaded_flags, align 4
  %9 = call i64 (...) @has_fpu()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @X86_FEATURE_FPU, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 0), align 8
  %14 = call i32 @set_bit(i32 %12, i32* %13)
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* @X86_EFLAGS_ID, align 4
  %17 = call i64 @has_eflag(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  %20 = load i32*, i32** @cpu_vendor, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32*, i32** @cpu_vendor, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32*, i32** @cpu_vendor, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = call i32 @cpuid(i32 0, i32* %1, i32* %21, i32* %23, i32* %25)
  %27 = load i32, i32* %1, align 4
  %28 = icmp sge i32 %27, 1
  br i1 %28, label %29, label %55

29:                                               ; preds = %19
  %30 = load i32, i32* %1, align 4
  %31 = icmp sle i32 %30, 65535
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @cpuid(i32 1, i32* %3, i32* %4, i32* %34, i32* %36)
  %38 = load i32, i32* %3, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 15
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 1), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 1), align 8
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 2), align 4
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 15
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 3), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 1), align 8
  %46 = icmp sge i32 %45, 6
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 16
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 3), align 8
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 3), align 8
  br label %54

54:                                               ; preds = %47, %32
  br label %55

55:                                               ; preds = %54, %29, %19
  %56 = load i32, i32* %1, align 4
  %57 = icmp sge i32 %56, 7
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 0), align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 16
  %61 = call i32 @cpuid_count(i32 7, i32 0, i32* %4, i32* %4, i32* %60, i32* %4)
  br label %62

62:                                               ; preds = %58, %55
  %63 = call i32 @cpuid(i32 -2147483648, i32* %2, i32* %4, i32* %4, i32* %4)
  %64 = load i32, i32* %2, align 4
  %65 = icmp uge i32 %64, -2147483647
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = icmp ule i32 %67, -2147418113
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 0), align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @cpuid(i32 -2147483647, i32* %4, i32* %4, i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %69, %66, %62
  br label %76

76:                                               ; preds = %7, %75, %15
  ret void
}

declare dso_local i64 @has_fpu(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @has_eflag(i32) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
