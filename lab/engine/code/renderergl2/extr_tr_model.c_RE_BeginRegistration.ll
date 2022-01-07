; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model.c_RE_BeginRegistration.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model.c_RE_BeginRegistration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i64 }

@glConfig = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_VISCOUNTS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_BeginRegistration(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 (...) @R_Init()
  %5 = load i32, i32* @glConfig, align 4
  %6 = load i32*, i32** %2, align 8
  store i32 %5, i32* %6, align 4
  %7 = call i32 (...) @R_IssuePendingRenderCommands()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_VISCOUNTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 -2, i32* %16, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %8

20:                                               ; preds = %8
  %21 = call i32 (...) @R_ClearFlares()
  %22 = call i32 (...) @RE_ClearScene()
  %23 = load i32, i32* @qtrue, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @R_Init(...) #1

declare dso_local i32 @R_IssuePendingRenderCommands(...) #1

declare dso_local i32 @R_ClearFlares(...) #1

declare dso_local i32 @RE_ClearScene(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
