; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_cmds.c_RE_StretchPic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_cmds.c_RE_StretchPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { float, float, float, float, float, float, float, float, i32, i32 }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RC_STRETCH_PIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_StretchPic(float %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__*, align 8
  store float %0, float* %10, align 4
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %9
  br label %60

23:                                               ; preds = %9
  %24 = call %struct.TYPE_4__* @R_GetCommandBuffer(i32 40)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %19, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %60

28:                                               ; preds = %23
  %29 = load i32, i32* @RC_STRETCH_PIC, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @R_GetShaderByHandle(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load float, float* %10, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store float %36, float* %38, align 4
  %39 = load float, float* %11, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store float %39, float* %41, align 4
  %42 = load float, float* %12, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store float %42, float* %44, align 4
  %45 = load float, float* %13, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store float %45, float* %47, align 4
  %48 = load float, float* %14, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store float %48, float* %50, align 4
  %51 = load float, float* %15, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  store float %51, float* %53, align 4
  %54 = load float, float* %16, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  store float %54, float* %56, align 4
  %57 = load float, float* %17, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 7
  store float %57, float* %59, align 4
  br label %60

60:                                               ; preds = %28, %27, %22
  ret void
}

declare dso_local %struct.TYPE_4__* @R_GetCommandBuffer(i32) #1

declare dso_local i32 @R_GetShaderByHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
