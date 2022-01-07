; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_InitOpenGL.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_init.c_InitOpenGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@glConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitOpenGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitOpenGL() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 0), align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i32, i32* @qtrue, align 4
  %6 = call i32 @GLimp_Init(i32 %5)
  %7 = call i32 (...) @GLimp_InitExtraExtensions()
  %8 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %9 = call i32 @qglGetIntegerv(i32 %8, i64* %1)
  %10 = load i64, i64* %1, align 8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 1), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 1), align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 1), align 8
  br label %14

14:                                               ; preds = %13, %4
  br label %15

15:                                               ; preds = %14, %0
  %16 = call i32 (...) @GL_SetDefaultState()
  ret void
}

declare dso_local i32 @GLimp_Init(i32) #1

declare dso_local i32 @GLimp_InitExtraExtensions(...) #1

declare dso_local i32 @qglGetIntegerv(i32, i64*) #1

declare dso_local i32 @GL_SetDefaultState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
