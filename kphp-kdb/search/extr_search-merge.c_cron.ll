; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_cron.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_cron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.gather_data = type { i64, %struct.TYPE_7__*, %struct.gather_data* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CSN = common dso_local global i32 0, align 4
@CS = common dso_local global %struct.TYPE_6__* null, align 8
@now = common dso_local global i64 0, align 8
@GDH = common dso_local global %struct.gather_data zeroinitializer, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"gather of master connection %d: TIMEOUT (now=%d, timeout=%d), waking up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cron() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.gather_data*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @CSN, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CS, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %8
  %17 = load i64, i64* @now, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CS, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %17, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CS, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  store i32 %31, i32* %2, align 4
  %33 = load i64, i64* @now, align 8
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %34, 10
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 5
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %33, %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CS, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CS, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = call i32 @create_client(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %25, %16, %8
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %4

54:                                               ; preds = %4
  %55 = load %struct.gather_data*, %struct.gather_data** getelementptr inbounds (%struct.gather_data, %struct.gather_data* @GDH, i32 0, i32 2), align 8
  store %struct.gather_data* %55, %struct.gather_data** %3, align 8
  br label %56

56:                                               ; preds = %102, %54
  %57 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %58 = icmp ne %struct.gather_data* %57, @GDH
  br i1 %58, label %59, label %106

59:                                               ; preds = %56
  %60 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %61 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = call i32 @assert(%struct.TYPE_7__* %62)
  %64 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %65 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @now, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %59
  %70 = load i64, i64* @verbosity, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, i32* @stderr, align 4
  %74 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %75 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* @now, align 8
  %80 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %81 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %78, i64 %79, i64 %82)
  br label %84

84:                                               ; preds = %72, %69
  %85 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %86 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %84
  %94 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %95 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = call i32 @put_event_into_heap(%struct.TYPE_5__* %98)
  br label %100

100:                                              ; preds = %93, %84
  br label %101

101:                                              ; preds = %100, %59
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.gather_data*, %struct.gather_data** %3, align 8
  %104 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %103, i32 0, i32 2
  %105 = load %struct.gather_data*, %struct.gather_data** %104, align 8
  store %struct.gather_data* %105, %struct.gather_data** %3, align 8
  br label %56

106:                                              ; preds = %56
  ret void
}

declare dso_local i32 @create_client(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @put_event_into_heap(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
