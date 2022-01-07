; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.xgene_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s clock checking\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s clock is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @xgene_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.xgene_clk*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.xgene_clk* @to_xgene_clk(%struct.clk_hw* %6)
  store %struct.xgene_clk* %7, %struct.xgene_clk** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.xgene_clk*, %struct.xgene_clk** %4, align 8
  %9 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = call i32 @clk_hw_get_name(%struct.clk_hw* %14)
  %16 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.xgene_clk*, %struct.xgene_clk** %4, align 8
  %18 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xgene_clk*, %struct.xgene_clk** %4, align 8
  %22 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  %26 = call i32 @xgene_clk_read(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %28 = call i32 @clk_hw_get_name(%struct.clk_hw* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.xgene_clk*, %struct.xgene_clk** %4, align 8
  %31 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %37)
  br label %39

39:                                               ; preds = %13, %1
  %40 = load %struct.xgene_clk*, %struct.xgene_clk** %4, align 8
  %41 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %56

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.xgene_clk*, %struct.xgene_clk** %4, align 8
  %49 = getelementptr inbounds %struct.xgene_clk, %struct.xgene_clk* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %47, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %46, %45
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.xgene_clk* @to_xgene_clk(%struct.clk_hw*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @xgene_clk_read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
