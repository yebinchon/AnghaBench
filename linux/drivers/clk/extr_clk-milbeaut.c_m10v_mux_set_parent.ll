; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-milbeaut.c_m10v_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-milbeaut.c_m10v_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_mux = type { i32, i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @m10v_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m10v_mux_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_mux* @to_clk_mux(%struct.clk_hw* %10)
  store %struct.clk_mux* %11, %struct.clk_mux** %5, align 8
  %12 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %13 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %16 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @clk_mux_index_to_val(i32 %14, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %20 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %21 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @fls(i32 %22)
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @BIT(i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %27 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %32 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_lock_irqsave(i64 %33, i64 %34)
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %38 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @__acquire(i64 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %43 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @readl(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %47 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %50 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %48, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %60 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %58, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %68 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @writel(i32 %66, i32 %69)
  %71 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %72 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %41
  %76 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %77 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_unlock_irqrestore(i64 %78, i64 %79)
  br label %86

81:                                               ; preds = %41
  %82 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %83 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @__release(i64 %84)
  br label %86

86:                                               ; preds = %81, %75
  ret i32 0
}

declare dso_local %struct.clk_mux* @to_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @clk_mux_index_to_val(i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
