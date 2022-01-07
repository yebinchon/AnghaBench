; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_dag.c_replace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_dag.c_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_12__**, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i64 }

@INDIR = common dso_local global i64 0, align 8
@ADDRL = common dso_local global i64 0, align 8
@ADDRG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @replace(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = icmp ne %struct.TYPE_11__* %3, null
  br i1 %4, label %5, label %126

5:                                                ; preds = %1
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @generic(i32 %8)
  %10 = load i64, i64* @INDIR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %126

12:                                               ; preds = %5
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %15, i64 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @generic(i32 %19)
  %21 = load i64, i64* @ADDRL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %126

23:                                               ; preds = %12
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %26, i64 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %30, i64 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %126

36:                                               ; preds = %23
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %43, i64 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %126

51:                                               ; preds = %36
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %54, i64 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %58, i64 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %2, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @generic(i32 %67)
  %69 = load i64, i64* @INDIR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %51
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @isaddrop(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %87, i64 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %98, i64 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = call %struct.TYPE_11__* @newnode(i32 %91, %struct.TYPE_11__* null, i32* null, %struct.TYPE_12__* %100)
  %102 = call %struct.TYPE_11__* @newnode(i32 %84, %struct.TYPE_11__* %101, i32* null, %struct.TYPE_12__* null)
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %2, align 8
  br label %123

103:                                              ; preds = %71, %51
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @generic(i32 %106)
  %108 = load i64, i64* @ADDRG, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %116, i64 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = call %struct.TYPE_11__* @newnode(i32 %113, %struct.TYPE_11__* null, i32* null, %struct.TYPE_12__* %118)
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %2, align 8
  br label %122

120:                                              ; preds = %103
  %121 = call i32 @assert(i32 0)
  br label %122

122:                                              ; preds = %120, %110
  br label %123

123:                                              ; preds = %122, %81
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %151

126:                                              ; preds = %36, %23, %12, %5, %1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %128 = icmp ne %struct.TYPE_11__* %127, null
  br i1 %128, label %129, label %150

129:                                              ; preds = %126
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %132, i64 0
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = call %struct.TYPE_11__* @replace(%struct.TYPE_11__* %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %138, i64 0
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %142, i64 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = call %struct.TYPE_11__* @replace(%struct.TYPE_11__* %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %148, i64 1
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %149, align 8
  br label %150

150:                                              ; preds = %129, %126
  br label %151

151:                                              ; preds = %150, %123
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %152
}

declare dso_local i64 @generic(i32) #1

declare dso_local i64 @isaddrop(i32) #1

declare dso_local %struct.TYPE_11__* @newnode(i32, %struct.TYPE_11__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
