; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_disable_singlestep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_disable_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe_ctlblk = type { i32, i32 }
%struct.pt_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PSW_MASK_PER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe_ctlblk*, %struct.pt_regs*, i64)* @disable_singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_singlestep(%struct.kprobe_ctlblk* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca %struct.kprobe_ctlblk*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  store %struct.kprobe_ctlblk* %0, %struct.kprobe_ctlblk** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %8 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @__ctl_load(i32 %9, i32 9, i32 11)
  %11 = load i32, i32* @PSW_MASK_PER, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %12
  store i32 %17, i32* %15, align 8
  %18 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %19 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  ret void
}

declare dso_local i32 @__ctl_load(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
