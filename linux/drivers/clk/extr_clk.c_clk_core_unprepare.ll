; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i32, i64, %struct.clk_core*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@prepare_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s already unprepared\0A\00", align 1
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unpreparing critical %s\0A\00", align 1
@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unpreparing enabled %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*)* @clk_core_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_core_unprepare(%struct.clk_core* %0) #0 {
  %2 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @prepare_lock)
  %4 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %5 = icmp ne %struct.clk_core* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %93

7:                                                ; preds = %1
  %8 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %14 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @WARN(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %93

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
  %35 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @WARN(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %93

40:                                               ; preds = %31
  %41 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %42 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %49 = call i32 @clk_core_rate_unprotect(%struct.clk_core* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %52 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %93

57:                                               ; preds = %50
  %58 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %59 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %64 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @WARN(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %68 = call i32 @trace_clk_unprepare(%struct.clk_core* %67)
  %69 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %70 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %69, i32 0, i32 5
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = icmp ne i32 (i32)* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %57
  %76 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %77 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %82 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %80(i32 %83)
  br label %85

85:                                               ; preds = %75, %57
  %86 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %87 = call i32 @clk_pm_runtime_put(%struct.clk_core* %86)
  %88 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %89 = call i32 @trace_clk_unprepare_complete(%struct.clk_core* %88)
  %90 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %91 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %90, i32 0, i32 3
  %92 = load %struct.clk_core*, %struct.clk_core** %91, align 8
  call void @clk_core_unprepare(%struct.clk_core* %92)
  br label %93

93:                                               ; preds = %85, %56, %39, %18, %6
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @clk_core_rate_unprotect(%struct.clk_core*) #1

declare dso_local i32 @trace_clk_unprepare(%struct.clk_core*) #1

declare dso_local i32 @clk_pm_runtime_put(%struct.clk_core*) #1

declare dso_local i32 @trace_clk_unprepare_complete(%struct.clk_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
