; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_ipi.c___default_send_IPI_dest_field.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_ipi.c___default_send_IPI_dest_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NMI_VECTOR = common dso_local global i32 0, align 4
@APIC_ICR2 = common dso_local global i32 0, align 4
@APIC_ICR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__default_send_IPI_dest_field(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NMI_VECTOR, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 (...) @safe_apic_wait_icr_idle()
  br label %18

16:                                               ; preds = %3
  %17 = call i32 (...) @__xapic_wait_icr_idle()
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @__prepare_ICR2(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @APIC_ICR2, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @native_apic_mem_write(i32 %21, i64 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @__prepare_ICR(i32 0, i32 %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* @APIC_ICR, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @native_apic_mem_write(i32 %27, i64 %28)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @safe_apic_wait_icr_idle(...) #1

declare dso_local i32 @__xapic_wait_icr_idle(...) #1

declare dso_local i64 @__prepare_ICR2(i32) #1

declare dso_local i32 @native_apic_mem_write(i32, i64) #1

declare dso_local i64 @__prepare_ICR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
