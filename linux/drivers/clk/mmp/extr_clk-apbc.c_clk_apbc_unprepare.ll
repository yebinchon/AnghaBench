; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-apbc.c_clk_apbc_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-apbc.c_clk_apbc_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_apbc = type { i32, i64, i32 }

@APBC_POWER_CTRL = common dso_local global i32 0, align 4
@APBC_POWER = common dso_local global i64 0, align 8
@APBC_FNCLK = common dso_local global i64 0, align 8
@APBC_APBCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_apbc_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_apbc_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_apbc*, align 8
  %4 = alloca i64, align 8
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
  %22 = call i64 @readl_relaxed(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %24 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @APBC_POWER_CTRL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i64, i64* @APBC_POWER, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %4, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %29, %18
  %35 = load i64, i64* @APBC_FNCLK, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %4, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %41 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @writel_relaxed(i64 %39, i32 %42)
  %44 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %45 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %50 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %48, %34
  %55 = call i32 @udelay(i32 10)
  %56 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %57 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %62 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_lock_irqsave(i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %68 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @readl_relaxed(i32 %69)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* @APBC_APBCLK, align 8
  %72 = xor i64 %71, -1
  %73 = load i64, i64* %4, align 8
  %74 = and i64 %73, %72
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %77 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @writel_relaxed(i64 %75, i32 %78)
  %80 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %81 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %66
  %85 = load %struct.clk_apbc*, %struct.clk_apbc** %3, align 8
  %86 = getelementptr inbounds %struct.clk_apbc, %struct.clk_apbc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @spin_unlock_irqrestore(i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %84, %66
  ret void
}

declare dso_local %struct.clk_apbc* @to_clk_apbc(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
