; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_get_tmcct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_get_tmcct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@APIC_TMICT = common dso_local global i32 0, align 4
@APIC_BUS_CYCLE_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @apic_get_tmcct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apic_get_tmcct(%struct.kvm_lapic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %9 = icmp ne %struct.kvm_lapic* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %13 = load i32, i32* @APIC_TMICT, align 4
  %14 = call i64 @kvm_lapic_get_reg(%struct.kvm_lapic* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %51

23:                                               ; preds = %16
  %24 = call i64 (...) @ktime_get()
  store i64 %24, i64* %5, align 8
  %25 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ktime_sub(i32 %28, i64 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @ktime_to_ns(i64 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @ktime_to_ns(i64 %36)
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mod_64(i64 %37, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @APIC_BUS_CYCLE_NS, align 4
  %45 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = call i32 @div64_u64(i32 %43, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %35, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i64 @ktime_get(...) #1

declare dso_local i64 @ktime_sub(i32, i64) #1

declare dso_local i64 @ktime_to_ns(i64) #1

declare dso_local i32 @mod_64(i64, i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
