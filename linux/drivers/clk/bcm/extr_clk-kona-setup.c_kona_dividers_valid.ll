; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_kona_dividers_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_kona_dividers_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kona_clk = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.peri_clk_data* }
%struct.peri_clk_data = type { %struct.bcm_clk_div, %struct.bcm_clk_div }
%struct.bcm_clk_div = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@bcm_clk_peri = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kona_clk*)* @kona_dividers_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kona_dividers_valid(%struct.kona_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kona_clk*, align 8
  %4 = alloca %struct.peri_clk_data*, align 8
  %5 = alloca %struct.bcm_clk_div*, align 8
  %6 = alloca %struct.bcm_clk_div*, align 8
  %7 = alloca i32, align 4
  store %struct.kona_clk* %0, %struct.kona_clk** %3, align 8
  %8 = load %struct.kona_clk*, %struct.kona_clk** %3, align 8
  %9 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.peri_clk_data*, %struct.peri_clk_data** %10, align 8
  store %struct.peri_clk_data* %11, %struct.peri_clk_data** %4, align 8
  %12 = load %struct.kona_clk*, %struct.kona_clk** %3, align 8
  %13 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bcm_clk_peri, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %20 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %19, i32 0, i32 1
  %21 = call i32 @divider_exists(%struct.bcm_clk_div* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %25 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %24, i32 0, i32 0
  %26 = call i32 @divider_exists(%struct.bcm_clk_div* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %1
  store i32 1, i32* %2, align 4
  br label %61

29:                                               ; preds = %23
  %30 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %31 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %30, i32 0, i32 1
  store %struct.bcm_clk_div* %31, %struct.bcm_clk_div** %5, align 8
  %32 = load %struct.peri_clk_data*, %struct.peri_clk_data** %4, align 8
  %33 = getelementptr inbounds %struct.peri_clk_data, %struct.peri_clk_data* %32, i32 0, i32 0
  store %struct.bcm_clk_div* %33, %struct.bcm_clk_div** %6, align 8
  %34 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %35 = call i64 @divider_is_fixed(%struct.bcm_clk_div* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %6, align 8
  %39 = call i64 @divider_is_fixed(%struct.bcm_clk_div* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %29
  store i32 1, i32* %2, align 4
  br label %61

42:                                               ; preds = %37
  %43 = load i32, i32* @BITS_PER_BYTE, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %5, align 8
  %48 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %6, align 8
  %53 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %51, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %42, %41, %28
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @divider_exists(%struct.bcm_clk_div*) #1

declare dso_local i64 @divider_is_fixed(%struct.bcm_clk_div*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
