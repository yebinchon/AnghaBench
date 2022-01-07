; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}*, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@clocks_mutex = common dso_local global i32 0, align 4
@root_clks = common dso_local global i32 0, align 4
@clocks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_register(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = icmp eq %struct.clk* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = call i64 @IS_ERR(%struct.clk* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %6
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.clk*, %struct.clk** %3, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  store i32 0, i32* %2, align 4
  br label %62

26:                                               ; preds = %19
  %27 = call i32 @mutex_lock(i32* @clocks_mutex)
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.clk*, %struct.clk** %3, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 2
  %35 = load %struct.clk*, %struct.clk** %3, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @list_add(%struct.TYPE_4__* %34, i32* %38)
  br label %44

40:                                               ; preds = %26
  %41 = load %struct.clk*, %struct.clk** %3, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 2
  %43 = call i32 @list_add(%struct.TYPE_4__* %42, i32* @root_clks)
  br label %44

44:                                               ; preds = %40, %32
  %45 = load %struct.clk*, %struct.clk** %3, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 1
  %47 = call i32 @list_add(%struct.TYPE_4__* %46, i32* @clocks)
  %48 = load %struct.clk*, %struct.clk** %3, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.clk*)**
  %51 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %50, align 8
  %52 = icmp ne i32 (%struct.clk*)* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.clk*, %struct.clk** %3, align 8
  %55 = getelementptr inbounds %struct.clk, %struct.clk* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.clk*)**
  %57 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %56, align 8
  %58 = load %struct.clk*, %struct.clk** %3, align 8
  %59 = call i32 %57(%struct.clk* %58)
  br label %60

60:                                               ; preds = %53, %44
  %61 = call i32 @mutex_unlock(i32* @clocks_mutex)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %25, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
