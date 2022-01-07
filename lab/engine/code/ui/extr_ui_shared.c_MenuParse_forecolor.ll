; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_MenuParse_forecolor.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_MenuParse_forecolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { float*, i32 }

@qfalse = common dso_local global i32 0, align 4
@WINDOW_FORECOLORSET = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MenuParse_forecolor(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PC_Float_Parse(i32 %15, float* %7)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load float, float* %7, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float %21, float* %28, align 4
  %29 = load i32, i32* @WINDOW_FORECOLORSET, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* @qtrue, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @PC_Float_Parse(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
