; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_RB_CheckOverflow.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_RB_CheckOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i32)* }

@tess = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@SHADER_MAX_INDEXES = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RB_CheckOverflow: verts > MAX (%d > %d)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"RB_CheckOverflow: indices > MAX (%d > %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CheckOverflow(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tess, i32 0, i32 0), align 4
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %5, %6
  %8 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tess, i32 0, i32 1), align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %42

17:                                               ; preds = %10, %2
  %18 = call i32 (...) @RB_EndSurface()
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %24 = load i32, i32* @ERR_DROP, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %27 = call i32 %23(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %34 = load i32, i32* @ERR_DROP, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %37 = call i32 %33(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tess, i32 0, i32 3), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tess, i32 0, i32 2), align 4
  %41 = call i32 @RB_BeginSurface(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %16
  ret void
}

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_BeginSurface(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
