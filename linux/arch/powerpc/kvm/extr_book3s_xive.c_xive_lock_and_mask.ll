; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_lock_and_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_lock_and_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_src_block = type { i32 }
%struct.kvmppc_xive_irq_state = type { i64, i32, i32, i32, i32, i32 }
%struct.xive_irq_data = type { i32 }

@MASKED = common dso_local global i64 0, align 8
@OPAL_XIVE_IRQ_MASK_VIA_FW = common dso_local global i32 0, align 4
@XIVE_ESB_SET_PQ_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvmppc_xive*, %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*)* @xive_lock_and_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xive_lock_and_mask(%struct.kvmppc_xive* %0, %struct.kvmppc_xive_src_block* %1, %struct.kvmppc_xive_irq_state* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvmppc_xive*, align 8
  %6 = alloca %struct.kvmppc_xive_src_block*, align 8
  %7 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %8 = alloca %struct.xive_irq_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %5, align 8
  store %struct.kvmppc_xive_src_block* %1, %struct.kvmppc_xive_src_block** %6, align 8
  store %struct.kvmppc_xive_irq_state* %2, %struct.kvmppc_xive_irq_state** %7, align 8
  br label %12

12:                                               ; preds = %28, %3
  %13 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %6, align 8
  %14 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %13, i32 0, i32 0
  %15 = call i32 @arch_spin_lock(i32* %14)
  %16 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %17 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* @MASKED, align 8
  %20 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %21 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = call i32 (...) @mb()
  %23 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %24 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %12
  br label %35

28:                                               ; preds = %12
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %31 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %6, align 8
  %33 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %32, i32 0, i32 0
  %34 = call i32 @arch_spin_unlock(i32* %33)
  br label %12

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @MASKED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %4, align 8
  br label %90

41:                                               ; preds = %35
  %42 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %43 = call i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state* %42, i32* %9, %struct.xive_irq_data** %8)
  %44 = load %struct.xive_irq_data*, %struct.xive_irq_data** %8, align 8
  %45 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OPAL_XIVE_IRQ_MASK_VIA_FW, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %5, align 8
  %53 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %54 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kvmppc_xive_vp(%struct.kvmppc_xive* %52, i32 %55)
  %57 = load i64, i64* @MASKED, align 8
  %58 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %59 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @xive_native_configure_irq(i32 %51, i32 %56, i64 %57, i32 %60)
  %62 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %63 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %65 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  br label %88

66:                                               ; preds = %41
  %67 = load %struct.xive_irq_data*, %struct.xive_irq_data** %8, align 8
  %68 = load i32, i32* @XIVE_ESB_SET_PQ_10, align 4
  %69 = call i32 @xive_vm_esb_load(%struct.xive_irq_data* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 2
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %77 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %85 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @xive_native_sync_source(i32 %86)
  br label %88

88:                                               ; preds = %66, %50
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %39
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state*, i32*, %struct.xive_irq_data**) #1

declare dso_local i32 @xive_native_configure_irq(i32, i32, i64, i32) #1

declare dso_local i32 @kvmppc_xive_vp(%struct.kvmppc_xive*, i32) #1

declare dso_local i32 @xive_vm_esb_load(%struct.xive_irq_data*, i32) #1

declare dso_local i32 @xive_native_sync_source(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
