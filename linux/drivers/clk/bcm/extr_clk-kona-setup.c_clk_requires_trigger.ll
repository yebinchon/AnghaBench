; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_clk_requires_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_clk_requires_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kona_clk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.peri_clk_data* }
%struct.peri_clk_data = type { %struct.bcm_clk_div, %struct.bcm_clk_div, %struct.bcm_clk_sel }
%struct.bcm_clk_div = type { i32 }
%struct.bcm_clk_sel = type { i64 }

@bcm_clk_peri = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kona_clk*)* @clk_requires_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_requires_trigger(%struct.kona_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kona_clk*, align 8
  %4 = alloca %struct.peri_clk_data*, align 8
  %5 = alloca %struct.bcm_clk_sel*, align 8
  %6 = alloca %struct.bcm_clk_div*, align 8
  store %struct.kona_clk* %0, %struct.kona_clk** %3, align 8
  %7 = load %struct.kona_clk*, %struct.kona_clk** %3, align 8
  %8 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.peri_clk_data*, %struct.peri_clk_data** %9, align 8
  store %struct.peri_clk_data* %10, %struct.peri_clk_data** %4, align 8
  %11 = load %struct.kona_clk*, %struct.kona_clk** %3, align 8
  %12 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bcm_clk_peri, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %19 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %18, i32 0, i32 2
  store %struct.bcm_clk_sel* %19, %struct.bcm_clk_sel** %5, align 8
  %20 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %5, align 8
  %21 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %5, align 8
  %26 = call i64 @selector_exists(%struct.bcm_clk_sel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %55

29:                                               ; preds = %24, %17
  %30 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %31 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %30, i32 0, i32 1
  store %struct.bcm_clk_div* %31, %struct.bcm_clk_div** %6, align 8
  %32 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %6, align 8
  %33 = call i64 @divider_exists(%struct.bcm_clk_div* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %55

36:                                               ; preds = %29
  %37 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %6, align 8
  %38 = call i32 @divider_is_fixed(%struct.bcm_clk_div* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %55

41:                                               ; preds = %36
  %42 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %43 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %42, i32 0, i32 0
  store %struct.bcm_clk_div* %43, %struct.bcm_clk_div** %6, align 8
  %44 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %6, align 8
  %45 = call i64 @divider_exists(%struct.bcm_clk_div* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %6, align 8
  %49 = call i32 @divider_is_fixed(%struct.bcm_clk_div* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi i1 [ false, %41 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %40, %35, %28, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @selector_exists(%struct.bcm_clk_sel*) #1

declare dso_local i64 @divider_exists(%struct.bcm_clk_div*) #1

declare dso_local i32 @divider_is_fixed(%struct.bcm_clk_div*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
