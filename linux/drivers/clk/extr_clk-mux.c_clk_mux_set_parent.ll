; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_mux = type { i32, i32, i32, i64, i32 }

@CLK_MUX_HIWORD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mux_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_mux* @to_clk_mux(%struct.clk_hw* %9)
  store %struct.clk_mux* %10, %struct.clk_mux** %5, align 8
  %11 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %12 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %15 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @clk_mux_index_to_val(i32 %13, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %19 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %20 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %25 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i64 %26, i64 %27)
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %31 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @__acquire(i64 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %36 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CLK_MUX_HIWORD_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %43 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %46 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 16
  %49 = shl i32 %44, %48
  store i32 %49, i32* %8, align 4
  br label %63

50:                                               ; preds = %34
  %51 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %52 = call i32 @clk_mux_readl(%struct.clk_mux* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %54 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %57 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %55, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %50, %41
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %66 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %64, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @clk_mux_writel(%struct.clk_mux* %72, i32 %73)
  %75 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %76 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %63
  %80 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %81 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i64 %82, i64 %83)
  br label %90

85:                                               ; preds = %63
  %86 = load %struct.clk_mux*, %struct.clk_mux** %5, align 8
  %87 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @__release(i64 %88)
  br label %90

90:                                               ; preds = %85, %79
  ret i32 0
}

declare dso_local %struct.clk_mux* @to_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @clk_mux_index_to_val(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i32 @clk_mux_readl(%struct.clk_mux*) #1

declare dso_local i32 @clk_mux_writel(%struct.clk_mux*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
