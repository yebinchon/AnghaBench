; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__round_down_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__round_down_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*, i32)* @_round_down_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_round_down_table(%struct.clk_div_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_div_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_div_table*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_div_table* %0, %struct.clk_div_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  %9 = call i32 @_get_table_mindiv(%struct.clk_div_table* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  store %struct.clk_div_table* %10, %struct.clk_div_table** %6, align 8
  br label %11

11:                                               ; preds = %49, %2
  %12 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %13 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %11
  %17 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %18 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %24 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %16
  %27 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %28 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %49

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %37 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %46 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %34
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %51 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %50, i32 1
  store %struct.clk_div_table* %51, %struct.clk_div_table** %6, align 8
  br label %11

52:                                               ; preds = %11
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @_get_table_mindiv(%struct.clk_div_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
