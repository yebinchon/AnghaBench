; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_recv.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i8*, i32)*, i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32, i8*, i32)* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i8*, i32)* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i8*, i32)* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i8*, i32)* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_18__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_26__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unexpected recv type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_recv(%struct.TYPE_23__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_22__*
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %85 [
    i32 131, label %23
    i32 129, label %35
    i32 128, label %47
    i32 130, label %59
  ]

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_27__*
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %13, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_18__*, i8*, i32)*, i32 (%struct.TYPE_18__*, i8*, i32)** %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 %30(%struct.TYPE_18__* %31, i8* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %92

35:                                               ; preds = %5
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_25__*
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %14, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_21__*, i8*, i32)*, i32 (%struct.TYPE_21__*, i8*, i32)** %41, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 %42(%struct.TYPE_21__* %43, i8* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %92

47:                                               ; preds = %5
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to %struct.TYPE_24__*
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %15, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_20__*, i8*, i32)*, i32 (%struct.TYPE_20__*, i8*, i32)** %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 %54(%struct.TYPE_20__* %55, i8* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %92

59:                                               ; preds = %5
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to %struct.TYPE_26__*
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = load i32 (%struct.TYPE_23__*, i32, i8*, i32)*, i32 (%struct.TYPE_23__*, i32, i8*, i32)** %67, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 %68(%struct.TYPE_23__* %69, i32 %70, i8* %71, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %59
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %78, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 %79(%struct.TYPE_23__* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %59
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %6, align 4
  br label %92

85:                                               ; preds = %5
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_23__*, i8*, i32)*, i32 (%struct.TYPE_23__*, i8*, i32)** %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 %88(%struct.TYPE_23__* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %90)
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %85, %83, %47, %35, %23
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
