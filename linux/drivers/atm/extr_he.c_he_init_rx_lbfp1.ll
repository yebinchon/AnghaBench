; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_rx_lbfp1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_rx_lbfp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { i32, i32, i32, i32, i32 }

@ATM_CELL_PAYLOAD = common dso_local global i32 0, align 4
@RCMLBM_BA = common dso_local global i32 0, align 4
@RLBF1_H = common dso_local global i32 0, align 4
@RLBF1_T = common dso_local global i32 0, align 4
@RLBF1_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_dev*)* @he_init_rx_lbfp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_init_rx_lbfp1(%struct.he_dev* %0) #0 {
  %2 = alloca %struct.he_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.he_dev* %0, %struct.he_dev** %2, align 8
  %11 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %12 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %15 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = udiv i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %19 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATM_CELL_PAYLOAD, align 4
  %22 = mul i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %24 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %27 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = mul i32 %25, %28
  store i32 %29, i32* %10, align 4
  store i32 1, i32* %5, align 4
  %30 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %31 = load i32, i32* @RCMLBM_BA, align 4
  %32 = call i32 @he_readl(%struct.he_dev* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = mul i32 2, %33
  %35 = add i32 %32, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RLBF1_H, align 4
  %39 = call i32 @he_writel(%struct.he_dev* %36, i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %77, %1
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %43 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 2
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul i32 %50, %51
  %53 = add i32 %49, %52
  %54 = udiv i32 %53, 32
  store i32 %54, i32* %6, align 4
  %55 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @he_writel_rcm(%struct.he_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  %63 = call i32 @he_writel_rcm(%struct.he_dev* %59, i32 %60, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  %69 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %70 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %68, %46
  %75 = load i32, i32* %4, align 4
  %76 = add i32 %75, 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %40

80:                                               ; preds = %40
  %81 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sub i32 %82, 2
  %84 = load i32, i32* @RLBF1_T, align 4
  %85 = call i32 @he_writel(%struct.he_dev* %81, i32 %83, i32 %84)
  %86 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %87 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %88 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RLBF1_C, align 4
  %91 = call i32 @he_writel(%struct.he_dev* %86, i32 %89, i32 %90)
  ret void
}

declare dso_local i32 @he_readl(%struct.he_dev*, i32) #1

declare dso_local i32 @he_writel(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_rcm(%struct.he_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
