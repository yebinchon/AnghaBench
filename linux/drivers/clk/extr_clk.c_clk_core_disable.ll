; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i32, %struct.clk_core*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@enable_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s already disabled\0A\00", align 1
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Disabling critical %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*)* @clk_core_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_core_disable(%struct.clk_core* %0) #0 {
  %2 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @enable_lock)
  %4 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %5 = icmp ne %struct.clk_core* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %72

7:                                                ; preds = %1
  %8 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %14 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @WARN(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %72

19:                                               ; preds = %7
  %20 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %21 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %26 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i1 [ false, %19 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %35 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @WARN(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %72

40:                                               ; preds = %31
  %41 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %42 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %72

47:                                               ; preds = %40
  %48 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %49 = call i32 @trace_clk_disable_rcuidle(%struct.clk_core* %48)
  %50 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %51 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = icmp ne i32 (i32)* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %58 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %63 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i32 %64)
  br label %66

66:                                               ; preds = %56, %47
  %67 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %68 = call i32 @trace_clk_disable_complete_rcuidle(%struct.clk_core* %67)
  %69 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %70 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %69, i32 0, i32 2
  %71 = load %struct.clk_core*, %struct.clk_core** %70, align 8
  call void @clk_core_disable(%struct.clk_core* %71)
  br label %72

72:                                               ; preds = %66, %46, %39, %18, %6
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @trace_clk_disable_rcuidle(%struct.clk_core*) #1

declare dso_local i32 @trace_clk_disable_complete_rcuidle(%struct.clk_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
