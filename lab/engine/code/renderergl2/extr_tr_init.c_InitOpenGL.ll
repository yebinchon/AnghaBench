; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_InitOpenGL.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_InitOpenGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@glConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@GL_MAX_TEXTURE_IMAGE_UNITS = common dso_local global i32 0, align 4
@GL_MAX_VERTEX_UNIFORM_COMPONENTS = common dso_local global i32 0, align 4
@IQM_MAX_JOINTS = common dso_local global i32 0, align 4
@glRefConfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitOpenGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitOpenGL() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 0), align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  %5 = load i32, i32* @qfalse, align 4
  %6 = call i32 @GLimp_Init(i32 %5)
  %7 = call i32 (...) @GLimp_InitExtraExtensions()
  %8 = load i32, i32* @qtrue, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 3), align 8
  %9 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %10 = call i32 @qglGetIntegerv(i32 %9, i32* %1)
  %11 = load i32, i32* %1, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 1), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 1), align 8
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 1), align 8
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* @GL_MAX_TEXTURE_IMAGE_UNITS, align 4
  %17 = call i32 @qglGetIntegerv(i32 %16, i32* %1)
  %18 = load i32, i32* %1, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 2), align 4
  %19 = load i32, i32* @GL_MAX_VERTEX_UNIFORM_COMPONENTS, align 4
  %20 = call i32 @qglGetIntegerv(i32 %19, i32* %1)
  %21 = load i32, i32* @IQM_MAX_JOINTS, align 4
  %22 = load i32, i32* %1, align 4
  %23 = sub nsw i32 %22, 160
  %24 = sdiv i32 %23, 16
  %25 = call i32 @Com_Clamp(i32 0, i32 %21, i32 %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @glRefConfig, i32 0, i32 0), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @glRefConfig, i32 0, i32 0), align 4
  %27 = icmp slt i32 %26, 12
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @glRefConfig, i32 0, i32 0), align 4
  br label %29

29:                                               ; preds = %28, %15
  br label %30

30:                                               ; preds = %29, %0
  %31 = call i32 (...) @GL_SetDefaultState()
  ret void
}

declare dso_local i32 @GLimp_Init(i32) #1

declare dso_local i32 @GLimp_InitExtraExtensions(...) #1

declare dso_local i32 @qglGetIntegerv(i32, i32*) #1

declare dso_local i32 @Com_Clamp(i32, i32, i32) #1

declare dso_local i32 @GL_SetDefaultState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
