; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_store.c_AAS_InitMaxAAS.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_store.c_AAS_InitMaxAAS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32 }

@tmpaasworld = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@AAS_MAX_BBOXES = common dso_local global i32 0, align 4
@max_aas = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@nummapplanes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_InitMaxAAS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tmpaasworld, i32 0, i32 2), align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  br label %7

7:                                                ; preds = %28, %0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %17, %10
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %4, align 8
  br label %7

32:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tmpaasworld, i32 0, i32 1), align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %5, align 8
  br label %34

34:                                               ; preds = %40, %32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %5, align 8
  br label %34

44:                                               ; preds = %34
  %45 = load i32, i32* @AAS_MAX_BBOXES, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 13), align 4
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 0), align 8
  %48 = load i32, i32* @nummapplanes, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 12), align 8
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 1), align 4
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 %52, 3
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 2), align 8
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 10
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 3), align 4
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 10
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 4), align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 10
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 5), align 4
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 10
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 11), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tmpaasworld, i32 0, i32 0), align 8
  %64 = call i64 @AAS_CountTmpNodes(i32 %63)
  %65 = add nsw i64 %64, 10
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @max_aas, i32 0, i32 7), align 8
  ret void
}

declare dso_local i64 @AAS_CountTmpNodes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
