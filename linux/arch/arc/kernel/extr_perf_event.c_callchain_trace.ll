; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_callchain_trace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_callchain_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_callchain_trace = type { i32, %struct.perf_callchain_entry_ctx* }
%struct.perf_callchain_entry_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @callchain_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callchain_trace(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arc_callchain_trace*, align 8
  %7 = alloca %struct.perf_callchain_entry_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.arc_callchain_trace*
  store %struct.arc_callchain_trace* %9, %struct.arc_callchain_trace** %6, align 8
  %10 = load %struct.arc_callchain_trace*, %struct.arc_callchain_trace** %6, align 8
  %11 = getelementptr inbounds %struct.arc_callchain_trace, %struct.arc_callchain_trace* %10, i32 0, i32 1
  %12 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %11, align 8
  store %struct.perf_callchain_entry_ctx* %12, %struct.perf_callchain_entry_ctx** %7, align 8
  %13 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %13, i32 %14)
  %16 = load %struct.arc_callchain_trace*, %struct.arc_callchain_trace** %6, align 8
  %17 = getelementptr inbounds %struct.arc_callchain_trace, %struct.arc_callchain_trace* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = icmp slt i32 %18, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
