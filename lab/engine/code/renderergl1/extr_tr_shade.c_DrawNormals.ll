; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_DrawNormals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_DrawNormals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32* }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GLS_POLYMODE_LINE = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@GL_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @DrawNormals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawNormals(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 4
  %6 = call i32 @GL_Bind(i32 %5)
  %7 = call i32 @qglColor3f(i32 1, i32 1, i32 1)
  %8 = call i32 @qglDepthRange(i32 0, i32 0)
  %9 = load i32, i32* @GLS_POLYMODE_LINE, align 4
  %10 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @GL_State(i32 %11)
  %13 = load i32, i32* @GL_LINES, align 4
  %14 = call i32 @qglBegin(i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %48, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qglVertex3fv(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @VectorMA(i32 %36, i32 2, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @qglVertex3fv(i32 %46)
  br label %48

48:                                               ; preds = %21
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %15

51:                                               ; preds = %15
  %52 = call i32 (...) @qglEnd()
  %53 = call i32 @qglDepthRange(i32 0, i32 1)
  ret void
}

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @qglColor3f(i32, i32, i32) #1

declare dso_local i32 @qglDepthRange(i32, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglVertex3fv(i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @qglEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
