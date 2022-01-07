; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_reg = type { i32, i32, i32, i32, i32, i64 }
%struct.switch_dev = type { i32 }

@rtl_regs = common dso_local global %struct.rtl_reg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, i32)* @rtl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_set(%struct.switch_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_reg*, align 8
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rtl_reg*, %struct.rtl_reg** @rtl_regs, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %10, i64 %12
  store %struct.rtl_reg* %13, %struct.rtl_reg** %8, align 8
  store i32 65535, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.rtl_reg*, %struct.rtl_reg** @rtl_regs, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.rtl_reg* %15)
  %17 = icmp uge i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %21 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

25:                                               ; preds = %3
  %26 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %32 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %38 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %46 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 16
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %51 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %56 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %49, %44
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %65 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %66 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %69 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rtl_reg*, %struct.rtl_reg** %8, align 8
  %72 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @rtl_rmw(%struct.switch_dev* %64, i32 %67, i32 %70, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %60, %24
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rtl_reg*) #1

declare dso_local i32 @rtl_rmw(%struct.switch_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
