; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_clock = type { i32, %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_clock_data = type { i32 }
%struct.bcm2835_cprman = type { i32 }

@LOCK_TIMEOUT_NS = common dso_local global i32 0, align 4
@CM_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: couldn't lock PLL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_clock*)* @bcm2835_clock_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_clock_wait_busy(%struct.bcm2835_clock* %0) #0 {
  %2 = alloca %struct.bcm2835_clock*, align 8
  %3 = alloca %struct.bcm2835_cprman*, align 8
  %4 = alloca %struct.bcm2835_clock_data*, align 8
  %5 = alloca i32, align 4
  store %struct.bcm2835_clock* %0, %struct.bcm2835_clock** %2, align 8
  %6 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %2, align 8
  %7 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %6, i32 0, i32 2
  %8 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %7, align 8
  store %struct.bcm2835_cprman* %8, %struct.bcm2835_cprman** %3, align 8
  %9 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %2, align 8
  %10 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %9, i32 0, i32 1
  %11 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %10, align 8
  store %struct.bcm2835_clock_data* %11, %struct.bcm2835_clock_data** %4, align 8
  %12 = call i32 (...) @ktime_get()
  %13 = load i32, i32* @LOCK_TIMEOUT_NS, align 4
  %14 = call i32 @ktime_add_ns(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %17 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %4, align 8
  %18 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cprman_read(%struct.bcm2835_cprman* %16, i32 %19)
  %21 = load i32, i32* @CM_BUSY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = call i32 (...) @ktime_get()
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @ktime_after(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %31 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %2, align 8
  %34 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %33, i32 0, i32 0
  %35 = call i32 @clk_hw_get_name(i32* %34)
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %39

37:                                               ; preds = %24
  %38 = call i32 (...) @cpu_relax()
  br label %15

39:                                               ; preds = %29, %15
  ret void
}

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
