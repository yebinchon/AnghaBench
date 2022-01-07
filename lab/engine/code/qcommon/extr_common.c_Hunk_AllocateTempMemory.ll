; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_AllocateTempMemory.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Hunk_AllocateTempMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@s_hunkData = common dso_local global i32* null, align 8
@hunk_temp = common dso_local global %struct.TYPE_6__* null, align 8
@hunk_permanent = common dso_local global %struct.TYPE_7__* null, align 8
@s_hunkTotal = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Hunk_AllocateTempMemory: failed on %i\00", align 1
@hunk_low = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HUNK_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Hunk_AllocateTempMemory(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @s_hunkData, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @Z_Malloc(i32 %9)
  store i8* %10, i8** %2, align 8
  br label %96

11:                                               ; preds = %1
  %12 = call i32 (...) @Hunk_SwapBanks()
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @PAD(i32 %13, i32 8)
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hunk_permanent, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i64, i64* @s_hunkTotal, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %11
  %32 = load i32, i32* @ERR_DROP, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @Com_Error(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %11
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %37 = icmp eq %struct.TYPE_6__* %36, @hunk_low
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32*, i32** @s_hunkData, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %67

51:                                               ; preds = %35
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i32*, i32** @s_hunkData, align 8
  %59 = load i64, i64* @s_hunkTotal, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %51, %38
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ugt i32* %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %67
  %84 = load i8*, i8** %4, align 8
  %85 = bitcast i8* %84 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %5, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 1
  %88 = bitcast %struct.TYPE_5__* %87 to i8*
  store i8* %88, i8** %4, align 8
  %89 = load i32, i32* @HUNK_MAGIC, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i8*, i8** %4, align 8
  store i8* %95, i8** %2, align 8
  br label %96

96:                                               ; preds = %83, %8
  %97 = load i8*, i8** %2, align 8
  ret i8* %97
}

declare dso_local i8* @Z_Malloc(i32) #1

declare dso_local i32 @Hunk_SwapBanks(...) #1

declare dso_local i32 @PAD(i32, i32) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
