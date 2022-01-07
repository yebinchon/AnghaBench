; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_advance_periodic_target_expiration.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_advance_periodic_target_expiration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @advance_periodic_target_expiration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance_periodic_target_expiration(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %6 = call i32 (...) @ktime_get()
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @rdtsc()
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ktime_add_ns(i32 %11, i32 %15)
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %21 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ktime_sub(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @kvm_read_l1_tsc(i32 %28, i32 %29)
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @nsec_to_cycles(i32 %33, i32 %34)
  %36 = add nsw i64 %30, %35
  %37 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %38 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @kvm_read_l1_tsc(i32, i32) #1

declare dso_local i64 @nsec_to_cycles(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
