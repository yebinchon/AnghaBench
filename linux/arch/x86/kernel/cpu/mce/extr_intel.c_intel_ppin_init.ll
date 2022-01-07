; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_intel_ppin_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_intel_ppin_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@MSR_PPIN_CTL = common dso_local global i32 0, align 4
@X86_FEATURE_INTEL_PPIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @intel_ppin_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ppin_init(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i64, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %5 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %37 [
    i32 131, label %7
    i32 132, label %7
    i32 134, label %7
    i32 133, label %7
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  %8 = load i32, i32* @MSR_PPIN_CTL, align 4
  %9 = call i32 @rdmsrl_safe(i32 %8, i64* %3)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %37

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 3
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %37

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, 3
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @MSR_PPIN_CTL, align 4
  %23 = load i64, i64* %3, align 8
  %24 = or i64 %23, 2
  %25 = call i32 @wrmsrl_safe(i32 %22, i64 %24)
  %26 = load i32, i32* @MSR_PPIN_CTL, align 4
  %27 = call i32 @rdmsrl_safe(i32 %26, i64* %3)
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i64, i64* %3, align 8
  %30 = and i64 %29, 3
  %31 = icmp eq i64 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %34 = load i32, i32* @X86_FEATURE_INTEL_PPIN, align 4
  %35 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %11, %16, %36, %1
  ret void
}

declare dso_local i32 @rdmsrl_safe(i32, i64*) #1

declare dso_local i32 @wrmsrl_safe(i32, i64) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
