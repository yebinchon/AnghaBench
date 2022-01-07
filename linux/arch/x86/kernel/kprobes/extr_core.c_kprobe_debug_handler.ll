; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_kprobe_debug_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_kprobe_debug_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.kprobe = type { i32 (%struct.kprobe*, %struct.pt_regs*, i32)* }
%struct.kprobe_ctlblk = type { i32, i64 }

@KPROBE_REENTER = common dso_local global i64 0, align 8
@KPROBE_HIT_SSDONE = common dso_local global i64 0, align 8
@X86_EFLAGS_TF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kprobe_debug_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.kprobe*, align 8
  %5 = alloca %struct.kprobe_ctlblk*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = call %struct.kprobe* (...) @kprobe_running()
  store %struct.kprobe* %6, %struct.kprobe** %4, align 8
  %7 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %7, %struct.kprobe_ctlblk** %5, align 8
  %8 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %9 = icmp ne %struct.kprobe* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %15 = call i32 @resume_execution(%struct.kprobe* %12, %struct.pt_regs* %13, %struct.kprobe_ctlblk* %14)
  %16 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %17 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %24 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KPROBE_REENTER, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %11
  %29 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %30 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %29, i32 0, i32 0
  %31 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.kprobe*, %struct.pt_regs*, i32)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i64, i64* @KPROBE_HIT_SSDONE, align 8
  %35 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %36 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %38 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %37, i32 0, i32 0
  %39 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %38, align 8
  %40 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %42 = call i32 %39(%struct.kprobe* %40, %struct.pt_regs* %41, i32 0)
  br label %43

43:                                               ; preds = %33, %28, %11
  %44 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %45 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KPROBE_REENTER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %51 = call i32 @restore_previous_kprobe(%struct.kprobe_ctlblk* %50)
  br label %54

52:                                               ; preds = %43
  %53 = call i32 (...) @reset_current_kprobe()
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @X86_EFLAGS_TF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %63

62:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.kprobe* @kprobe_running(...) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i32 @resume_execution(%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*) #1

declare dso_local i32 @restore_previous_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @reset_current_kprobe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
