; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_tx_lbfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_tx_lbfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { i32, i32, i32, i32, i32, i32, i32 }

@ATM_CELL_PAYLOAD = common dso_local global i32 0, align 4
@RCMLBM_BA = common dso_local global i32 0, align 4
@TLBF_H = common dso_local global i32 0, align 4
@TLBF_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_dev*)* @he_init_tx_lbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_init_tx_lbfp(%struct.he_dev* %0) #0 {
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
  %30 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %31 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %34 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %32, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %38 = load i32, i32* @RCMLBM_BA, align 4
  %39 = call i32 @he_readl(%struct.he_dev* %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 2, %40
  %42 = add i32 %39, %41
  store i32 %42, i32* %4, align 4
  %43 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TLBF_H, align 4
  %46 = call i32 @he_writel(%struct.he_dev* %43, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %84, %1
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %50 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul i32 %57, %58
  %60 = add i32 %56, %59
  %61 = udiv i32 %60, 32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @he_writel_rcm(%struct.he_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  %70 = call i32 @he_writel_rcm(%struct.he_dev* %66, i32 %67, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  %76 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %77 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %75, %53
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %82, 2
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %47

87:                                               ; preds = %47
  %88 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sub i32 %89, 1
  %91 = load i32, i32* @TLBF_T, align 4
  %92 = call i32 @he_writel(%struct.he_dev* %88, i32 %90, i32 %91)
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
