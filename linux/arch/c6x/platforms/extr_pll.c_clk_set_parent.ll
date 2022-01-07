; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_pll.c_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_pll.c_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 (%struct.clk*)*, i32, i32, %struct.clk*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@clocks_mutex = common dso_local global i32 0, align 4
@clockfw_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = icmp eq %struct.clk* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = call i64 @IS_ERR(%struct.clk* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %9
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %16
  %26 = call i32 @mutex_lock(i32* @clocks_mutex)
  %27 = load %struct.clk*, %struct.clk** %5, align 8
  %28 = load %struct.clk*, %struct.clk** %4, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 3
  store %struct.clk* %27, %struct.clk** %29, align 8
  %30 = load %struct.clk*, %struct.clk** %4, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 4
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.clk*, %struct.clk** %4, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 4
  %35 = load %struct.clk*, %struct.clk** %4, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 3
  %37 = load %struct.clk*, %struct.clk** %36, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 2
  %39 = call i32 @list_add(i32* %34, i32* %38)
  %40 = call i32 @mutex_unlock(i32* @clocks_mutex)
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_lock_irqsave(i32* @clockfw_lock, i64 %41)
  %43 = load %struct.clk*, %struct.clk** %4, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 0
  %45 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %44, align 8
  %46 = icmp ne i32 (%struct.clk*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %25
  %48 = load %struct.clk*, %struct.clk** %4, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 0
  %50 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %49, align 8
  %51 = load %struct.clk*, %struct.clk** %4, align 8
  %52 = call i32 %50(%struct.clk* %51)
  %53 = load %struct.clk*, %struct.clk** %4, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %47, %25
  %56 = load %struct.clk*, %struct.clk** %4, align 8
  %57 = call i32 @propagate_rate(%struct.clk* %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @clockfw_lock, i64 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %22, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @propagate_rate(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
