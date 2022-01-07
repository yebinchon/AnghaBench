; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_has_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_has_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk_core* }
%struct.clk_core = type { i32, i32, %struct.TYPE_2__*, %struct.clk_core* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_has_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk_core*, align 8
  %7 = alloca %struct.clk_core*, align 8
  %8 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = icmp ne %struct.clk* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = icmp ne %struct.clk* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %55

15:                                               ; preds = %11
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 0
  %18 = load %struct.clk_core*, %struct.clk_core** %17, align 8
  store %struct.clk_core* %18, %struct.clk_core** %6, align 8
  %19 = load %struct.clk*, %struct.clk** %5, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load %struct.clk_core*, %struct.clk_core** %20, align 8
  store %struct.clk_core* %21, %struct.clk_core** %7, align 8
  %22 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %23 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %22, i32 0, i32 3
  %24 = load %struct.clk_core*, %struct.clk_core** %23, align 8
  %25 = load %struct.clk_core*, %struct.clk_core** %7, align 8
  %26 = icmp eq %struct.clk_core* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %55

28:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %32 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load %struct.clk_core*, %struct.clk_core** %6, align 8
  %37 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.clk_core*, %struct.clk_core** %7, align 8
  %45 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcmp(i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %55

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %29

54:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49, %27, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
