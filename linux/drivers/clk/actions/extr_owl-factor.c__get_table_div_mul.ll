; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c__get_table_div_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c__get_table_div_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_factor_table = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_factor_table*, i32, i32*, i32*)* @_get_table_div_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_table_div_mul(%struct.clk_factor_table* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_factor_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.clk_factor_table*, align 8
  store %struct.clk_factor_table* %0, %struct.clk_factor_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.clk_factor_table*, %struct.clk_factor_table** %6, align 8
  store %struct.clk_factor_table* %11, %struct.clk_factor_table** %10, align 8
  br label %12

12:                                               ; preds = %33, %4
  %13 = load %struct.clk_factor_table*, %struct.clk_factor_table** %10, align 8
  %14 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.clk_factor_table*, %struct.clk_factor_table** %10, align 8
  %19 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.clk_factor_table*, %struct.clk_factor_table** %10, align 8
  %25 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.clk_factor_table*, %struct.clk_factor_table** %10, align 8
  %29 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %5, align 4
  br label %37

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.clk_factor_table*, %struct.clk_factor_table** %10, align 8
  %35 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %34, i32 1
  store %struct.clk_factor_table* %35, %struct.clk_factor_table** %10, align 8
  br label %12

36:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
