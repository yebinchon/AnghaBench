; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_wakeup_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_wakeup_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv_apicid_hibits = common dso_local global i32 0, align 4
@UVH_IPI_INT_SEND_SHFT = common dso_local global i64 0, align 8
@UVH_IPI_INT_APIC_ID_SHFT = common dso_local global i32 0, align 4
@UVH_IPI_INT_VECTOR_SHFT = common dso_local global i64 0, align 8
@APIC_DM_INIT = common dso_local global i64 0, align 8
@UVH_IPI_INT = common dso_local global i32 0, align 4
@APIC_DM_STARTUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @uv_wakeup_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_wakeup_secondary(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @uv_apicid_to_pnode(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @uv_apicid_hibits, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @UVH_IPI_INT_SEND_SHFT, align 8
  %13 = shl i64 1, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @UVH_IPI_INT_APIC_ID_SHFT, align 4
  %16 = shl i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = or i64 %13, %17
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @UVH_IPI_INT_VECTOR_SHFT, align 8
  %21 = shl i64 %19, %20
  %22 = lshr i64 %21, 12
  %23 = or i64 %18, %22
  %24 = load i64, i64* @APIC_DM_INIT, align 8
  %25 = or i64 %23, %24
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @UVH_IPI_INT, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @uv_write_global_mmr64(i32 %26, i32 %27, i64 %28)
  %30 = load i64, i64* @UVH_IPI_INT_SEND_SHFT, align 8
  %31 = shl i64 1, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @UVH_IPI_INT_APIC_ID_SHFT, align 4
  %34 = shl i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = or i64 %31, %35
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @UVH_IPI_INT_VECTOR_SHFT, align 8
  %39 = shl i64 %37, %38
  %40 = lshr i64 %39, 12
  %41 = or i64 %36, %40
  %42 = load i64, i64* @APIC_DM_STARTUP, align 8
  %43 = or i64 %41, %42
  store i64 %43, i64* %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @UVH_IPI_INT, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @uv_write_global_mmr64(i32 %44, i32 %45, i64 %46)
  ret i32 0
}

declare dso_local i32 @uv_apicid_to_pnode(i32) #1

declare dso_local i32 @uv_write_global_mmr64(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
