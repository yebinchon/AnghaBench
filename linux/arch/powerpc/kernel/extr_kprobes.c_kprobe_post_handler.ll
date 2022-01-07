; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_kprobe_post_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kprobes.c_kprobe_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32 }
%struct.kprobe = type { i64, i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kprobe_ctlblk = type { i64, i32 }

@KPROBE_REENTER = common dso_local global i64 0, align 8
@KPROBE_HIT_SSDONE = common dso_local global i64 0, align 8
@MSR_SINGLESTEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kprobe_post_handler(%struct.pt_regs* %0) #0 {
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
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = call i64 @user_mode(%struct.pt_regs* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %81

15:                                               ; preds = %10
  %16 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %17 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %81

26:                                               ; preds = %15
  %27 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %28 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KPROBE_REENTER, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %34 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %33, i32 0, i32 1
  %35 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.kprobe*, %struct.pt_regs*, i32)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i64, i64* @KPROBE_HIT_SSDONE, align 8
  %39 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %40 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %42 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %41, i32 0, i32 1
  %43 = load i32 (%struct.kprobe*, %struct.pt_regs*, i32)*, i32 (%struct.kprobe*, %struct.pt_regs*, i32)** %42, align 8
  %44 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %46 = call i32 %43(%struct.kprobe* %44, %struct.pt_regs* %45, i32 0)
  br label %47

47:                                               ; preds = %37, %32, %26
  %48 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %49 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %55 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %62 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @KPROBE_REENTER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %47
  %67 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %5, align 8
  %68 = call i32 @restore_previous_kprobe(%struct.kprobe_ctlblk* %67)
  br label %71

69:                                               ; preds = %47
  %70 = call i32 (...) @reset_current_kprobe()
  br label %71

71:                                               ; preds = %69, %66
  %72 = call i32 (...) @preempt_enable_no_resched()
  %73 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MSR_SINGLESTEP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %81

80:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %79, %25, %14
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.kprobe* @kprobe_running(...) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @restore_previous_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @reset_current_kprobe(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
