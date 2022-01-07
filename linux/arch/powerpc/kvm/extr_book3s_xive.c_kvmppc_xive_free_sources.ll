; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_free_sources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_free_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive_src_block = type { %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i32, i32*, i64, i64, i32 }

@KVMPPC_XICS_IRQ_PER_ICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_xive_free_sources(%struct.kvmppc_xive_src_block* %0) #0 {
  %2 = alloca %struct.kvmppc_xive_src_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvmppc_xive_irq_state*, align 8
  store %struct.kvmppc_xive_src_block* %0, %struct.kvmppc_xive_src_block** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @KVMPPC_XICS_IRQ_PER_ICS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %5
  %10 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %2, align 8
  %11 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %10, i32 0, i32 0
  %12 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %12, i64 %14
  store %struct.kvmppc_xive_irq_state* %15, %struct.kvmppc_xive_irq_state** %4, align 8
  %16 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %17 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %50

21:                                               ; preds = %9
  %22 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %23 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %26 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %25, i32 0, i32 4
  %27 = call i32 @kvmppc_xive_cleanup_irq(i64 %24, i32* %26)
  %28 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %29 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %28, i32 0, i32 4
  %30 = call i32 @xive_cleanup_irq_data(i32* %29)
  %31 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @xive_native_free_irq(i64 %33)
  %35 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %36 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %21
  %40 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %41 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %44 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kvmppc_xive_cleanup_irq(i64 %42, i32* %45)
  br label %47

47:                                               ; preds = %39, %21
  %48 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %4, align 8
  %49 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %20
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %5

53:                                               ; preds = %5
  ret void
}

declare dso_local i32 @kvmppc_xive_cleanup_irq(i64, i32*) #1

declare dso_local i32 @xive_cleanup_irq_data(i32*) #1

declare dso_local i32 @xive_native_free_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
