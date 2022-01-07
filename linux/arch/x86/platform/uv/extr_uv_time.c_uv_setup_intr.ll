; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_time.c_uv_setup_intr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_time.c_uv_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv_apicid_hibits = common dso_local global i64 0, align 8
@UVH_RTC1_INT_CONFIG = common dso_local global i32 0, align 4
@UVH_RTC1_INT_CONFIG_M_MASK = common dso_local global i64 0, align 8
@UVH_INT_CMPB = common dso_local global i32 0, align 4
@UVH_EVENT_OCCURRED0_ALIAS = common dso_local global i32 0, align 4
@UV1H_EVENT_OCCURRED0_RTC1_MASK = common dso_local global i64 0, align 8
@UVXH_EVENT_OCCURRED2_ALIAS = common dso_local global i32 0, align 4
@UVXH_EVENT_OCCURRED2_RTC_1_MASK = common dso_local global i64 0, align 8
@X86_PLATFORM_IPI_VECTOR = common dso_local global i64 0, align 8
@UVH_RTC1_INT_CONFIG_VECTOR_SHFT = common dso_local global i64 0, align 8
@UVH_RTC1_INT_CONFIG_APIC_ID_SHFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @uv_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_setup_intr(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @cpu_physical_id(i32 %9)
  %11 = load i64, i64* @uv_apicid_hibits, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @uv_cpu_to_pnode(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @UVH_RTC1_INT_CONFIG, align 4
  %17 = load i64, i64* @UVH_RTC1_INT_CONFIG_M_MASK, align 8
  %18 = call i32 @uv_write_global_mmr64(i32 %15, i32 %16, i64 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @UVH_INT_CMPB, align 4
  %21 = call i32 @uv_write_global_mmr64(i32 %19, i32 %20, i64 -1)
  %22 = call i64 (...) @is_uv1_hub()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @UVH_EVENT_OCCURRED0_ALIAS, align 4
  %27 = load i64, i64* @UV1H_EVENT_OCCURRED0_RTC1_MASK, align 8
  %28 = call i32 @uv_write_global_mmr64(i32 %25, i32 %26, i64 %27)
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @UVXH_EVENT_OCCURRED2_ALIAS, align 4
  %32 = load i64, i64* @UVXH_EVENT_OCCURRED2_RTC_1_MASK, align 8
  %33 = call i32 @uv_write_global_mmr64(i32 %30, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i64, i64* @X86_PLATFORM_IPI_VECTOR, align 8
  %36 = load i64, i64* @UVH_RTC1_INT_CONFIG_VECTOR_SHFT, align 8
  %37 = shl i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @UVH_RTC1_INT_CONFIG_APIC_ID_SHFT, align 8
  %40 = shl i64 %38, %39
  %41 = or i64 %37, %40
  store i64 %41, i64* %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @UVH_RTC1_INT_CONFIG, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @uv_write_global_mmr64(i32 %42, i32 %43, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @UVH_INT_CMPB, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @uv_write_global_mmr64(i32 %46, i32 %47, i64 %48)
  %50 = call i64 @uv_read_rtc(i32* null)
  %51 = load i64, i64* %5, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %60

54:                                               ; preds = %34
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @uv_intr_pending(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @cpu_physical_id(i32) #1

declare dso_local i32 @uv_cpu_to_pnode(i32) #1

declare dso_local i32 @uv_write_global_mmr64(i32, i32, i64) #1

declare dso_local i64 @is_uv1_hub(...) #1

declare dso_local i64 @uv_read_rtc(i32*) #1

declare dso_local i32 @uv_intr_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
