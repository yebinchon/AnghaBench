; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_AddRemap.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_AddRemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, i32, i32 }

@remapCount = common dso_local global i32 0, align 4
@remappedShaders = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_SHADER_REMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddRemap(i8* %0, i8* %1, float %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store float %2, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %38, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @remapCount, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @remappedShaders, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @Q_stricmp(i8* %13, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %12
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @remappedShaders, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcpy(i32 %28, i8* %29)
  %31 = load float, float* %6, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @remappedShaders, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store float %31, float* %36, align 4
  br label %70

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* @remapCount, align 4
  %43 = load i32, i32* @MAX_SHADER_REMAPS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @remappedShaders, align 8
  %47 = load i32, i32* @remapCount, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcpy(i32 %51, i8* %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @remappedShaders, align 8
  %55 = load i32, i32* @remapCount, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strcpy(i32 %59, i8* %60)
  %62 = load float, float* %6, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @remappedShaders, align 8
  %64 = load i32, i32* @remapCount, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store float %62, float* %67, align 4
  %68 = load i32, i32* @remapCount, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @remapCount, align 4
  br label %70

70:                                               ; preds = %22, %45, %41
  ret void
}

declare dso_local i64 @Q_stricmp(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
