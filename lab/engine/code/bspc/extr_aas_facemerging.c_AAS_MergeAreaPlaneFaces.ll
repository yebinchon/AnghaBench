; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_facemerging.c_AAS_MergeAreaPlaneFaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_facemerging.c_AAS_MergeAreaPlaneFaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__** }

@.str = private unnamed_addr constant [22 x i8] c"AAS_MergePlaneFaces\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%6d plane face merges\00", align 1
@tmpaasworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%6d plane face merges\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_MergeAreaPlaneFaces() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %1, align 4
  %8 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tmpaasworld, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  br label %10

10:                                               ; preds = %63, %0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %63

22:                                               ; preds = %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %5, align 8
  br label %26

26:                                               ; preds = %54, %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = icmp ne %struct.TYPE_7__* %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @AAS_CanMergePlaneFaces(%struct.TYPE_7__* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %29
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @AAS_MergePlaneFaces(%struct.TYPE_7__* %43, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %4, align 8
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %62

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %5, align 8
  br label %26

62:                                               ; preds = %42, %26
  br label %63

63:                                               ; preds = %62, %21
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %3, align 8
  br label %10

65:                                               ; preds = %10
  %66 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* %1, align 4
  %68 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  ret void
}

declare dso_local i32 @Log_Write(i8*, ...) #1

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i64 @AAS_CanMergePlaneFaces(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @AAS_MergePlaneFaces(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
