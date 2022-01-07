; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_pre_save_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_pre_save_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { i32 }
%struct.xive_q = type { i64, i64, i32, i32 }

@XICS_IPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive*, %struct.xive_q*)* @xive_pre_save_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_pre_save_queue(%struct.kvmppc_xive* %0, %struct.xive_q* %1) #0 {
  %3 = alloca %struct.kvmppc_xive*, align 8
  %4 = alloca %struct.xive_q*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %3, align 8
  store %struct.xive_q* %1, %struct.xive_q** %4, align 8
  %8 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %9 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %12 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %30, %2
  %15 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %16 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xive_q*, %struct.xive_q** %4, align 8
  %19 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @__xive_read_eq(i32 %17, i32 %20, i64* %5, i64* %6)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @XICS_IPI, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %3, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @xive_pre_save_set_queued(%struct.kvmppc_xive* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %14, label %33

33:                                               ; preds = %30
  ret void
}

declare dso_local i64 @__xive_read_eq(i32, i32, i64*, i64*) #1

declare dso_local i32 @xive_pre_save_set_queued(%struct.kvmppc_xive*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
