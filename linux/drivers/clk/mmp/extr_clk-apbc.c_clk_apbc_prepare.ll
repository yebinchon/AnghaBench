; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-apbc.c_clk_apbc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-apbc.c_clk_apbc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_apbc = type { i32, i64, i32, i32 }

@APBC_POWER_CTRL = common dso_local global i32 0, align 4
@APBC_POWER = common dso_local global i32 0, align 4
@APBC_FNCLK = common dso_local global i32 0, align 4
@APBC_APBCLK = common dso_local global i32 0, align 4
@APBC_NO_BUS_CTRL = common dso_local global i32 0, align 4
@APBC_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_apbc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_apbc_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_apbc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_apbc* @to_clk_apbc(%struct.clk_hw* %6)
  store %struct.clk_apbc* %7, %struct.clk_apbc** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %9 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %14 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %20 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @readl_relaxed(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %24 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @APBC_POWER_CTRL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @APBC_POWER, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %18
  %34 = load i32, i32* @APBC_FNCLK, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %39 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @writel_relaxed(i32 %37, i32 %40)
  %42 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %43 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %48 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %33
  %53 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %54 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @udelay(i32 %55)
  %57 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %58 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %63 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_lock_irqsave(i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %61, %52
  %68 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %69 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @readl_relaxed(i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @APBC_APBCLK, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %77 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @writel_relaxed(i32 %75, i32 %78)
  %80 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %81 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %67
  %85 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %86 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @spin_unlock_irqrestore(i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %84, %67
  %91 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %92 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @udelay(i32 %93)
  %95 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %96 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @APBC_NO_BUS_CTRL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %137, label %101

101:                                              ; preds = %90
  %102 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %103 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %108 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @spin_lock_irqsave(i64 %109, i64 %110)
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %114 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @readl_relaxed(i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* @APBC_RST, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %123 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @writel_relaxed(i32 %121, i32 %124)
  %126 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %127 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %112
  %131 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %132 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_unlock_irqrestore(i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %130, %112
  br label %137

137:                                              ; preds = %136, %90
  ret i32 0
}

declare dso_local %struct.clk_apbc* @to_clk_apbc(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
