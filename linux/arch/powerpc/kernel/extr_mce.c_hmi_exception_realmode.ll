; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_hmi_exception_realmode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_hmi_exception_realmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.pt_regs*)* }
%struct.pt_regs = type { i32 }

@irq_stat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ppc_md = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hmi_exception_realmode(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @irq_stat, i32 0, i32 0), align 4
  %6 = call i32 @__this_cpu_inc(i32 %5)
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = call i32 @hmi_handle_debugtrig(%struct.pt_regs* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %2, align 8
  br label %24

14:                                               ; preds = %1
  %15 = call i32 (...) @wait_for_subcore_guest_exit()
  %16 = load i32 (%struct.pt_regs*)*, i32 (%struct.pt_regs*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ppc_md, i32 0, i32 0), align 8
  %17 = icmp ne i32 (%struct.pt_regs*)* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32 (%struct.pt_regs*)*, i32 (%struct.pt_regs*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ppc_md, i32 0, i32 0), align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = call i32 %19(%struct.pt_regs* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = call i32 (...) @wait_for_tb_resync()
  store i64 1, i64* %2, align 8
  br label %24

24:                                               ; preds = %22, %11
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @hmi_handle_debugtrig(%struct.pt_regs*) #1

declare dso_local i32 @wait_for_subcore_guest_exit(...) #1

declare dso_local i32 @wait_for_tb_resync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
