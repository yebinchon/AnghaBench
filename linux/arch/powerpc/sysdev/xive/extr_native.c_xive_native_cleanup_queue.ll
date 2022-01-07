; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_cleanup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_cleanup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { %struct.xive_q* }
%struct.xive_q = type { i32* }

@xive_queue_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.xive_cpu*, i64)* @xive_native_cleanup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_native_cleanup_queue(i32 %0, %struct.xive_cpu* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xive_cpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xive_q*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.xive_cpu* %1, %struct.xive_cpu** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.xive_cpu*, %struct.xive_cpu** %5, align 8
  %10 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %9, i32 0, i32 0
  %11 = load %struct.xive_q*, %struct.xive_q** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %11, i64 %12
  store %struct.xive_q* %13, %struct.xive_q** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @get_hard_smp_processor_id(i32 %14)
  %16 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @__xive_native_disable_queue(i32 %15, %struct.xive_q* %16, i64 %17)
  %19 = load i32, i32* @xive_queue_shift, align 4
  %20 = call i32 @xive_alloc_order(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %22 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @free_pages(i64 %24, i32 %25)
  %27 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %28 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @__xive_native_disable_queue(i32, %struct.xive_q*, i64) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @xive_alloc_order(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
