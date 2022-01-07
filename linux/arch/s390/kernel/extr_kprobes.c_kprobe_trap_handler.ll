; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_trap_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_trap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kprobe_ctlblk = type { i32 }
%struct.kprobe = type { i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i64 }
%struct.exception_table_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @kprobe_trap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kprobe_trap_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kprobe_ctlblk*, align 8
  %7 = alloca %struct.kprobe*, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %9, %struct.kprobe_ctlblk** %6, align 8
  %10 = call %struct.kprobe* (...) @kprobe_running()
  store %struct.kprobe* %10, %struct.kprobe** %7, align 8
  %11 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %12 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %56 [
    i32 130, label %14
    i32 128, label %14
    i32 131, label %24
    i32 129, label %24
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = load %struct.kprobe*, %struct.kprobe** %7, align 8
  %18 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @disable_singlestep(%struct.kprobe_ctlblk* %15, %struct.pt_regs* %16, i64 %19)
  %21 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %22 = call i32 @pop_kprobe(%struct.kprobe_ctlblk* %21)
  %23 = call i32 (...) @preempt_enable_no_resched()
  br label %57

24:                                               ; preds = %2, %2
  %25 = load %struct.kprobe*, %struct.kprobe** %7, align 8
  %26 = call i32 @kprobes_inc_nmissed_count(%struct.kprobe* %25)
  %27 = load %struct.kprobe*, %struct.kprobe** %7, align 8
  %28 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %27, i32 0, i32 0
  %29 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.kprobe*, %struct.pt_regs*, i32)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.kprobe*, %struct.kprobe** %7, align 8
  %33 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %32, i32 0, i32 0
  %34 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %33, align 8
  %35 = load %struct.kprobe*, %struct.kprobe** %7, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 %34(%struct.kprobe* %35, %struct.pt_regs* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %58

41:                                               ; preds = %31, %24
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.exception_table_entry* @s390_search_extables(i32 %45)
  store %struct.exception_table_entry* %46, %struct.exception_table_entry** %8, align 8
  %47 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %48 = icmp ne %struct.exception_table_entry* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %51 = call i32 @extable_fixup(%struct.exception_table_entry* %50)
  %52 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  store i32 1, i32* %3, align 4
  br label %58

55:                                               ; preds = %41
  br label %57

56:                                               ; preds = %2
  br label %57

57:                                               ; preds = %56, %55, %14
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49, %40
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local %struct.kprobe* @kprobe_running(...) #1

declare dso_local i32 @disable_singlestep(%struct.kprobe_ctlblk*, %struct.pt_regs*, i64) #1

declare dso_local i32 @pop_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.kprobe*) #1

declare dso_local %struct.exception_table_entry* @s390_search_extables(i32) #1

declare dso_local i32 @extable_fixup(%struct.exception_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
