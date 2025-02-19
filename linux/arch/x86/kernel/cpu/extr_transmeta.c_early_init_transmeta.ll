; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_transmeta.c_early_init_transmeta.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_transmeta.c_early_init_transmeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32* }

@CPUID_8086_0001_EDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @early_init_transmeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_init_transmeta(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %4 = call i32 @cpuid_eax(i32 -2138701824)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, -65536
  %7 = icmp eq i32 %6, -2138701824
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp uge i32 %9, -2138701823
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = call i32 @cpuid_edx(i32 -2138701823)
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @CPUID_8086_0001_EDX, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %12, i32* %17, align 4
  br label %18

18:                                               ; preds = %11, %8
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @cpuid_edx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
