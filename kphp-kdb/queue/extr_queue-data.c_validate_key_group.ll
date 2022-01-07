; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_validate_key_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_validate_key_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__**, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@KEY_LEN = common dso_local global i32 0, align 4
@LOG_WARNINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed : 2. kn %% KEY_LEN : %d %% %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Failed : 2. kn != req_ts_n || kn <= 0 : %d != %d || %d <= 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed : 2. Key %d == key %d\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @validate_key_group(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @KEY_LEN, align 4
  %22 = srem i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load i32, i32* @LOG_WARNINGS, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @KEY_LEN, align 4
  %28 = call i32 (i32, i32, i8*, i32, i32, ...) @dl_log_add(i32 %25, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %157

29:                                               ; preds = %6
  %30 = load i32, i32* @KEY_LEN, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sdiv i32 %31, %30
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36, %29
  %40 = load i32, i32* @LOG_WARNINGS, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 (i32, i32, i8*, i32, i32, ...) @dl_log_add(i32 %40, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %157

45:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %83, %45
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %79, %50
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* @KEY_LEN, align 4
  %60 = load i32, i32* %15, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @KEY_LEN, align 4
  %66 = load i32, i32* %16, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i32, i32* @KEY_LEN, align 4
  %71 = call i32 @memcmp(i8* %63, i8* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %57
  %74 = load i32, i32* @LOG_WARNINGS, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 (i32, i32, i8*, i32, i32, ...) @dl_log_add(i32 %74, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %57
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %53

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %46

86:                                               ; preds = %46
  %87 = load i32, i32* %14, align 4
  %88 = call %struct.TYPE_5__* @qkey_group_alloc(i32 %87)
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %17, align 8
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %152, %86
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %155

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* @KEY_LEN, align 4
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call %struct.TYPE_6__* @validate_key(i8* %99, i32 %100, i32 %101, i32 %106, i32 %107, i32* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %117, i64 %119
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %120, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %123, i64 %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = icmp ne %struct.TYPE_6__* %127, null
  br i1 %128, label %129, label %151

129:                                              ; preds = %93
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %132, i64 %134
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %129
  %141 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %142 = call i32 @get_utime(i32 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %145, i64 %147
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 %142, i32* %150, align 4
  br label %151

151:                                              ; preds = %140, %129, %93
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %89

155:                                              ; preds = %89
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %7, align 8
  br label %157

157:                                              ; preds = %155, %39, %24
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %158
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dl_log_add(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @qkey_group_alloc(i32) #1

declare dso_local %struct.TYPE_6__* @validate_key(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @get_utime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
