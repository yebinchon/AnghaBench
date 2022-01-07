; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_limit_periodic_timer_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_limit_periodic_timer_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@min_timer_period_us = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"kvm: vcpu %i: requested %lld ns lapic timer period limited to %lld ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @limit_periodic_timer_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limit_periodic_timer_frequency(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  %3 = alloca i64, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %4 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %5 = call i64 @apic_lvtt_period(%struct.kvm_lapic* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load i64, i64* @min_timer_period_us, align 8
  %15 = mul nsw i64 %14, 1000
  store i64 %15, i64* %3, align 8
  %16 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %13
  %23 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %31, i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %22, %13
  br label %39

39:                                               ; preds = %38, %7, %1
  ret void
}

declare dso_local i64 @apic_lvtt_period(%struct.kvm_lapic*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
