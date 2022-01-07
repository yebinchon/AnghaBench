; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_cluster.c_AAS_CreatePortals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_cluster.c_AAS_CreatePortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@aasworld = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AREACONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@AAS_MAX_PORTALS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"AAS_MAX_PORTALS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_CreatePortals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %37, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 0), align 8
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 3), align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AREACONTENTS_CLUSTERPORTAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %7
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 1), align 8
  %19 = load i64, i64* @AAS_MAX_PORTALS, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @AAS_Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %40

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 2), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %2, align 8
  %27 = load i32, i32* %1, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 1), align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aasworld, i32 0, i32 1), align 8
  br label %36

36:                                               ; preds = %23, %7
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %3

40:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @AAS_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
