; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitPlanes.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@mapplanes = common dso_local global %struct.TYPE_5__* null, align 8
@nummapplanes = common dso_local global i32 0, align 4
@bspPlanes = common dso_local global %struct.TYPE_6__* null, align 8
@numBSPPlanes = common dso_local global i64 0, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%9d BSP planes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitPlanes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mapplanes, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %27, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @nummapplanes, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bspPlanes, align 8
  %11 = load i64, i64* @numBSPPlanes, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %11
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @VectorCopy(i32 %15, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* @numBSPPlanes, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @numBSPPlanes, align 8
  br label %27

27:                                               ; preds = %9
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %3, align 8
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* @SYS_VRB, align 4
  %34 = load i64, i64* @numBSPPlanes, align 8
  %35 = call i32 @Sys_FPrintf(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %34)
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
