; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_apply_microcode_early.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_apply_microcode_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { %struct.TYPE_4__, %struct.microcode_intel* }
%struct.TYPE_4__ = type { i64 }
%struct.microcode_intel = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@UCODE_OK = common dso_local global i32 0, align 4
@MSR_IA32_UCODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucode_cpu_info*, i32)* @apply_microcode_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_microcode_early(%struct.ucode_cpu_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucode_cpu_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.microcode_intel*, align 8
  %7 = alloca i64, align 8
  store %struct.ucode_cpu_info* %0, %struct.ucode_cpu_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %4, align 8
  %9 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %8, i32 0, i32 1
  %10 = load %struct.microcode_intel*, %struct.microcode_intel** %9, align 8
  store %struct.microcode_intel* %10, %struct.microcode_intel** %6, align 8
  %11 = load %struct.microcode_intel*, %struct.microcode_intel** %6, align 8
  %12 = icmp ne %struct.microcode_intel* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = call i64 (...) @intel_get_microcode_revision()
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.microcode_intel*, %struct.microcode_intel** %6, align 8
  %18 = getelementptr inbounds %struct.microcode_intel, %struct.microcode_intel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %4, align 8
  %25 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load i32, i32* @UCODE_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %14
  %29 = call i32 (...) @native_wbinvd()
  %30 = load i32, i32* @MSR_IA32_UCODE_WRITE, align 4
  %31 = load %struct.microcode_intel*, %struct.microcode_intel** %6, align 8
  %32 = getelementptr inbounds %struct.microcode_intel, %struct.microcode_intel* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @native_wrmsrl(i32 %30, i64 %33)
  %35 = call i64 (...) @intel_get_microcode_revision()
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.microcode_intel*, %struct.microcode_intel** %6, align 8
  %38 = getelementptr inbounds %struct.microcode_intel, %struct.microcode_intel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %61

43:                                               ; preds = %28
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %4, align 8
  %46 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %4, align 8
  %52 = call i32 @print_ucode(%struct.ucode_cpu_info* %51)
  br label %60

53:                                               ; preds = %43
  %54 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %4, align 8
  %55 = load %struct.microcode_intel*, %struct.microcode_intel** %6, align 8
  %56 = getelementptr inbounds %struct.microcode_intel, %struct.microcode_intel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @print_ucode_info(%struct.ucode_cpu_info* %54, i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %42, %22, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @intel_get_microcode_revision(...) #1

declare dso_local i32 @native_wbinvd(...) #1

declare dso_local i32 @native_wrmsrl(i32, i64) #1

declare dso_local i32 @print_ucode(%struct.ucode_cpu_info*) #1

declare dso_local i32 @print_ucode_info(%struct.ucode_cpu_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
