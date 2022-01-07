; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_terminal.c_status_benchmark.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_terminal.c_status_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"Speed.#%d.........: %9sH/s (%0.2fms) @ Accel:%d Loops:%d Thr:%d Vec:%d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Speed.#*.........: %9sH/s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_benchmark(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = call i32 @status_benchmark_machine_readable(%struct.TYPE_15__* %15)
  br label %95

17:                                               ; preds = %1
  %18 = call i64 @hcmalloc(i32 24)
  %19 = inttoptr i64 %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %4, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @hashcat_get_status(%struct.TYPE_15__* %20, %struct.TYPE_14__* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = call i32 @hcfree(%struct.TYPE_14__* %25)
  br label %95

27:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %75, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i64 %39
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %6, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %75

46:                                               ; preds = %34
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %75

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @event_log_info(%struct.TYPE_15__* %53, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %52, %51, %45
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %28

78:                                               ; preds = %28
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @event_log_info(%struct.TYPE_15__* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = call i32 @status_status_destroy(%struct.TYPE_15__* %90, %struct.TYPE_14__* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = call i32 @hcfree(%struct.TYPE_14__* %93)
  br label %95

95:                                               ; preds = %89, %24, %14
  ret void
}

declare dso_local i32 @status_benchmark_machine_readable(%struct.TYPE_15__*) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @hashcat_get_status(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @hcfree(%struct.TYPE_14__*) #1

declare dso_local i32 @event_log_info(%struct.TYPE_15__*, i8*, i32, ...) #1

declare dso_local i32 @status_status_destroy(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
