; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_iport_close.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_iport_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i8*)*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32, i64, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Internal iport mismatch?\00", align 1
@IWDP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_iport_close(%struct.TYPE_14__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_16__**, align 8
  %11 = alloca %struct.TYPE_16__**, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @ht_get_value(i32 %22, i8* %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %9, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = icmp ne %struct.TYPE_18__* %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)** %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 %33(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %3, align 4
  br label %116

36:                                               ; preds = %2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ht_values(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_16__**
  store %struct.TYPE_16__** %41, %struct.TYPE_16__*** %10, align 8
  %42 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__** %42, %struct.TYPE_16__*** %11, align 8
  br label %43

43:                                               ; preds = %64, %36
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = icmp ne %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 %56(%struct.TYPE_14__* %57, i64 %61)
  br label %63

63:                                               ; preds = %53, %47
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %65, i32 1
  store %struct.TYPE_16__** %66, %struct.TYPE_16__*** %11, align 8
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  %69 = call i32 @free(%struct.TYPE_16__** %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ht_clear(i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %12, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %78 = icmp ne %struct.TYPE_17__* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %67
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = call i32 @iwdp_log_disconnect(%struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 %93(%struct.TYPE_14__* %94, i64 %97)
  br label %99

99:                                               ; preds = %90, %79
  br label %100

100:                                              ; preds = %99, %67
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  store i32 -1, i32* %107, align 8
  br label %114

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @ht_remove(i32 %109, i8* %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = call i32 @iwdp_iport_free(%struct.TYPE_18__* %112)
  br label %114

114:                                              ; preds = %108, %105
  %115 = load i32, i32* @IWDP_SUCCESS, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %30
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ht_get_value(i32, i8*) #1

declare dso_local i64 @ht_values(i32) #1

declare dso_local i32 @free(%struct.TYPE_16__**) #1

declare dso_local i32 @ht_clear(i32) #1

declare dso_local i32 @iwdp_log_disconnect(%struct.TYPE_18__*) #1

declare dso_local i32 @ht_remove(i32, i8*) #1

declare dso_local i32 @iwdp_iport_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
