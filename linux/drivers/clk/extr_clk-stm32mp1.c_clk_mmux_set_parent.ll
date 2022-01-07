; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_clk_mmux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_clk_mmux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clk_hw*, i32)* }
%struct.clk_hw = type { i32 }
%struct.clk_mux = type { i32 }
%struct.stm32_clk_mmux = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.clk_hw** }

@clk_mux_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_mmux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mmux_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_mux*, align 8
  %7 = alloca %struct.stm32_clk_mmux*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.clk_mux* @to_clk_mux(%struct.clk_hw* %11)
  store %struct.clk_mux* %12, %struct.clk_mux** %6, align 8
  %13 = load %struct.clk_mux*, %struct.clk_mux** %6, align 8
  %14 = call %struct.stm32_clk_mmux* @to_clk_mmux(%struct.clk_mux* %13)
  store %struct.stm32_clk_mmux* %14, %struct.stm32_clk_mmux** %7, align 8
  %15 = load i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clk_mux_ops, i32 0, i32 0), align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 %15(%struct.clk_hw* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %25 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %24)
  store %struct.clk_hw* %25, %struct.clk_hw** %8, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %59, %23
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.stm32_clk_mmux*, %struct.stm32_clk_mmux** %7, align 8
  %29 = getelementptr inbounds %struct.stm32_clk_mmux, %struct.stm32_clk_mmux* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %26
  %35 = load %struct.stm32_clk_mmux*, %struct.stm32_clk_mmux** %7, align 8
  %36 = getelementptr inbounds %struct.stm32_clk_mmux, %struct.stm32_clk_mmux* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.clk_hw**, %struct.clk_hw*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %39, i64 %41
  %43 = load %struct.clk_hw*, %struct.clk_hw** %42, align 8
  %44 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %45 = icmp ne %struct.clk_hw* %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %34
  %47 = load %struct.stm32_clk_mmux*, %struct.stm32_clk_mmux** %7, align 8
  %48 = getelementptr inbounds %struct.stm32_clk_mmux, %struct.stm32_clk_mmux* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.clk_hw**, %struct.clk_hw*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %51, i64 %53
  %55 = load %struct.clk_hw*, %struct.clk_hw** %54, align 8
  %56 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %57 = call i32 @clk_hw_reparent(%struct.clk_hw* %55, %struct.clk_hw* %56)
  br label %58

58:                                               ; preds = %46, %34
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %26

62:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.clk_mux* @to_clk_mux(%struct.clk_hw*) #1

declare dso_local %struct.stm32_clk_mmux* @to_clk_mmux(%struct.clk_mux*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_reparent(%struct.clk_hw*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
