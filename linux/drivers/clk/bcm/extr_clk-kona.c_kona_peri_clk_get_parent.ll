; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_kona_peri_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_kona_peri_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.kona_clk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.peri_clk_data* }
%struct.peri_clk_data = type { i32 }

@BAD_CLK_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*)* @kona_peri_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kona_peri_clk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.kona_clk*, align 8
  %4 = alloca %struct.peri_clk_data*, align 8
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.kona_clk* @to_kona_clk(%struct.clk_hw* %6)
  store %struct.kona_clk* %7, %struct.kona_clk** %3, align 8
  %8 = load %struct.kona_clk*, %struct.kona_clk** %3, align 8
  %9 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.peri_clk_data*, %struct.peri_clk_data** %10, align 8
  store %struct.peri_clk_data* %11, %struct.peri_clk_data** %4, align 8
  %12 = load %struct.kona_clk*, %struct.kona_clk** %3, align 8
  %13 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %16 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %15, i32 0, i32 0
  %17 = call i64 @selector_read_index(i32 %14, i32* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @BAD_CLK_INDEX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i64 [ 0, %21 ], [ %23, %22 ]
  ret i64 %25
}

declare dso_local %struct.kona_clk* @to_kona_clk(%struct.clk_hw*) #1

declare dso_local i64 @selector_read_index(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
