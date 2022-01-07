; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_callchain_trace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_callchain_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stackframe = type { i32 }
%struct.perf_callchain_entry_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stackframe*, i8*)* @callchain_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callchain_trace(%struct.stackframe* %0, i8* %1) #0 {
  %3 = alloca %struct.stackframe*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_callchain_entry_ctx*, align 8
  store %struct.stackframe* %0, %struct.stackframe** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.perf_callchain_entry_ctx*
  store %struct.perf_callchain_entry_ctx* %7, %struct.perf_callchain_entry_ctx** %5, align 8
  %8 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %5, align 8
  %9 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %10 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %8, i32 %11)
  ret i32 0
}

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
