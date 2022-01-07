; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_post_kprobe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_post_kprobe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kprobe_ctlblk = type { i64 }
%struct.kprobe = type { i32 (%struct.kprobe*, %struct.pt_regs*, i32)* }

@KPROBE_REENTER = common dso_local global i64 0, align 8
@KPROBE_HIT_SSDONE = common dso_local global i64 0, align 8
@PSW_MASK_PER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @post_kprobe_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_kprobe_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.kprobe_ctlblk*, align 8
  %5 = alloca %struct.kprobe*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %6, %struct.kprobe_ctlblk** %4, align 8
  %7 = call %struct.kprobe* (...) @kprobe_running()
  store %struct.kprobe* %7, %struct.kprobe** %5, align 8
  %8 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %9 = icmp ne %struct.kprobe* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %13 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @KPROBE_REENTER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %19 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %18, i32 0, i32 0
  %20 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.kprobe*, %struct.pt_regs*, i32)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i64, i64* @KPROBE_HIT_SSDONE, align 8
  %24 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %25 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %27 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %26, i32 0, i32 0
  %28 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %27, align 8
  %29 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %31 = call i32 %28(%struct.kprobe* %29, %struct.pt_regs* %30, i32 0)
  br label %32

32:                                               ; preds = %22, %17, %11
  %33 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %35 = call i32 @resume_execution(%struct.kprobe* %33, %struct.pt_regs* %34)
  %36 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %37 = call i32 @pop_kprobe(%struct.kprobe_ctlblk* %36)
  %38 = call i32 (...) @preempt_enable_no_resched()
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PSW_MASK_PER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %48

47:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %46, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local %struct.kprobe* @kprobe_running(...) #1

declare dso_local i32 @resume_execution(%struct.kprobe*, %struct.pt_regs*) #1

declare dso_local i32 @pop_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
