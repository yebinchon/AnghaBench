; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic_numachip.c_numachip_send_IPI_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic_numachip.c_numachip_send_IPI_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x86_cpu_to_apicid = common dso_local global i32 0, align 4
@NUMACHIP_LAPIC_BITS = common dso_local global i32 0, align 4
@APIC_DEST_PHYSICAL = common dso_local global i32 0, align 4
@NMI_VECTOR = common dso_local global i32 0, align 4
@APIC_DM_NMI = common dso_local global i32 0, align 4
@APIC_DM_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @numachip_send_IPI_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @numachip_send_IPI_one(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @x86_cpu_to_apicid, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @per_cpu(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @preempt_disable()
  %13 = load i32, i32* @x86_cpu_to_apicid, align 4
  %14 = call i32 @__this_cpu_read(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = xor i32 %15, %16
  %18 = load i32, i32* @NUMACHIP_LAPIC_BITS, align 4
  %19 = ashr i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @APIC_DEST_PHYSICAL, align 4
  %27 = call i32 @__default_send_IPI_dest_field(i32 %24, i32 %25, i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @local_irq_restore(i64 %28)
  %30 = call i32 (...) @preempt_enable()
  br label %47

31:                                               ; preds = %2
  %32 = call i32 (...) @preempt_enable()
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @NMI_VECTOR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @APIC_DM_NMI, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @APIC_DM_FIXED, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @numachip_apic_icr_write(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %40, %21
  ret void
}

declare dso_local i32 @per_cpu(i32, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__default_send_IPI_dest_field(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @numachip_apic_icr_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
