; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_print_ucode_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_print_ucode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"microcode updated early to revision 0x%x, date = %04x-%02x-%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucode_cpu_info*, i32)* @print_ucode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ucode_info(%struct.ucode_cpu_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ucode_cpu_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ucode_cpu_info* %0, %struct.ucode_cpu_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %3, align 8
  %6 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 65535
  %11 = load i32, i32* %4, align 4
  %12 = lshr i32 %11, 24
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = call i32 @pr_info_once(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @pr_info_once(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
