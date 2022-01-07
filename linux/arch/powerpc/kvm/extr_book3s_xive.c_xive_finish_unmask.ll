; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_finish_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_finish_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_src_block = type { i32 }
%struct.kvmppc_xive_irq_state = type { i64, i32, i64, i32, i32, i32 }
%struct.xive_irq_data = type { i32 }

@MASKED = common dso_local global i64 0, align 8
@OPAL_XIVE_IRQ_MASK_VIA_FW = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_LSI = common dso_local global i32 0, align 4
@XIVE_ESB_SET_PQ_11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive*, %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*, i64)* @xive_finish_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_finish_unmask(%struct.kvmppc_xive* %0, %struct.kvmppc_xive_src_block* %1, %struct.kvmppc_xive_irq_state* %2, i64 %3) #0 {
  %5 = alloca %struct.kvmppc_xive*, align 8
  %6 = alloca %struct.kvmppc_xive_src_block*, align 8
  %7 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xive_irq_data*, align 8
  %10 = alloca i32, align 4
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %5, align 8
  store %struct.kvmppc_xive_src_block* %1, %struct.kvmppc_xive_src_block** %6, align 8
  store %struct.kvmppc_xive_irq_state* %2, %struct.kvmppc_xive_irq_state** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %12 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MASKED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %79

17:                                               ; preds = %4
  %18 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %19 = call i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state* %18, i32* %10, %struct.xive_irq_data** %9)
  %20 = load %struct.xive_irq_data*, %struct.xive_irq_data** %9, align 8
  %21 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OPAL_XIVE_IRQ_MASK_VIA_FW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %5, align 8
  %29 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %30 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kvmppc_xive_vp(%struct.kvmppc_xive* %28, i32 %31)
  %33 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %34 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %37 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @xive_native_configure_irq(i32 %27, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %41 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.xive_irq_data*, %struct.xive_irq_data** %9, align 8
  %47 = call i32 @xive_vm_source_eoi(i32 %45, %struct.xive_irq_data* %46)
  br label %48

48:                                               ; preds = %44, %26
  %49 = load %struct.xive_irq_data*, %struct.xive_irq_data** %9, align 8
  %50 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OPAL_XIVE_IRQ_LSI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load %struct.xive_irq_data*, %struct.xive_irq_data** %9, align 8
  %57 = call i32 @xive_irq_trigger(%struct.xive_irq_data* %56)
  br label %58

58:                                               ; preds = %55, %48
  br label %79

59:                                               ; preds = %17
  %60 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %61 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.xive_irq_data*, %struct.xive_irq_data** %9, align 8
  %66 = load i32, i32* @XIVE_ESB_SET_PQ_11, align 4
  %67 = call i32 @xive_vm_esb_load(%struct.xive_irq_data* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %70 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.xive_irq_data*, %struct.xive_irq_data** %9, align 8
  %76 = call i32 @xive_vm_source_eoi(i32 %74, %struct.xive_irq_data* %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = call i32 (...) @mb()
  br label %79

79:                                               ; preds = %77, %58, %16
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %7, align 8
  %82 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  ret void
}

declare dso_local i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state*, i32*, %struct.xive_irq_data**) #1

declare dso_local i32 @xive_native_configure_irq(i32, i32, i32, i32) #1

declare dso_local i32 @kvmppc_xive_vp(%struct.kvmppc_xive*, i32) #1

declare dso_local i32 @xive_vm_source_eoi(i32, %struct.xive_irq_data*) #1

declare dso_local i32 @xive_irq_trigger(%struct.xive_irq_data*) #1

declare dso_local i32 @xive_vm_esb_load(%struct.xive_irq_data*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
