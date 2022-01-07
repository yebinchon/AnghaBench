; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_callchain.c_perf_callchain_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_callchain.c_perf_callchain_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }
%struct.perf_callchain_entry_ctx = type { i64, i64 }
%struct.pt_regs = type { i64, i32, i32 }

@perf_guest_cbs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_user(%struct.perf_callchain_entry_ctx* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (...)*, i64 (...)** %10, align 8
  %12 = call i64 (...) %11()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %51

15:                                               ; preds = %8, %2
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %19, i32 %22)
  %24 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @user_backtrace(%struct.perf_callchain_entry_ctx* %24, i64 %25, i32 %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %47, %15
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, 3
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.perf_callchain_entry_ctx, %struct.perf_callchain_entry_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.perf_callchain_entry_ctx, %struct.perf_callchain_entry_ctx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br label %45

45:                                               ; preds = %37, %33, %30
  %46 = phi i1 [ false, %33 ], [ false, %30 ], [ %44, %37 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @user_backtrace(%struct.perf_callchain_entry_ctx* %48, i64 %49, i32 0)
  store i64 %50, i64* %5, align 8
  br label %30

51:                                               ; preds = %14, %45
  ret void
}

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i32) #1

declare dso_local i64 @user_backtrace(%struct.perf_callchain_entry_ctx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
