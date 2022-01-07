; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-impd1.c_integrator_impd1_clk_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-impd1.c_integrator_impd1_clk_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.impd1_clk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@impd1_clks = common dso_local global %struct.impd1_clk* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @integrator_impd1_clk_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.impd1_clk*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %77

8:                                                ; preds = %1
  %9 = load %struct.impd1_clk*, %struct.impd1_clk** @impd1_clks, align 8
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %9, i64 %11
  store %struct.impd1_clk* %12, %struct.impd1_clk** %4, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %29, %8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %16 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %15, i32 0, i32 11
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %22 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %21, i32 0, i32 11
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clkdev_drop(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %34 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_unregister(i32 %35)
  %37 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %38 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_unregister(i32 %39)
  %41 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %42 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_unregister(i32 %43)
  %45 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %46 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_unregister(i32 %47)
  %49 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %50 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_unregister(i32 %51)
  %53 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %54 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kfree(i32 %55)
  %57 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %58 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @kfree(i32 %59)
  %61 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %62 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @kfree(i32 %63)
  %65 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %66 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @kfree(i32 %67)
  %69 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %70 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @kfree(i32 %71)
  %73 = load %struct.impd1_clk*, %struct.impd1_clk** %4, align 8
  %74 = getelementptr inbounds %struct.impd1_clk, %struct.impd1_clk* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @kfree(i32 %75)
  br label %77

77:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clkdev_drop(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
