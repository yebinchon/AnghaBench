; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_do_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_do_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@CONFIG_SMP = common dso_local global i32 0, align 4
@nmi_state = common dso_local global i32 0, align 4
@NMI_NOT_RUNNING = common dso_local global i64 0, align 8
@NMI_LATCHED = common dso_local global i32 0, align 4
@NMI_EXECUTING = common dso_local global i32 0, align 4
@nmi_cr2 = common dso_local global i32 0, align 4
@__nmi_count = common dso_local global i32 0, align 4
@ignore_nmis = common dso_local global i32 0, align 4
@update_debug_stack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_nmi(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @CONFIG_SMP, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = call i32 (...) @smp_processor_id()
  %10 = call i64 @cpu_is_offline(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %63

13:                                               ; preds = %8, %2
  %14 = load i32, i32* @nmi_state, align 4
  %15 = call i64 @this_cpu_read(i32 %14)
  %16 = load i64, i64* @NMI_NOT_RUNNING, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @nmi_state, align 4
  %20 = load i32, i32* @NMI_LATCHED, align 4
  %21 = call i32 @this_cpu_write(i32 %19, i32 %20)
  br label %63

22:                                               ; preds = %13
  %23 = load i32, i32* @nmi_state, align 4
  %24 = load i32, i32* @NMI_EXECUTING, align 4
  %25 = call i32 @this_cpu_write(i32 %23, i32 %24)
  %26 = load i32, i32* @nmi_cr2, align 4
  %27 = call i64 (...) @read_cr2()
  %28 = trunc i64 %27 to i32
  %29 = call i32 @this_cpu_write(i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %56, %22
  %31 = call i32 (...) @nmi_enter()
  %32 = load i32, i32* @__nmi_count, align 4
  %33 = call i32 @inc_irq_stat(i32 %32)
  %34 = load i32, i32* @ignore_nmis, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = call i32 @default_do_nmi(%struct.pt_regs* %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = call i32 (...) @nmi_exit()
  %41 = load i32, i32* @nmi_cr2, align 4
  %42 = call i64 @this_cpu_read(i32 %41)
  %43 = call i64 (...) @read_cr2()
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @nmi_cr2, align 4
  %50 = call i64 @this_cpu_read(i32 %49)
  %51 = call i32 @write_cr2(i64 %50)
  br label %52

52:                                               ; preds = %48, %39
  %53 = load i32, i32* @nmi_state, align 4
  %54 = call i64 @this_cpu_dec_return(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %30

57:                                               ; preds = %52
  %58 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %59 = call i64 @user_mode(%struct.pt_regs* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (...) @mds_user_clear_cpu_buffers()
  br label %63

63:                                               ; preds = %12, %18, %61, %57
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @cpu_is_offline(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @this_cpu_read(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i64 @read_cr2(...) #1

declare dso_local i32 @nmi_enter(...) #1

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @default_do_nmi(%struct.pt_regs*) #1

declare dso_local i32 @nmi_exit(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @write_cr2(i64) #1

declare dso_local i64 @this_cpu_dec_return(i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @mds_user_clear_cpu_buffers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
