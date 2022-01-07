; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_composite_set_rate_and_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-composite.c_clk_composite_set_rate_and_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_composite = type { %struct.clk_hw*, %struct.clk_hw*, %struct.clk_ops*, %struct.clk_ops* }
%struct.clk_ops = type { i64 (%struct.clk_hw.0*, i64)*, i32 (%struct.clk_hw.1*, i64, i64)*, i32 (%struct.clk_hw.2*, i32)* }
%struct.clk_hw.0 = type opaque
%struct.clk_hw.1 = type opaque
%struct.clk_hw.2 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64, i32)* @clk_composite_set_rate_and_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_composite_set_rate_and_parent(%struct.clk_hw* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_composite*, align 8
  %10 = alloca %struct.clk_ops*, align 8
  %11 = alloca %struct.clk_ops*, align 8
  %12 = alloca %struct.clk_hw*, align 8
  %13 = alloca %struct.clk_hw*, align 8
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.clk_composite* @to_clk_composite(%struct.clk_hw* %15)
  store %struct.clk_composite* %16, %struct.clk_composite** %9, align 8
  %17 = load %struct.clk_composite*, %struct.clk_composite** %9, align 8
  %18 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %17, i32 0, i32 3
  %19 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  store %struct.clk_ops* %19, %struct.clk_ops** %10, align 8
  %20 = load %struct.clk_composite*, %struct.clk_composite** %9, align 8
  %21 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %20, i32 0, i32 2
  %22 = load %struct.clk_ops*, %struct.clk_ops** %21, align 8
  store %struct.clk_ops* %22, %struct.clk_ops** %11, align 8
  %23 = load %struct.clk_composite*, %struct.clk_composite** %9, align 8
  %24 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %23, i32 0, i32 1
  %25 = load %struct.clk_hw*, %struct.clk_hw** %24, align 8
  store %struct.clk_hw* %25, %struct.clk_hw** %12, align 8
  %26 = load %struct.clk_composite*, %struct.clk_composite** %9, align 8
  %27 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %26, i32 0, i32 0
  %28 = load %struct.clk_hw*, %struct.clk_hw** %27, align 8
  store %struct.clk_hw* %28, %struct.clk_hw** %13, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %30 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %31 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %29, %struct.clk_hw* %30)
  %32 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %33 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %34 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %32, %struct.clk_hw* %33)
  %35 = load %struct.clk_ops*, %struct.clk_ops** %10, align 8
  %36 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %35, i32 0, i32 0
  %37 = load i64 (%struct.clk_hw.0*, i64)*, i64 (%struct.clk_hw.0*, i64)** %36, align 8
  %38 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %39 = bitcast %struct.clk_hw* %38 to %struct.clk_hw.0*
  %40 = load i64, i64* %7, align 8
  %41 = call i64 %37(%struct.clk_hw.0* %39, i64 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %4
  %46 = load %struct.clk_ops*, %struct.clk_ops** %10, align 8
  %47 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %46, i32 0, i32 1
  %48 = load i32 (%struct.clk_hw.1*, i64, i64)*, i32 (%struct.clk_hw.1*, i64, i64)** %47, align 8
  %49 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %50 = bitcast %struct.clk_hw* %49 to %struct.clk_hw.1*
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 %48(%struct.clk_hw.1* %50, i64 %51, i64 %52)
  %54 = load %struct.clk_ops*, %struct.clk_ops** %11, align 8
  %55 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %54, i32 0, i32 2
  %56 = load i32 (%struct.clk_hw.2*, i32)*, i32 (%struct.clk_hw.2*, i32)** %55, align 8
  %57 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %58 = bitcast %struct.clk_hw* %57 to %struct.clk_hw.2*
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %56(%struct.clk_hw.2* %58, i32 %59)
  br label %77

61:                                               ; preds = %4
  %62 = load %struct.clk_ops*, %struct.clk_ops** %11, align 8
  %63 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %62, i32 0, i32 2
  %64 = load i32 (%struct.clk_hw.2*, i32)*, i32 (%struct.clk_hw.2*, i32)** %63, align 8
  %65 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %66 = bitcast %struct.clk_hw* %65 to %struct.clk_hw.2*
  %67 = load i32, i32* %8, align 4
  %68 = call i32 %64(%struct.clk_hw.2* %66, i32 %67)
  %69 = load %struct.clk_ops*, %struct.clk_ops** %10, align 8
  %70 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %69, i32 0, i32 1
  %71 = load i32 (%struct.clk_hw.1*, i64, i64)*, i32 (%struct.clk_hw.1*, i64, i64)** %70, align 8
  %72 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %73 = bitcast %struct.clk_hw* %72 to %struct.clk_hw.1*
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 %71(%struct.clk_hw.1* %73, i64 %74, i64 %75)
  br label %77

77:                                               ; preds = %61, %45
  ret i32 0
}

declare dso_local %struct.clk_composite* @to_clk_composite(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
