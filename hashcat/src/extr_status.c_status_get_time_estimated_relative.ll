; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_time_estimated_relative.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_time_estimated_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.tm = type { i32 }

@HCBUFSIZ_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ETA_RELATIVE_MAX_EXCEEDED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s; Runtime limited: %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s; Runtime limit exceeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_time_estimated_relative(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca %struct.tm, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca %struct.tm, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %3, align 8
  %17 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %18 = call i64 @hcmalloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = call i32 @status_get_sec_etc(%struct.TYPE_7__* %20)
  store i32 %21, i32* %5, align 4
  %22 = call %struct.tm* @gmtime_r(i32* %5, %struct.tm* %7)
  store %struct.tm* %22, %struct.tm** %6, align 8
  %23 = load %struct.tm*, %struct.tm** %6, align 8
  %24 = icmp eq %struct.tm* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %28 = load i8*, i8** @ETA_RELATIVE_MAX_EXCEEDED, align 8
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.tm*, %struct.tm** %6, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %34 = call i32 @format_timer_display(%struct.tm* %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = call i32 @get_runtime_left(%struct.TYPE_7__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %10, align 4
  %49 = call %struct.tm* @gmtime_r(i32* %10, %struct.tm* %12)
  store %struct.tm* %49, %struct.tm** %11, align 8
  %50 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %51 = call i64 @hcmalloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %13, align 8
  %53 = load %struct.tm*, %struct.tm** %11, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %56 = call i32 @format_timer_display(%struct.tm* %53, i8* %54, i32 %55)
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @free(i8* %62)
  br label %69

64:                                               ; preds = %40
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @HCBUFSIZ_TINY, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %65, i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %64, %47
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %69, %35
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @status_get_sec_etc(%struct.TYPE_7__*) #1

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @format_timer_display(%struct.tm*, i8*, i32) #1

declare dso_local i32 @get_runtime_left(%struct.TYPE_7__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
