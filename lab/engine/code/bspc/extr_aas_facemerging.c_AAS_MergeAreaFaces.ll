; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_facemerging.c_AAS_MergeAreaFaces.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_facemerging.c_AAS_MergeAreaFaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_7__** }

@.str = private unnamed_addr constant [21 x i8] c"AAS_MergeAreaFaces\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%6d face merges\00", align 1
@tmpaasworld = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%6d face merges\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_MergeAreaFaces() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %1, align 4
  %9 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %1, align 4
  %11 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tmpaasworld, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tmpaasworld, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  br label %14

14:                                               ; preds = %90, %0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %94

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %90

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %7, align 8
  br label %27

27:                                               ; preds = %80, %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %88

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = icmp ne %struct.TYPE_8__* %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %8, align 8
  br label %44

44:                                               ; preds = %66, %30
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = icmp ne %struct.TYPE_8__* %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = call i64 @AAS_TryMergeFaces(%struct.TYPE_7__* %54, %struct.TYPE_7__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = call i32 @AAS_CheckArea(%struct.TYPE_8__* %63)
  br label %74

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %8, align 8
  br label %44

74:                                               ; preds = %58, %44
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %5, align 8
  br label %88

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %7, align 8
  br label %27

88:                                               ; preds = %77, %27
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %6, align 8
  br label %90

90:                                               ; preds = %88, %22
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %5, align 8
  br label %14

94:                                               ; preds = %14
  %95 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* %1, align 4
  %97 = call i32 (i8*, ...) @Log_Write(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  ret void
}

declare dso_local i32 @Log_Write(i8*, ...) #1

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i64 @AAS_TryMergeFaces(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @AAS_CheckArea(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
