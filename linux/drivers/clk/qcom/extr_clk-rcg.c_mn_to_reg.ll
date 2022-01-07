; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_mn_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_mn_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn = type { i32, i32 }

@MNCTR_MODE_MASK = common dso_local global i32 0, align 4
@MNCTR_MODE_DUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mn*, i32, i32, i32)* @mn_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn_to_reg(%struct.mn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mn* %0, %struct.mn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @MNCTR_MODE_MASK, align 4
  %11 = load %struct.mn*, %struct.mn** %5, align 8
  %12 = getelementptr inbounds %struct.mn, %struct.mn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %10, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mn*, %struct.mn** %5, align 8
  %16 = getelementptr inbounds %struct.mn, %struct.mn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load %struct.mn*, %struct.mn** %5, align 8
  %29 = getelementptr inbounds %struct.mn, %struct.mn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @MNCTR_MODE_DUAL, align 4
  %35 = load %struct.mn*, %struct.mn** %5, align 8
  %36 = getelementptr inbounds %struct.mn, %struct.mn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %27, %4
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
