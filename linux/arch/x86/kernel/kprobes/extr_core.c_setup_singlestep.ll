; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_setup_singlestep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_setup_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pt_regs = type { i64, i32 }
%struct.kprobe_ctlblk = type { i32 }

@KPROBE_REENTER = common dso_local global i32 0, align 4
@KPROBE_HIT_SS = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@BREAKPOINT_INSTRUCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*, i32)* @setup_singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_singlestep(%struct.kprobe* %0, %struct.pt_regs* %1, %struct.kprobe_ctlblk* %2, i32 %3) #0 {
  %5 = alloca %struct.kprobe*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.kprobe_ctlblk*, align 8
  %8 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store %struct.kprobe_ctlblk* %2, %struct.kprobe_ctlblk** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @setup_detour_execution(%struct.kprobe* %9, %struct.pt_regs* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %86

15:                                               ; preds = %4
  %16 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %17 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %23 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 (...) @reset_current_kprobe()
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %33 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %86

38:                                               ; preds = %21, %15
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %43 = call i32 @save_previous_kprobe(%struct.kprobe_ctlblk* %42)
  %44 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %46 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %47 = call i32 @set_current_kprobe(%struct.kprobe* %44, %struct.pt_regs* %45, %struct.kprobe_ctlblk* %46)
  %48 = load i32, i32* @KPROBE_REENTER, align 4
  %49 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %50 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %55

51:                                               ; preds = %38
  %52 = load i32, i32* @KPROBE_HIT_SS, align 4
  %53 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %54 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %41
  %56 = call i32 (...) @clear_btf()
  %57 = load i32, i32* @X86_EFLAGS_TF, align 4
  %58 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @X86_EFLAGS_IF, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %69 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BREAKPOINT_INSTRUCTION, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %75 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %86

79:                                               ; preds = %55
  %80 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %81 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %14, %31, %79, %73
  ret void
}

declare dso_local i64 @setup_detour_execution(%struct.kprobe*, %struct.pt_regs*, i32) #1

declare dso_local i32 @reset_current_kprobe(...) #1

declare dso_local i32 @save_previous_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @set_current_kprobe(%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*) #1

declare dso_local i32 @clear_btf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
