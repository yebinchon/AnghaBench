; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_get_xive.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_get_xive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_src_block = type { i32, %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xive_get_xive(%struct.kvm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kvmppc_xive*, align 8
  %11 = alloca %struct.kvmppc_xive_src_block*, align 8
  %12 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %13 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.kvm*, %struct.kvm** %6, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %16, align 8
  store %struct.kvmppc_xive* %17, %struct.kvmppc_xive** %10, align 8
  %18 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %10, align 8
  %19 = icmp ne %struct.kvmppc_xive* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive* %24, i32 %25, i64* %13)
  store %struct.kvmppc_xive_src_block* %26, %struct.kvmppc_xive_src_block** %11, align 8
  %27 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %11, align 8
  %28 = icmp ne %struct.kvmppc_xive_src_block* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %52

32:                                               ; preds = %23
  %33 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %11, align 8
  %34 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %33, i32 0, i32 1
  %35 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %35, i64 %36
  store %struct.kvmppc_xive_irq_state* %37, %struct.kvmppc_xive_irq_state** %12, align 8
  %38 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %11, align 8
  %39 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %38, i32 0, i32 0
  %40 = call i32 @arch_spin_lock(i32* %39)
  %41 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %12, align 8
  %42 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %12, align 8
  %46 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %11, align 8
  %50 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %49, i32 0, i32 0
  %51 = call i32 @arch_spin_unlock(i32* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %32, %29, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive*, i32, i64*) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
