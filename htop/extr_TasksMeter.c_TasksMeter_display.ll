; ModuleID = '/home/carl/AnghaBench/htop/extr_TasksMeter.c_TasksMeter_display.c'
source_filename = "/home/carl/AnghaBench/htop/extr_TasksMeter.c_TasksMeter_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CRT_colors = common dso_local global i32* null, align 8
@METER_VALUE = common dso_local global i64 0, align 8
@METER_TEXT = common dso_local global i64 0, align 8
@PROCESS_THREAD_BASENAME = common dso_local global i64 0, align 8
@PROCESS_THREAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" thr\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" kthr\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@TASKS_RUNNING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c" running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @TasksMeter_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TasksMeter_display(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @xSnprintf(i8* %24, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** @CRT_colors, align 8
  %29 = load i64, i64* @METER_VALUE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %33 = call i32 @RichString_write(i32* %27, i32 %31, i8* %32)
  %34 = load i32*, i32** @CRT_colors, align 8
  %35 = load i64, i64* @METER_VALUE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** @CRT_colors, align 8
  %39 = load i64, i64* @METER_TEXT, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %2
  %47 = load i32*, i32** @CRT_colors, align 8
  %48 = load i64, i64* @PROCESS_THREAD_BASENAME, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** @CRT_colors, align 8
  %52 = load i64, i64* @PROCESS_THREAD, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %46, %2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** @CRT_colors, align 8
  %63 = load i64, i64* @METER_TEXT, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RichString_append(i32* %61, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @xSnprintf(i8* %67, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %78 = call i32 @RichString_append(i32* %75, i32 %76, i8* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @RichString_append(i32* %79, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %60, %55
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** @CRT_colors, align 8
  %90 = load i64, i64* @METER_TEXT, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @RichString_append(i32* %88, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @xSnprintf(i8* %94, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %105 = call i32 @RichString_append(i32* %102, i32 %103, i8* %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @RichString_append(i32* %106, i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %87, %82
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** @CRT_colors, align 8
  %112 = load i64, i64* @METER_TEXT, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @RichString_append(i32* %110, i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %116 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 3
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @xSnprintf(i8* %116, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** @CRT_colors, align 8
  %126 = load i64, i64* @TASKS_RUNNING, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %130 = call i32 @RichString_append(i32* %124, i32 %128, i8* %129)
  %131 = load i32*, i32** %4, align 8
  %132 = load i32*, i32** @CRT_colors, align 8
  %133 = load i64, i64* @METER_TEXT, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @RichString_append(i32* %131, i32 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @RichString_write(i32*, i32, i8*) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
