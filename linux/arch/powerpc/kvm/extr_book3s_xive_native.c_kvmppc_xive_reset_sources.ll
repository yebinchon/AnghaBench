; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_reset_sources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_reset_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive_src_block = type { %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i64, i64, i32*, i64, i32, i64, i64, i32 }

@KVMPPC_XICS_IRQ_PER_ICS = common dso_local global i32 0, align 4
@MASKED = common dso_local global i64 0, align 8
@XIVE_ESB_SET_PQ_01 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive_src_block*)* @kvmppc_xive_reset_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_xive_reset_sources(%struct.kvmppc_xive_src_block* %0) #0 {
  %2 = alloca %struct.kvmppc_xive_src_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvmppc_xive_irq_state*, align 8
  store %struct.kvmppc_xive_src_block* %0, %struct.kvmppc_xive_src_block** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @KVMPPC_XICS_IRQ_PER_ICS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %2, align 8
  %11 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %10, i32 0, i32 0
  %12 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %12, i64 %14
  store %struct.kvmppc_xive_irq_state* %15, %struct.kvmppc_xive_irq_state** %4, align 8
  %16 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %17 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %61

21:                                               ; preds = %9
  %22 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %23 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MASKED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %61

28:                                               ; preds = %21
  %29 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %30 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* @MASKED, align 8
  %34 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %35 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %37 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %36, i32 0, i32 4
  %38 = load i32, i32* @XIVE_ESB_SET_PQ_01, align 4
  %39 = call i32 @xive_vm_esb_load(i32* %37, i32 %38)
  %40 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %41 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MASKED, align 8
  %44 = call i32 @xive_native_configure_irq(i64 %42, i32 0, i64 %43, i32 0)
  %45 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %46 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %28
  %50 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %51 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @XIVE_ESB_SET_PQ_01, align 4
  %54 = call i32 @xive_vm_esb_load(i32* %52, i32 %53)
  %55 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %56 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MASKED, align 8
  %59 = call i32 @xive_native_configure_irq(i64 %57, i32 0, i64 %58, i32 0)
  br label %60

60:                                               ; preds = %49, %28
  br label %61

61:                                               ; preds = %60, %27, %20
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %5

64:                                               ; preds = %5
  ret void
}

declare dso_local i32 @xive_vm_esb_load(i32*, i32) #1

declare dso_local i32 @xive_native_configure_irq(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
