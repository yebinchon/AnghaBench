; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c__get_table_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c__get_table_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_factor_table = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_factor_table*, i64, i64)* @_get_table_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_table_val(%struct.clk_factor_table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_factor_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_factor_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk_factor_table* %0, %struct.clk_factor_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.clk_factor_table*, %struct.clk_factor_table** %4, align 8
  store %struct.clk_factor_table* %10, %struct.clk_factor_table** %7, align 8
  br label %11

11:                                               ; preds = %35, %3
  %12 = load %struct.clk_factor_table*, %struct.clk_factor_table** %7, align 8
  %13 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.clk_factor_table*, %struct.clk_factor_table** %7, align 8
  %19 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %17, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.clk_factor_table*, %struct.clk_factor_table** %7, align 8
  %24 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @do_div(i64 %22, i64 %25)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load %struct.clk_factor_table*, %struct.clk_factor_table** %7, align 8
  %32 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.clk_factor_table*, %struct.clk_factor_table** %7, align 8
  %37 = getelementptr inbounds %struct.clk_factor_table, %struct.clk_factor_table* %36, i32 1
  store %struct.clk_factor_table* %37, %struct.clk_factor_table** %7, align 8
  br label %11

38:                                               ; preds = %30, %11
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.clk_factor_table*, %struct.clk_factor_table** %4, align 8
  %43 = call i32 @_get_table_maxval(%struct.clk_factor_table* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @_get_table_maxval(%struct.clk_factor_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
