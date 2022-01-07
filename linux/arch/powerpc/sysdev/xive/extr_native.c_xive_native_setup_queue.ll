; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_setup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_setup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { %struct.xive_q* }
%struct.xive_q = type { i32 }

@xive_queue_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xive_cpu*, i64)* @xive_native_setup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_native_setup_queue(i32 %0, %struct.xive_cpu* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xive_cpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xive_q*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.xive_cpu* %1, %struct.xive_cpu** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.xive_cpu*, %struct.xive_cpu** %6, align 8
  %11 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %10, i32 0, i32 0
  %12 = load %struct.xive_q*, %struct.xive_q** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %12, i64 %13
  store %struct.xive_q* %14, %struct.xive_q** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @xive_queue_shift, align 4
  %17 = call i32* @xive_queue_page_alloc(i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @get_hard_smp_processor_id(i32 %25)
  %27 = load %struct.xive_q*, %struct.xive_q** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @xive_queue_shift, align 4
  %31 = call i32 @xive_native_configure_queue(i32 %26, %struct.xive_q* %27, i64 %28, i32* %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32* @xive_queue_page_alloc(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @xive_native_configure_queue(i32, %struct.xive_q*, i64, i32*, i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
