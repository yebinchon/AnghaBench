; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.xgene_clk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s clock disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @xgene_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.xgene_clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.xgene_clk* @to_xgene_clk(%struct.clk_hw* %6)
  store %struct.xgene_clk* %7, %struct.xgene_clk** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %20 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %18
  %25 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %26 = call i32 @clk_hw_get_name(%struct.clk_hw* %25)
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %29 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %33 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  %37 = call i32 @xgene_clk_read(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %39 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %46 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %50 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = call i32 @xgene_clk_write(i32 %44, i64 %53)
  %55 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %56 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %60 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = call i32 @xgene_clk_read(i64 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %66 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %74 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %78 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %76, %80
  %82 = call i32 @xgene_clk_write(i32 %72, i64 %81)
  br label %83

83:                                               ; preds = %24, %18
  %84 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %85 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.xgene_clk*, %struct.xgene_clk** %3, align 8
  %90 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i64 %91, i64 %92)
  br label %94

94:                                               ; preds = %88, %83
  ret void
}

declare dso_local %struct.xgene_clk* @to_xgene_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @xgene_clk_read(i64) #1

declare dso_local i32 @xgene_clk_write(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
