; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_outfile.c_build_crackpos.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_outfile.c_build_crackpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@ATTACK_KERN_STRAIGHT = common dso_local global i64 0, align 8
@ATTACK_KERN_COMBI = common dso_local global i64 0, align 8
@ATTACK_MODE_BF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_crackpos(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %10, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %11, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %12, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %13, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %16, align 8
  br label %116

47:                                               ; preds = %4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ATTACK_KERN_STRAIGHT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %16, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %16, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = mul nsw i64 %60, %59
  store i64 %61, i64* %16, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %16, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %16, align 8
  br label %115

69:                                               ; preds = %47
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ATTACK_KERN_COMBI, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %16, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = mul nsw i64 %82, %81
  store i64 %83, i64* %16, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %16, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %16, align 8
  br label %114

91:                                               ; preds = %69
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ATTACK_MODE_BF, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %16, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %16, align 8
  %105 = mul nsw i64 %104, %103
  store i64 %105, i64* %16, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* %16, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %16, align 8
  br label %113

113:                                              ; preds = %97, %91
  br label %114

114:                                              ; preds = %113, %75
  br label %115

115:                                              ; preds = %114, %53
  br label %116

116:                                              ; preds = %115, %45
  %117 = load i64, i64* %16, align 8
  %118 = load i64*, i64** %8, align 8
  store i64 %117, i64* %118, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
