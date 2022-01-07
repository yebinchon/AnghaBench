; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_oct_ilm.c_cvm_oct_ciu_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_oct_ilm.c_cvm_oct_ciu_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32, i32 }

@reset_stats = common dso_local global i32 0, align 4
@li = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TIMER_NUM = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cvm_oct_ciu_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_ciu_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @reset_stats, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @init_latency_info(%struct.TYPE_3__* @li, i32 0)
  store i32 0, i32* @reset_stats, align 4
  br label %37

11:                                               ; preds = %2
  %12 = call i64 (...) @read_c0_cvmcount()
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 1), align 8
  %16 = add nsw i64 %14, %15
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 6), align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 6), align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 5), align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 5), align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 2), align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 2), align 8
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 3), align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 3), align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36, %9
  %38 = load i32, i32* @TIMER_NUM, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @li, i32 0, i32 4), align 8
  %40 = call i32 @start_timer(i32 %38, i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @init_latency_info(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @read_c0_cvmcount(...) #1

declare dso_local i32 @start_timer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
