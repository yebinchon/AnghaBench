; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashes.c_hashes_destroy.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashes.c_hashes_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__** }
%struct.TYPE_10__ = type { i32 }

@OPTS_TYPE_HASH_COPY = common dso_local global i32 0, align 4
@OPTS_TYPE_HASH_SPLIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashes_destroy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 14
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %19 = call i32 @hcfree(%struct.TYPE_12__** %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 13
  %22 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %21, align 8
  %23 = call i32 @hcfree(%struct.TYPE_12__** %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 12
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %25, align 8
  %27 = call i32 @hcfree(%struct.TYPE_12__** %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %29, align 8
  %31 = call i32 @hcfree(%struct.TYPE_12__** %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 10
  %34 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %33, align 8
  %35 = call i32 @hcfree(%struct.TYPE_12__** %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %47, label %40

40:                                               ; preds = %1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OPTS_TYPE_HASH_COPY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %108

47:                                               ; preds = %40, %1
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %104, %47
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 9
  %62 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %62, i64 %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %66, align 8
  %68 = call i32 @hcfree(%struct.TYPE_12__** %67)
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @OPTS_TYPE_HASH_COPY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 9
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %79, i64 %80
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %83, align 8
  %85 = call i32 @hcfree(%struct.TYPE_12__** %84)
  br label %86

86:                                               ; preds = %76, %69
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @OPTS_TYPE_HASH_SPLIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 9
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %96, i64 %97
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %100, align 8
  %102 = call i32 @hcfree(%struct.TYPE_12__** %101)
  br label %103

103:                                              ; preds = %93, %86
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %48

107:                                              ; preds = %48
  br label %108

108:                                              ; preds = %107, %40
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 9
  %111 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %110, align 8
  %112 = call i32 @hcfree(%struct.TYPE_12__** %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 8
  %115 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %114, align 8
  %116 = call i32 @hcfree(%struct.TYPE_12__** %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %118, align 8
  %120 = call i32 @hcfree(%struct.TYPE_12__** %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 6
  %123 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %122, align 8
  %124 = call i32 @hcfree(%struct.TYPE_12__** %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %126, align 8
  %128 = call i32 @hcfree(%struct.TYPE_12__** %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %130, align 8
  %132 = call i32 @hcfree(%struct.TYPE_12__** %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %134, align 8
  %136 = call i32 @hcfree(%struct.TYPE_12__** %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %138, align 8
  %140 = call i32 @hcfree(%struct.TYPE_12__** %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %142, align 8
  %144 = call i32 @hcfree(%struct.TYPE_12__** %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = call i32 @memset(%struct.TYPE_9__* %145, i32 0, i32 120)
  ret void
}

declare dso_local i32 @hcfree(%struct.TYPE_12__**) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
