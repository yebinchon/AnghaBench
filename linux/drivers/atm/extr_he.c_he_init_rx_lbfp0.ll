; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_rx_lbfp0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_rx_lbfp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { i32, i32, i32, i32, i32 }

@ATM_CELL_PAYLOAD = common dso_local global i32 0, align 4
@RCMLBM_BA = common dso_local global i32 0, align 4
@RLBF0_H = common dso_local global i32 0, align 4
@RLBF0_T = common dso_local global i32 0, align 4
@RLBF0_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_dev*)* @he_init_rx_lbfp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_init_rx_lbfp0(%struct.he_dev* %0) #0 {
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
  store i32 0, i32* %5, align 4
  %30 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %31 = load i32, i32* @RCMLBM_BA, align 4
  %32 = call i32 @he_readl(%struct.he_dev* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @RLBF0_H, align 4
  %36 = call i32 @he_writel(%struct.he_dev* %33, i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %74, %1
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %40 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 2
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul i32 %47, %48
  %50 = add i32 %46, %49
  %51 = udiv i32 %50, 32
  store i32 %51, i32* %6, align 4
  %52 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @he_writel_rcm(%struct.he_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 1
  %60 = call i32 @he_writel_rcm(%struct.he_dev* %56, i32 %57, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  %66 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %67 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %65, %43
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %37

77:                                               ; preds = %37
  %78 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sub i32 %79, 2
  %81 = load i32, i32* @RLBF0_T, align 4
  %82 = call i32 @he_writel(%struct.he_dev* %78, i32 %80, i32 %81)
  %83 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %84 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %85 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RLBF0_C, align 4
  %88 = call i32 @he_writel(%struct.he_dev* %83, i32 %86, i32 %87)
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
