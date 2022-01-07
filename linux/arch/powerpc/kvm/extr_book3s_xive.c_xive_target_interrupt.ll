; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_target_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_target_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_irq_state = type { i64, i32, i32 }

@MASKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvmppc_xive_irq_state*, i32, i64)* @xive_target_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_target_interrupt(%struct.kvm* %0, %struct.kvmppc_xive_irq_state* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvmppc_xive*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvmppc_xive_irq_state* %1, %struct.kvmppc_xive_irq_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.kvm*, %struct.kvm** %6, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %15, align 8
  store %struct.kvmppc_xive* %16, %struct.kvmppc_xive** %10, align 8
  %17 = load %struct.kvm*, %struct.kvm** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @kvmppc_xive_select_target(%struct.kvm* %17, i32* %8, i64 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %26 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MASKED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.kvm*, %struct.kvm** %6, align 8
  %32 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %33 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %36 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @xive_inc_q_pending(%struct.kvm* %31, i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %30, %24
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %42 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %45 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %47 = call i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state* %46, i32* %11, i32* null)
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @kvmppc_xive_vp(%struct.kvmppc_xive* %49, i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %54 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @xive_native_configure_irq(i32 %48, i32 %51, i64 %52, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %39, %22
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @kvmppc_xive_select_target(%struct.kvm*, i32*, i64) #1

declare dso_local i32 @xive_inc_q_pending(%struct.kvm*, i32, i64) #1

declare dso_local i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state*, i32*, i32*) #1

declare dso_local i32 @xive_native_configure_irq(i32, i32, i64, i32) #1

declare dso_local i32 @kvmppc_xive_vp(%struct.kvmppc_xive*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
