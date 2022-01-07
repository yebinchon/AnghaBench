; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_ccu_clks_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_ccu_clks_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccu_data*)* @ccu_clks_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccu_clks_teardown(%struct.ccu_data* %0) #0 {
  %2 = alloca %struct.ccu_data*, align 8
  %3 = alloca i64, align 8
  store %struct.ccu_data* %0, %struct.ccu_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.ccu_data*, %struct.ccu_data** %2, align 8
  %7 = getelementptr inbounds %struct.ccu_data, %struct.ccu_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.ccu_data*, %struct.ccu_data** %2, align 8
  %12 = getelementptr inbounds %struct.ccu_data, %struct.ccu_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @kona_clk_teardown(i32* %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %4

21:                                               ; preds = %4
  ret void
}

declare dso_local i32 @kona_clk_teardown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
