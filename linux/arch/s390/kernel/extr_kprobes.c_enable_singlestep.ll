; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_enable_singlestep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_enable_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe_ctlblk = type { i32, i32 }
%struct.pt_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.per_regs = type { i64, i64, i32 }

@PER_EVENT_IFETCH = common dso_local global i32 0, align 4
@PSW_MASK_PER = common dso_local global i32 0, align 4
@PSW_MASK_IO = common dso_local global i32 0, align 4
@PSW_MASK_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe_ctlblk*, %struct.pt_regs*, i64)* @enable_singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_singlestep(%struct.kprobe_ctlblk* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca %struct.kprobe_ctlblk*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.per_regs, align 8
  store %struct.kprobe_ctlblk* %0, %struct.kprobe_ctlblk** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @PER_EVENT_IFETCH, align 4
  %9 = getelementptr inbounds %struct.per_regs, %struct.per_regs* %7, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.per_regs, %struct.per_regs* %7, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.per_regs, %struct.per_regs* %7, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %15 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__ctl_store(i32 %16, i32 9, i32 11)
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PSW_MASK_PER, align 4
  %23 = load i32, i32* @PSW_MASK_IO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PSW_MASK_EXT, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  %28 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %29 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call i32 @__ctl_load(%struct.per_regs* byval(%struct.per_regs) align 8 %7, i32 9, i32 11)
  %31 = load i32, i32* @PSW_MASK_PER, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @PSW_MASK_IO, align 4
  %38 = load i32, i32* @PSW_MASK_EXT, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  ret void
}

declare dso_local i32 @__ctl_store(i32, i32, i32) #1

declare dso_local i32 @__ctl_load(%struct.per_regs* byval(%struct.per_regs) align 8, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
