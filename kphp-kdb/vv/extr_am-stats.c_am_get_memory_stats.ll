; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_am_get_memory_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_am_get_memory_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64 }

@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_OVERALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"/proc/meminfo: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%31s%lld%31s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"MemFree:\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SwapTotal:\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SwapFree:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @am_get_memory_stats(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i64], align 16
  %7 = alloca [16384 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %124

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call i32 @memset(%struct.TYPE_4__* %17, i32 0, i32 56)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = call i32 (...) @getpid()
  %25 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %26 = call i64 @am_get_memory_usage(i32 %24, i64* %25, i32 6)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %124

29:                                               ; preds = %23
  %30 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %29, %16
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AM_GET_MEMORY_USAGE_OVERALL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %123

47:                                               ; preds = %42
  %48 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %49 = call i64 @read_whole_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %48, i32 16384)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %124

52:                                               ; preds = %47
  %53 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %54 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 0, i32* %12, align 4
  %55 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %56 = call i8* @strtok(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %107, %52
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %109

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %64 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %62, i64* %11, i8* %63)
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %106

66:                                               ; preds = %60
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = shl i64 %75, 10
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %105

81:                                               ; preds = %70
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %11, align 8
  %87 = shl i64 %86, 10
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, 2
  store i32 %91, i32* %12, align 4
  br label %104

92:                                               ; preds = %81
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %11, align 8
  %98 = shl i64 %97, 10
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, 4
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %96, %92
  br label %104

104:                                              ; preds = %103, %85
  br label %105

105:                                              ; preds = %104, %74
  br label %106

106:                                              ; preds = %105, %66, %60
  br label %107

107:                                              ; preds = %106
  %108 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %108, i8** %8, align 8
  br label %57

109:                                              ; preds = %57
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 7
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 -1, i32* %3, align 4
  br label %124

113:                                              ; preds = %109
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %113, %42
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %112, %51, %28, %15
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @am_get_memory_usage(i32, i64*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @read_whole_file(i8*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i64*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
