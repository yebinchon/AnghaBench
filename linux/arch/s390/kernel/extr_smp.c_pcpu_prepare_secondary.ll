; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_prepare_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_prepare_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.pcpu = type { %struct.lowcore* }
%struct.lowcore = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i64, i32 }

@init_mm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@__per_cpu_offset = common dso_local global i32* null, align 8
@S390_lowcore = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcpu*, i32)* @pcpu_prepare_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_prepare_secondary(%struct.pcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lowcore*, align 8
  store %struct.pcpu* %0, %struct.pcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %7 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 0
  %8 = load %struct.lowcore*, %struct.lowcore** %7, align 8
  store %struct.lowcore* %8, %struct.lowcore** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cpumask_set_cpu(i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @init_mm, i32 0, i32 0, i32 0))
  %11 = load i32, i32* %4, align 4
  %12 = call i32* @mm_cpumask(%struct.TYPE_6__* @init_mm)
  %13 = call i32 @cpumask_set_cpu(i32 %11, i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %16 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @arch_spin_lockval(i32 %17)
  %19 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %20 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 8
  %21 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %22 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %21, i32 0, i32 12
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** @__per_cpu_offset, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %29 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @S390_lowcore, i32 0, i32 3), align 4
  %31 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %32 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @S390_lowcore, i32 0, i32 2), align 4
  %34 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %35 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %37 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %39 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %41 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %43 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %45 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @__ctl_store(i32 %46, i32 0, i32 15)
  %48 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %49 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @save_access_regs(i32* %51)
  %53 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %54 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @S390_lowcore, i32 0, i32 1), align 4
  %57 = call i32 @memcpy(i32 %55, i32 %56, i32 4)
  %58 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %59 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @S390_lowcore, i32 0, i32 0), align 4
  %62 = call i32 @memcpy(i32 %60, i32 %61, i32 4)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @arch_spin_lock_setup(i32 %63)
  ret void
}

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32* @mm_cpumask(%struct.TYPE_6__*) #1

declare dso_local i32 @arch_spin_lockval(i32) #1

declare dso_local i32 @__ctl_store(i32, i32, i32) #1

declare dso_local i32 @save_access_regs(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @arch_spin_lock_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
