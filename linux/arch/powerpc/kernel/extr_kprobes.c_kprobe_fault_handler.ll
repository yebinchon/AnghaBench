; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_kprobe_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_kprobe_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32 }
%struct.kprobe = type { i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i64 }
%struct.kprobe_ctlblk = type { i32, i32 }
%struct.exception_table_entry = type { i32 }

@MSR_SINGLESTEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kprobe_fault_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kprobe*, align 8
  %7 = alloca %struct.kprobe_ctlblk*, align 8
  %8 = alloca %struct.exception_table_entry*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.kprobe* (...) @kprobe_running()
  store %struct.kprobe* %9, %struct.kprobe** %6, align 8
  %10 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %10, %struct.kprobe_ctlblk** %7, align 8
  %11 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %12 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %73 [
    i32 130, label %14
    i32 128, label %14
    i32 131, label %44
    i32 129, label %44
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %16 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @MSR_SINGLESTEP, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %27 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %34 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %40

37:                                               ; preds = %14
  %38 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %39 = call i32 @restore_previous_kprobe(%struct.kprobe_ctlblk* %38)
  br label %42

40:                                               ; preds = %14
  %41 = call i32 (...) @reset_current_kprobe()
  br label %42

42:                                               ; preds = %40, %37
  %43 = call i32 (...) @preempt_enable_no_resched()
  br label %74

44:                                               ; preds = %2, %2
  %45 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %46 = call i32 @kprobes_inc_nmissed_count(%struct.kprobe* %45)
  %47 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %48 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %47, i32 0, i32 0
  %49 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.kprobe*, %struct.pt_regs*, i32)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %53 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %52, i32 0, i32 0
  %54 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %53, align 8
  %55 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 %54(%struct.kprobe* %55, %struct.pt_regs* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %75

61:                                               ; preds = %51, %44
  %62 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.exception_table_entry* @search_exception_tables(i64 %64)
  store %struct.exception_table_entry* %65, %struct.exception_table_entry** %8, align 8
  %66 = icmp ne %struct.exception_table_entry* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.exception_table_entry*, %struct.exception_table_entry** %8, align 8
  %69 = call i64 @extable_fixup(%struct.exception_table_entry* %68)
  %70 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  store i32 1, i32* %3, align 4
  br label %75

72:                                               ; preds = %61
  br label %74

73:                                               ; preds = %2
  br label %74

74:                                               ; preds = %73, %72, %42
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %67, %60
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.kprobe* @kprobe_running(...) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i32 @restore_previous_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @reset_current_kprobe(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.kprobe*) #1

declare dso_local %struct.exception_table_entry* @search_exception_tables(i64) #1

declare dso_local i64 @extable_fixup(%struct.exception_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
