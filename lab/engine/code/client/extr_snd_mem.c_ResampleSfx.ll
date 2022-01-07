; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mem.c_ResampleSfx.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mem.c_ResampleSfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_6__* }

@dma = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32)* @ResampleSfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ResampleSfx(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_6__*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sitofp i32 %26 to float
  %28 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dma, i32 0, i32 0), align 4
  %29 = fdiv float %27, %28
  store float %29, float* %17, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sitofp i32 %30 to float
  %32 = load float, float* %17, align 4
  %33 = fdiv float %31, %32
  %34 = fptosi float %33 to i32
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %35 = load float, float* %17, align 4
  %36 = fmul float %35, 2.560000e+02
  %37 = load i32, i32* %9, align 4
  %38 = sitofp i32 %37 to float
  %39 = fmul float %36, %38
  %40 = fptosi float %39 to i32
  store i32 %40, i32* %22, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %24, align 8
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %124, %7
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %127

48:                                               ; preds = %44
  %49 = load i32, i32* %21, align 4
  %50 = ashr i32 %49, 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %21, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %120, %48
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %123

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32*, i32** %13, align 8
  %67 = bitcast i32* %66 to i16*
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %67, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  store i32 %74, i32* %20, align 4
  br label %87

75:                                               ; preds = %62
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %19, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = trunc i32 %82 to i8
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %84, 128
  %86 = shl i32 %85, 8
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %75, %65
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %92, %94
  store i32 %95, i32* %23, align 4
  %96 = load i32, i32* %23, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %87
  %99 = call %struct.TYPE_6__* (...) @SND_malloc()
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %25, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %101 = icmp eq %struct.TYPE_6__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %105, align 8
  br label %110

106:                                              ; preds = %98
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store %struct.TYPE_6__* %107, %struct.TYPE_6__** %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %24, align 8
  br label %112

112:                                              ; preds = %110, %87
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %23, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %58

123:                                              ; preds = %58
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %44

127:                                              ; preds = %44
  %128 = load i32, i32* %15, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_6__* @SND_malloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
