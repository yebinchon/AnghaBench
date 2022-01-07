; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawRedFlagStatus.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawRedFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GT_CTF = common dso_local global i64 0, align 8
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@PW_REDFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @CG_DrawRedFlagStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawRedFlagStatus(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %9 = load i64, i64* @GT_CTF, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %13 = load i64, i64* @GT_1FCTF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %17 = load i64, i64* @GT_HARVESTER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  store i32* inttoptr (i64 1 to i32*), i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @trap_R_SetColor(i32* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2, i32 1), align 8
  %35 = call i32 @CG_DrawPic(i32 %24, i32 %27, i32 %30, i32 %33, i64 %34)
  %36 = call i32 @trap_R_SetColor(i32* null)
  br label %37

37:                                               ; preds = %19, %15
  br label %108

38:                                               ; preds = %11, %2
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @CG_DrawPic(i32 %44, i32 %47, i32 %50, i32 %53, i64 %54)
  br label %108

56:                                               ; preds = %38
  %57 = load i32, i32* @PW_REDFLAG, align 4
  %58 = call i32* @BG_FindItemForPowerup(i32 %57)
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %107

61:                                               ; preds = %56
  store i32* inttoptr (i64 1 to i32*), i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @trap_R_SetColor(i32* %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %68 = icmp sle i32 %67, 2
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2, i32 0), align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @CG_DrawPic(i32 %72, i32 %75, i32 %78, i32 %81, i64 %86)
  br label %105

88:                                               ; preds = %66, %61
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2, i32 0), align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @CG_DrawPic(i32 %91, i32 %94, i32 %97, i32 %100, i64 %103)
  br label %105

105:                                              ; preds = %88, %69
  %106 = call i32 @trap_R_SetColor(i32* null)
  br label %107

107:                                              ; preds = %105, %56
  br label %108

108:                                              ; preds = %37, %107, %41
  ret void
}

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i64) #1

declare dso_local i32* @BG_FindItemForPowerup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
