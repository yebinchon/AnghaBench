; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_probe_32.c_default_init_apic_ldr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_probe_32.c_default_init_apic_ldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_DFR = common dso_local global i32 0, align 4
@APIC_DFR_VALUE = common dso_local global i64 0, align 8
@APIC_LDR = common dso_local global i32 0, align 4
@APIC_LDR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @default_init_apic_ldr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_init_apic_ldr() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @APIC_DFR, align 4
  %3 = load i64, i64* @APIC_DFR_VALUE, align 8
  %4 = call i32 @apic_write(i32 %2, i64 %3)
  %5 = load i32, i32* @APIC_LDR, align 4
  %6 = call i64 @apic_read(i32 %5)
  %7 = load i64, i64* @APIC_LDR_MASK, align 8
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  store i64 %9, i64* %1, align 8
  %10 = call i64 (...) @smp_processor_id()
  %11 = shl i64 1, %10
  %12 = call i64 @SET_APIC_LOGICAL_ID(i64 %11)
  %13 = load i64, i64* %1, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = load i32, i32* @APIC_LDR, align 4
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @apic_write(i32 %15, i64 %16)
  ret void
}

declare dso_local i32 @apic_write(i32, i64) #1

declare dso_local i64 @apic_read(i32) #1

declare dso_local i64 @SET_APIC_LOGICAL_ID(i64) #1

declare dso_local i64 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
