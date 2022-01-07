; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lasat/extr_ds1603.c_rtc_write_databit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lasat/extr_ds1603.c_rtc_write_databit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@ds1603 = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rtc_write_databit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_write_databit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @rtc_reg_read()
  store i64 %4, i64* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ds1603, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ds1603, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %3, align 8
  br label %30

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ds1603, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %3, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @rtc_reg_write(i64 %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ds1603, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 50, %35
  %37 = call i32 @lasat_ndelay(i64 %36)
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @rtc_cycle_clock(i64 %38)
  ret void
}

declare dso_local i64 @rtc_reg_read(...) #1

declare dso_local i32 @rtc_reg_write(i64) #1

declare dso_local i32 @lasat_ndelay(i64) #1

declare dso_local i32 @rtc_cycle_clock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
