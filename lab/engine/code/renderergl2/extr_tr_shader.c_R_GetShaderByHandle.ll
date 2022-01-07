; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_R_GetShaderByHandle.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_R_GetShaderByHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*, i64)* }
%struct.TYPE_3__ = type { i64, i32**, i32* }

@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"R_GetShaderByHandle: out of range hShader '%d'\0A\00", align 1
@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @R_GetShaderByHandle(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %8 = load i32, i32* @PRINT_WARNING, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i32 %7(i32 %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 2), align 8
  store i32* %11, i32** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %18 = load i32, i32* @PRINT_WARNING, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32 %17(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 2), align 8
  store i32* %21, i32** %2, align 8
  br label %27

22:                                               ; preds = %12
  %23 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 1), align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %2, align 8
  br label %27

27:                                               ; preds = %22, %16, %6
  %28 = load i32*, i32** %2, align 8
  ret i32* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
