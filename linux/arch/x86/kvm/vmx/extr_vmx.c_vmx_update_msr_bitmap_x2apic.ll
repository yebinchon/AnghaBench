; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_update_msr_bitmap_x2apic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_update_msr_bitmap_x2apic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@MSR_BITMAP_MODE_X2APIC_APICV = common dso_local global i32 0, align 4
@MSR_BITMAP_MODE_X2APIC = common dso_local global i32 0, align 4
@APIC_TASKPRI = common dso_local global i32 0, align 4
@MSR_TYPE_RW = common dso_local global i32 0, align 4
@APIC_TMCCT = common dso_local global i32 0, align 4
@MSR_TYPE_R = common dso_local global i32 0, align 4
@APIC_EOI = common dso_local global i32 0, align 4
@MSR_TYPE_W = common dso_local global i32 0, align 4
@APIC_SELF_IPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @vmx_update_msr_bitmap_x2apic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_update_msr_bitmap_x2apic(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2048, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 2303
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BITS_PER_LONG, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MSR_BITMAP_MODE_X2APIC_APICV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 -1
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 %20, i64* %24, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %27, 256
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  store i64 -1, i64* %29, align 8
  br label %30

30:                                               ; preds = %10
  %31 = load i32, i32* @BITS_PER_LONG, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MSR_BITMAP_MODE_X2APIC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i64*, i64** %3, align 8
  %41 = load i32, i32* @APIC_TASKPRI, align 4
  %42 = call i32 @X2APIC_MSR(i32 %41)
  %43 = load i32, i32* @MSR_TYPE_RW, align 4
  %44 = call i32 @vmx_disable_intercept_for_msr(i64* %40, i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MSR_BITMAP_MODE_X2APIC_APICV, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %39
  %50 = load i64*, i64** %3, align 8
  %51 = load i32, i32* @APIC_TMCCT, align 4
  %52 = call i32 @X2APIC_MSR(i32 %51)
  %53 = load i32, i32* @MSR_TYPE_R, align 4
  %54 = call i32 @vmx_enable_intercept_for_msr(i64* %50, i32 %52, i32 %53)
  %55 = load i64*, i64** %3, align 8
  %56 = load i32, i32* @APIC_EOI, align 4
  %57 = call i32 @X2APIC_MSR(i32 %56)
  %58 = load i32, i32* @MSR_TYPE_W, align 4
  %59 = call i32 @vmx_disable_intercept_for_msr(i64* %55, i32 %57, i32 %58)
  %60 = load i64*, i64** %3, align 8
  %61 = load i32, i32* @APIC_SELF_IPI, align 4
  %62 = call i32 @X2APIC_MSR(i32 %61)
  %63 = load i32, i32* @MSR_TYPE_W, align 4
  %64 = call i32 @vmx_disable_intercept_for_msr(i64* %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %49, %39
  br label %66

66:                                               ; preds = %65, %34
  ret void
}

declare dso_local i32 @vmx_disable_intercept_for_msr(i64*, i32, i32) #1

declare dso_local i32 @X2APIC_MSR(i32) #1

declare dso_local i32 @vmx_enable_intercept_for_msr(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
