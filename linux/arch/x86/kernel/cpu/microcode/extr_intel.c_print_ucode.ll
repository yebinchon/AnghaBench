; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_print_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_print_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { %struct.microcode_intel* }
%struct.microcode_intel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucode_cpu_info*)* @print_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ucode(%struct.ucode_cpu_info* %0) #0 {
  %2 = alloca %struct.ucode_cpu_info*, align 8
  %3 = alloca %struct.microcode_intel*, align 8
  store %struct.ucode_cpu_info* %0, %struct.ucode_cpu_info** %2, align 8
  %4 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %5 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %4, i32 0, i32 0
  %6 = load %struct.microcode_intel*, %struct.microcode_intel** %5, align 8
  store %struct.microcode_intel* %6, %struct.microcode_intel** %3, align 8
  %7 = load %struct.microcode_intel*, %struct.microcode_intel** %3, align 8
  %8 = icmp ne %struct.microcode_intel* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %12 = load %struct.microcode_intel*, %struct.microcode_intel** %3, align 8
  %13 = getelementptr inbounds %struct.microcode_intel, %struct.microcode_intel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @print_ucode_info(%struct.ucode_cpu_info* %11, i32 %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @print_ucode_info(%struct.ucode_cpu_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
