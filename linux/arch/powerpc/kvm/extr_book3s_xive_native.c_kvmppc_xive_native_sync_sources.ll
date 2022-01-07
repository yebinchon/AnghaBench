; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_sync_sources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_sync_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive_src_block = type { %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i64, i32 }
%struct.xive_irq_data = type { i32 }

@KVMPPC_XICS_IRQ_PER_ICS = common dso_local global i32 0, align 4
@MASKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive_src_block*)* @kvmppc_xive_native_sync_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_xive_native_sync_sources(%struct.kvmppc_xive_src_block* %0) #0 {
  %2 = alloca %struct.kvmppc_xive_src_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %5 = alloca %struct.xive_irq_data*, align 8
  %6 = alloca i32, align 4
  store %struct.kvmppc_xive_src_block* %0, %struct.kvmppc_xive_src_block** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @KVMPPC_XICS_IRQ_PER_ICS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %2, align 8
  %13 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %12, i32 0, i32 0
  %14 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %14, i64 %16
  store %struct.kvmppc_xive_irq_state* %17, %struct.kvmppc_xive_irq_state** %4, align 8
  %18 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %19 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %37

23:                                               ; preds = %11
  %24 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %25 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MASKED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %32 = call i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state* %31, i32* %6, %struct.xive_irq_data** %5)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @xive_native_sync_source(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @xive_native_sync_queue(i32 %35)
  br label %37

37:                                               ; preds = %30, %29, %22
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %7

40:                                               ; preds = %7
  ret void
}

declare dso_local i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state*, i32*, %struct.xive_irq_data**) #1

declare dso_local i32 @xive_native_sync_source(i32) #1

declare dso_local i32 @xive_native_sync_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
