; ModuleID = '/home/carl/AnghaBench/htop/extr_CPUMeter.c_DualColCPUsMeter_draw.c'
source_filename = "/home/carl/AnghaBench/htop/extr_CPUMeter.c_DualColCPUsMeter_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 (%struct.TYPE_10__*, i32, i32, i32)*, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, i32)* @DualColCPUsMeter_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DualColCPUsMeter_draw(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %20, %struct.TYPE_10__*** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 2, i32 0
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = call i32 @AllCPUsMeter_getRange(%struct.TYPE_10__* %31, i32* %10, i32* %11)
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %72, %4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_10__*, i32, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  %60 = call i32 %48(%struct.TYPE_10__* %53, i32 %54, i32 %55, i32 %59)
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %61, i64 %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %41
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %37

75:                                               ; preds = %37
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %121, %75
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %124

82:                                               ; preds = %78
  %83 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %83, i64 %85
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_10__*, i32, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32)** %88, align 8
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sdiv i32 %97, 2
  %99 = add nsw i32 %95, %98
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %12, align 4
  %102 = sdiv i32 %101, 2
  %103 = add nsw i32 %100, %102
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sdiv i32 %107, 2
  %109 = call i32 %89(%struct.TYPE_10__* %94, i32 %103, i32 %104, i32 %108)
  %110 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %110, i64 %112
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %82
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %78

124:                                              ; preds = %78
  ret void
}

declare dso_local i32 @AllCPUsMeter_getRange(%struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
