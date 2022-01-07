; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_cmds.c_RE_TakeVideoFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_cmds.c_RE_TakeVideoFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32 }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RC_VIDEOFRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_TakeVideoFrame(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %39

15:                                               ; preds = %5
  %16 = call %struct.TYPE_4__* @R_GetCommandBuffer(i32 40)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %39

20:                                               ; preds = %15
  %21 = load i32, i32* @RC_VIDEOFRAME, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %20, %19, %14
  ret void
}

declare dso_local %struct.TYPE_4__* @R_GetCommandBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
