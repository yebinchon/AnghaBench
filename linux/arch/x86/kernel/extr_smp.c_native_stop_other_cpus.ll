; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_smp.c_native_stop_other_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_smp.c_native_stop_other_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reboot_force = common dso_local global i64 0, align 8
@stopping_cpu = common dso_local global i32 0, align 4
@REBOOT_VECTOR = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@smp_no_nmi_ipi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Shutting down cpus with NMI\0A\00", align 1
@NMI_VECTOR = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@cpu_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @native_stop_other_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_stop_other_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @reboot_force, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %76

8:                                                ; preds = %1
  %9 = call i32 (...) @num_online_cpus()
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = call i32 (...) @safe_smp_processor_id()
  %13 = call i32 @atomic_cmpxchg(i32* @stopping_cpu, i32 -1, i32 %12)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %76

16:                                               ; preds = %11
  %17 = call i32 (...) @wmb()
  %18 = load i32, i32* @REBOOT_VECTOR, align 4
  %19 = call i32 @apic_send_IPI_allbutself(i32 %18)
  %20 = load i64, i64* @USEC_PER_SEC, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %30, %16
  %22 = call i32 (...) @num_online_cpus()
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %4, align 8
  %27 = icmp ne i64 %25, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = call i32 @udelay(i32 1)
  br label %21

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %8
  %34 = call i32 (...) @num_online_cpus()
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load i32, i32* @smp_no_nmi_ipi, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = call i32 (...) @register_stop_handler()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = call i32 (...) @wmb()
  %44 = call i32 @pr_emerg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @NMI_VECTOR, align 4
  %46 = call i32 @apic_send_IPI_allbutself(i32 %45)
  br label %47

47:                                               ; preds = %42, %39, %36
  %48 = load i32, i32* @USEC_PER_MSEC, align 4
  %49 = mul nsw i32 %48, 10
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %65, %47
  %52 = call i32 (...) @num_online_cpus()
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %4, align 8
  %60 = icmp ne i64 %58, 0
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ true, %54 ], [ %60, %57 ]
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi i1 [ false, %51 ], [ %62, %61 ]
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = call i32 @udelay(i32 1)
  br label %51

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @local_irq_save(i64 %69)
  %71 = call i32 (...) @disable_local_APIC()
  %72 = call i32 @this_cpu_ptr(i32* @cpu_info)
  %73 = call i32 @mcheck_cpu_clear(i32 %72)
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @local_irq_restore(i64 %74)
  br label %76

76:                                               ; preds = %68, %15, %7
  ret void
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @safe_smp_processor_id(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @apic_send_IPI_allbutself(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @register_stop_handler(...) #1

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @disable_local_APIC(...) #1

declare dso_local i32 @mcheck_cpu_clear(i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
