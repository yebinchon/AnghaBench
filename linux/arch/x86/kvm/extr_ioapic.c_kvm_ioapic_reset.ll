; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@IOAPIC_DEFAULT_BASE_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_ioapic*)* @kvm_ioapic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_ioapic_reset(%struct.kvm_ioapic* %0) #0 {
  %2 = alloca %struct.kvm_ioapic*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %2, align 8
  %4 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %4, i32 0, i32 7
  %6 = call i32 @cancel_delayed_work_sync(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %12, i32 0, i32 6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

23:                                               ; preds = %7
  %24 = load i32, i32* @IOAPIC_DEFAULT_BASE_ADDRESS, align 4
  %25 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %26 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %34 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memset(i32 %37, i32 0, i32 4)
  %39 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %40 = call i32 @rtc_irq_eoi_tracking_reset(%struct.kvm_ioapic* %39)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rtc_irq_eoi_tracking_reset(%struct.kvm_ioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
