; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__filter_clk_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__filter_clk_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_clk_mix = type { %struct.clk_hw }
%struct.clk_hw = type { i32 }
%struct.mmp_clk_mix_clk_table = type { i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_clk_mix*, %struct.mmp_clk_mix_clk_table*, i32)* @_filter_clk_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_filter_clk_table(%struct.mmp_clk_mix* %0, %struct.mmp_clk_mix_clk_table* %1, i32 %2) #0 {
  %4 = alloca %struct.mmp_clk_mix*, align 8
  %5 = alloca %struct.mmp_clk_mix_clk_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmp_clk_mix_clk_table*, align 8
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca i64, align 8
  store %struct.mmp_clk_mix* %0, %struct.mmp_clk_mix** %4, align 8
  store %struct.mmp_clk_mix_clk_table* %1, %struct.mmp_clk_mix_clk_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %13 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %12, i32 0, i32 0
  store %struct.clk_hw* %13, %struct.clk_hw** %10, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %50, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %19, i64 %21
  store %struct.mmp_clk_mix_clk_table* %22, %struct.mmp_clk_mix_clk_table** %8, align 8
  %23 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %24 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %8, align 8
  %25 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %23, i32 %26)
  store %struct.clk_hw* %27, %struct.clk_hw** %9, align 8
  %28 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %29 = call i64 @clk_hw_get_rate(%struct.clk_hw* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %8, align 8
  %32 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = urem i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %8, align 8
  %38 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  br label %49

39:                                               ; preds = %18
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %8, align 8
  %42 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = udiv i64 %40, %43
  %45 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %8, align 8
  %46 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %8, align 8
  %48 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %39, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %14

53:                                               ; preds = %14
  ret void
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
