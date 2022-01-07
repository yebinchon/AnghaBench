; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_mux.c_sprd_mux_helper_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_mux.c_sprd_mux_helper_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_clk_common = type { i32, i32, i32 }
%struct.sprd_mux_ssel = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprd_mux_helper_get_parent(%struct.sprd_clk_common* %0, %struct.sprd_mux_ssel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sprd_clk_common*, align 8
  %5 = alloca %struct.sprd_mux_ssel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sprd_clk_common* %0, %struct.sprd_clk_common** %4, align 8
  store %struct.sprd_mux_ssel* %1, %struct.sprd_mux_ssel** %5, align 8
  %10 = load %struct.sprd_clk_common*, %struct.sprd_clk_common** %4, align 8
  %11 = getelementptr inbounds %struct.sprd_clk_common, %struct.sprd_clk_common* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sprd_clk_common*, %struct.sprd_clk_common** %4, align 8
  %14 = getelementptr inbounds %struct.sprd_clk_common, %struct.sprd_clk_common* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i32* %6)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sprd_mux_ssel*, %struct.sprd_mux_ssel** %5, align 8
  %19 = getelementptr inbounds %struct.sprd_mux_ssel, %struct.sprd_mux_ssel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = lshr i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sprd_mux_ssel*, %struct.sprd_mux_ssel** %5, align 8
  %23 = getelementptr inbounds %struct.sprd_mux_ssel, %struct.sprd_mux_ssel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.sprd_mux_ssel*, %struct.sprd_mux_ssel** %5, align 8
  %30 = getelementptr inbounds %struct.sprd_mux_ssel, %struct.sprd_mux_ssel* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %2
  %36 = load %struct.sprd_clk_common*, %struct.sprd_clk_common** %4, align 8
  %37 = getelementptr inbounds %struct.sprd_clk_common, %struct.sprd_clk_common* %36, i32 0, i32 0
  %38 = call i32 @clk_hw_get_num_parents(i32* %37)
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %68, %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.sprd_mux_ssel*, %struct.sprd_mux_ssel** %5, align 8
  %47 = getelementptr inbounds %struct.sprd_mux_ssel, %struct.sprd_mux_ssel* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %45, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.sprd_mux_ssel*, %struct.sprd_mux_ssel** %5, align 8
  %57 = getelementptr inbounds %struct.sprd_mux_ssel, %struct.sprd_mux_ssel* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %55, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %54, %44
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %65, %33
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_hw_get_num_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
