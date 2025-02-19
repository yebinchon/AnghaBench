; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_adjust_lapic_timer_advance.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_adjust_lapic_timer_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.kvm_lapic* }
%struct.kvm_lapic = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LAPIC_TIMER_ADVANCE_ADJUST_MAX = common dso_local global i64 0, align 8
@LAPIC_TIMER_ADVANCE_ADJUST_MIN = common dso_local global i64 0, align 8
@LAPIC_TIMER_ADVANCE_ADJUST_STEP = common dso_local global i32 0, align 4
@LAPIC_TIMER_ADVANCE_NS_MAX = common dso_local global i64 0, align 8
@LAPIC_TIMER_ADVANCE_NS_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @adjust_lapic_timer_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_lapic_timer_advance(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_lapic*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %10, align 8
  store %struct.kvm_lapic* %11, %struct.kvm_lapic** %5, align 8
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @abs(i64 %16)
  %18 = load i64, i64* @LAPIC_TIMER_ADVANCE_ADJUST_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @abs(i64 %21)
  %23 = load i64, i64* @LAPIC_TIMER_ADVANCE_ADJUST_MIN, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  br label %76

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = icmp ult i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 0, %30
  %32 = mul i64 %31, 1000000
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @do_div(i32 %34, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LAPIC_TIMER_ADVANCE_ADJUST_STEP, align 4
  %42 = sdiv i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %62

46:                                               ; preds = %26
  %47 = load i64, i64* %4, align 8
  %48 = mul i64 %47, 1000000
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @do_div(i32 %50, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @LAPIC_TIMER_ADVANCE_ADJUST_STEP, align 4
  %58 = sdiv i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %46, %29
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @LAPIC_TIMER_ADVANCE_NS_MAX, align 8
  %65 = icmp sgt i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @LAPIC_TIMER_ADVANCE_NS_INIT, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %74 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %25
  ret void
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
