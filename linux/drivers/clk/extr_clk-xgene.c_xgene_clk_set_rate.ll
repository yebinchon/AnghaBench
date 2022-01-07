; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.xgene_clk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"%s clock set rate %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @xgene_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xgene_clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.xgene_clk* @to_xgene_clk(%struct.clk_hw* %12)
  store %struct.xgene_clk* %13, %struct.xgene_clk** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %15 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %20 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %26 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %100

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = udiv i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %42 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %50 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %56 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %60 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = call i32 @xgene_clk_read(i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %66 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %72 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %70, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %84 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %88 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %86, %90
  %92 = call i32 @xgene_clk_write(i32 %82, i64 %91)
  %93 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %94 = call i32 @clk_hw_get_name(%struct.clk_hw* %93)
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = udiv i64 %95, %97
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %94, i64 %98)
  br label %101

100:                                              ; preds = %24
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %36
  %102 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %103 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.xgene_clk*, %struct.xgene_clk** %7, align 8
  %108 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_unlock_irqrestore(i64 %109, i64 %110)
  br label %112

112:                                              ; preds = %106, %101
  %113 = load i64, i64* %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = udiv i64 %113, %115
  %117 = trunc i64 %116 to i32
  ret i32 %117
}

declare dso_local %struct.xgene_clk* @to_xgene_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @xgene_clk_read(i64) #1

declare dso_local i32 @xgene_clk_write(i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
