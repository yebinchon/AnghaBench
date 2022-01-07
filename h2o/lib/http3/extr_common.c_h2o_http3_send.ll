; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_h2o_http3_send.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_h2o_http3_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_11__ = type { {}* }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32*)* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"quicly_send returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_http3_send(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca [16 x i32*], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  br label %8

8:                                                ; preds = %99, %1
  store i64 16, i64* %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds [16 x i32*], [16 x i32*]* %4, i64 0, i64 0
  %13 = call i32 @quicly_send(i32 %11, i32** %12, i64* %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %93 [
    i32 0, label %15
    i32 128, label %84
  ]

15:                                               ; preds = %8
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %51, %15
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [16 x i32*], [16 x i32*]* %4, i64 0, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @h2o_http3_send_datagram(%struct.TYPE_14__* %23, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %54

30:                                               ; preds = %20
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds [16 x i32*], [16 x i32*]* %4, i64 0, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 %39(%struct.TYPE_13__* %46, i32* %49)
  br label %51

51:                                               ; preds = %30
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %16

54:                                               ; preds = %29, %16
  br label %55

55:                                               ; preds = %80, %54
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds [16 x i32*], [16 x i32*]* %4, i64 0, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 %68(%struct.TYPE_13__* %75, i32* %78)
  br label %80

80:                                               ; preds = %59
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %55

83:                                               ; preds = %55
  br label %98

84:                                               ; preds = %8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = bitcast {}** %88 to i32 (%struct.TYPE_12__*)**
  %90 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = call i32 %90(%struct.TYPE_12__* %91)
  store i32 0, i32* %2, align 4
  br label %105

93:                                               ; preds = %8
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = call i32 (...) @abort() #3
  unreachable

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %5, align 8
  %101 = icmp eq i64 %100, 16
  br i1 %101, label %8, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = call i32 @h2o_http3_schedule_timer(%struct.TYPE_12__* %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %84
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @quicly_send(i32, i32**, i64*) #1

declare dso_local i32 @h2o_http3_send_datagram(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @h2o_http3_schedule_timer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
