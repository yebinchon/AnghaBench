; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_CullBox.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_CullBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@tr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VPF_FARPLANEFRUSTUM = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@CULL_OUT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@CULL_IN = common dso_local global i32 0, align 4
@CULL_CLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_CullBox(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0, i32 0), align 8
  %10 = load i32, i32* @VPF_FARPLANEFRUSTUM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 5, i32 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %43, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tr, i32 0, i32 0, i32 1), align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @BoxOnPlaneSide(i32 %27, i32 %30, i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @CULL_OUT, align 4
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %20
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @qtrue, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %16

46:                                               ; preds = %16
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @CULL_IN, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @CULL_CLIP, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %49, %35
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @BoxOnPlaneSide(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
