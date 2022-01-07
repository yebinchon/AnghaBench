; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_kprobe_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_kprobe_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32 }
%struct.kprobe = type { i64 (%struct.kprobe*, %struct.pt_regs*, i32)*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kprobe_ctlblk = type { i64, i32 }

@KPROBE_HIT_SS = common dso_local global i64 0, align 8
@KPROBE_REENTER = common dso_local global i64 0, align 8
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@KPROBE_HIT_ACTIVE = common dso_local global i64 0, align 8
@KPROBE_HIT_SSDONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kprobe_fault_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kprobe*, align 8
  %7 = alloca %struct.kprobe_ctlblk*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.kprobe* (...) @kprobe_running()
  store %struct.kprobe* %8, %struct.kprobe** %6, align 8
  %9 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %9, %struct.kprobe_ctlblk** %7, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %14 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %2
  %22 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %23 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KPROBE_HIT_SS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %29 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KPROBE_REENTER, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %38 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @X86_EFLAGS_TF, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %49 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %56 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KPROBE_REENTER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %33
  %61 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %62 = call i32 @restore_previous_kprobe(%struct.kprobe_ctlblk* %61)
  br label %65

63:                                               ; preds = %33
  %64 = call i32 (...) @reset_current_kprobe()
  br label %65

65:                                               ; preds = %63, %60
  br label %97

66:                                               ; preds = %2
  %67 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %68 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @KPROBE_HIT_ACTIVE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %74 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @KPROBE_HIT_SSDONE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72, %66
  %79 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %80 = call i32 @kprobes_inc_nmissed_count(%struct.kprobe* %79)
  %81 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %82 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %81, i32 0, i32 0
  %83 = load i64 (%struct.kprobe*, %struct.pt_regs*, i32)*, i64 (%struct.kprobe*, %struct.pt_regs*, i32)** %82, align 8
  %84 = icmp ne i64 (%struct.kprobe*, %struct.pt_regs*, i32)* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %87 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %86, i32 0, i32 0
  %88 = load i64 (%struct.kprobe*, %struct.pt_regs*, i32)*, i64 (%struct.kprobe*, %struct.pt_regs*, i32)** %87, align 8
  %89 = load %struct.kprobe*, %struct.kprobe** %6, align 8
  %90 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i64 %88(%struct.kprobe* %89, %struct.pt_regs* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %98

95:                                               ; preds = %85, %78
  br label %96

96:                                               ; preds = %95, %72
  br label %97

97:                                               ; preds = %96, %65
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.kprobe* @kprobe_running(...) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @restore_previous_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @reset_current_kprobe(...) #1

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
