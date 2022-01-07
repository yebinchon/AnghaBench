; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__round_up_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__round_up_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*, i32)* @_round_up_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_round_up_table(%struct.clk_div_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_div_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_div_table*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_div_table* %0, %struct.clk_div_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @INT_MAX, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  store %struct.clk_div_table* %9, %struct.clk_div_table** %6, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %12 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %17 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %23 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %15
  %26 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %27 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %48

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %35 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %45 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %33
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %50 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %49, i32 1
  store %struct.clk_div_table* %50, %struct.clk_div_table** %6, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
