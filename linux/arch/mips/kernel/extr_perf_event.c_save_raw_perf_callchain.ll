; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event.c_save_raw_perf_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event.c_save_raw_perf_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_callchain_entry_ctx = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_callchain_entry_ctx*, i64)* @save_raw_perf_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_raw_perf_callchain(%struct.perf_callchain_entry_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to i64*
  store i64* %8, i64** %5, align 8
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i64*, i64** %5, align 8
  %11 = call i32 @kstack_end(i64* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %16, i64** %5, align 8
  %17 = load i64, i64* %15, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @__kernel_text_address(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %22, i64 %23)
  %25 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.perf_callchain_entry_ctx, %struct.perf_callchain_entry_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.perf_callchain_entry_ctx, %struct.perf_callchain_entry_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %35

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %14
  br label %9

35:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @kstack_end(i64*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
