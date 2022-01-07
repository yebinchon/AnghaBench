; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_int_off.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_int_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }
%struct.ics_irq_state = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MASKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xics_int_off(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_xics*, align 8
  %7 = alloca %struct.kvmppc_ics*, align 8
  %8 = alloca %struct.ics_irq_state*, align 8
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %12, align 8
  store %struct.kvmppc_xics* %13, %struct.kvmppc_xics** %6, align 8
  %14 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %15 = icmp ne %struct.kvmppc_xics* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %20, i32 %21, i64* %9)
  store %struct.kvmppc_ics* %22, %struct.kvmppc_ics** %7, align 8
  %23 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %24 = icmp ne %struct.kvmppc_ics* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %19
  %29 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %30 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %29, i32 0, i32 0
  %31 = load %struct.ics_irq_state*, %struct.ics_irq_state** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %31, i64 %32
  store %struct.ics_irq_state* %33, %struct.ics_irq_state** %8, align 8
  %34 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %35 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %36 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %37 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %38 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MASKED, align 4
  %41 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %42 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_xive(%struct.kvmppc_xics* %34, %struct.kvmppc_ics* %35, %struct.ics_irq_state* %36, i32 %39, i32 %40, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %28, %25, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i32, i64*) #1

declare dso_local i32 @write_xive(%struct.kvmppc_xics*, %struct.kvmppc_ics*, %struct.ics_irq_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
