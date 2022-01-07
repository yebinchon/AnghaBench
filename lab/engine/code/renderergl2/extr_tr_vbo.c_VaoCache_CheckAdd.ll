; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_VaoCache_CheckAdd.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_VaoCache_CheckAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@vc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@vcq = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@VAOCACHE_MAX_SURFACES = common dso_local global i64 0, align 8
@VAOCACHE_MAX_BATCHES = common dso_local global i64 0, align 8
@VAOCACHE_QUEUE_MAX_SURFACES = common dso_local global i64 0, align 8
@VAOCACHE_QUEUE_MAX_VERTEXES = common dso_local global i32 0, align 4
@VAOCACHE_QUEUE_MAX_INDEXES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VaoCache_CheckAdd(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc, i32 0, i32 4), align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc, i32 0, i32 0), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vcq, i32 0, i32 0), align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = icmp slt i64 %23, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %5
  %33 = load i32, i32* @qtrue, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @qtrue, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @qtrue, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %5
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc, i32 0, i32 4), align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc, i32 0, i32 1), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vcq, i32 0, i32 1), align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = icmp slt i64 %42, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load i32, i32* @qtrue, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @qtrue, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %39
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc, i32 0, i32 2), align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vcq, i32 0, i32 2), align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @VAOCACHE_MAX_SURFACES, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @qtrue, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @qtrue, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vc, i32 0, i32 3), align 8
  %69 = load i64, i64* @VAOCACHE_MAX_BATCHES, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @qtrue, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @qtrue, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vcq, i32 0, i32 2), align 8
  %78 = load i64, i64* @VAOCACHE_QUEUE_MAX_SURFACES, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @qtrue, align 4
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* @VAOCACHE_QUEUE_MAX_VERTEXES, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vcq, i32 0, i32 0), align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %86, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @qtrue, align 4
  %94 = load i32*, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %83
  %96 = load i32, i32* @VAOCACHE_QUEUE_MAX_INDEXES, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vcq, i32 0, i32 1), align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %98, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @qtrue, align 4
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %95
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
