; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_gather_heap_advance.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_gather_heap_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@Q_order = common dso_local global i32 0, align 4
@Q_DOUBLE = common dso_local global i32 0, align 4
@GH_N = common dso_local global i32 0, align 4
@GH = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gather_heap_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_heap_advance() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @Q_order, align 4
  %7 = load i32, i32* @Q_DOUBLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 2, i32 1
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @GH_N, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %117

15:                                               ; preds = %0
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %1, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %15
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %31 = load i32, i32* @GH_N, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @GH_N, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %1, align 8
  %36 = load i32, i32* @GH_N, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %117

39:                                               ; preds = %29
  br label %54

40:                                               ; preds = %15
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @assert(i32 0)
  br label %51

51:                                               ; preds = %49, %40
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %53 = call i32 @load_heap_v(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %51, %39
  store i32 1, i32* %3, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %54, %100
  %59 = load i32, i32* %3, align 4
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @GH_N, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %111

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @GH_N, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %77, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %69, %65
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ule i64 %90, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %111

100:                                              ; preds = %89
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %101, i64 %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 %108
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %109, align 8
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %3, align 4
  br label %58

111:                                              ; preds = %99, %64
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %115
  store %struct.TYPE_4__* %112, %struct.TYPE_4__** %116, align 8
  br label %117

117:                                              ; preds = %111, %38, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
