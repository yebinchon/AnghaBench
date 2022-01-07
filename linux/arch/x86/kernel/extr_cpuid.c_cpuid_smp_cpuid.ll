; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_cpuid.c_cpuid_smp_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_cpuid.c_cpuid_smp_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuid_regs_done = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpuid_smp_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuid_smp_cpuid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpuid_regs_done*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cpuid_regs_done*
  store %struct.cpuid_regs_done* %5, %struct.cpuid_regs_done** %3, align 8
  %6 = load %struct.cpuid_regs_done*, %struct.cpuid_regs_done** %3, align 8
  %7 = getelementptr inbounds %struct.cpuid_regs_done, %struct.cpuid_regs_done* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cpuid_regs_done*, %struct.cpuid_regs_done** %3, align 8
  %11 = getelementptr inbounds %struct.cpuid_regs_done, %struct.cpuid_regs_done* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cpuid_regs_done*, %struct.cpuid_regs_done** %3, align 8
  %15 = getelementptr inbounds %struct.cpuid_regs_done, %struct.cpuid_regs_done* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load %struct.cpuid_regs_done*, %struct.cpuid_regs_done** %3, align 8
  %18 = getelementptr inbounds %struct.cpuid_regs_done, %struct.cpuid_regs_done* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.cpuid_regs_done*, %struct.cpuid_regs_done** %3, align 8
  %21 = getelementptr inbounds %struct.cpuid_regs_done, %struct.cpuid_regs_done* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.cpuid_regs_done*, %struct.cpuid_regs_done** %3, align 8
  %24 = getelementptr inbounds %struct.cpuid_regs_done, %struct.cpuid_regs_done* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @cpuid_count(i32 %9, i32 %13, i32* %16, i32* %19, i32* %22, i32* %25)
  %27 = load %struct.cpuid_regs_done*, %struct.cpuid_regs_done** %3, align 8
  %28 = getelementptr inbounds %struct.cpuid_regs_done, %struct.cpuid_regs_done* %27, i32 0, i32 0
  %29 = call i32 @complete(i32* %28)
  ret void
}

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
