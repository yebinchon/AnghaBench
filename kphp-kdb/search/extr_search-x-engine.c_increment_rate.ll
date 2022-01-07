; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_increment_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_increment_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@increment_rate.value = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"p = %d, *key=%c\0A\00", align 1
@MAX_RATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ate%d_%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ate%d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"incr: item_id=%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i64)* @increment_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @increment_rate(%struct.connection* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @get_sorting_mode(i8 signext %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = sext i32 %20 to i64
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24)
  %26 = load i32, i32* %16, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @MAX_RATES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %12, i32* %13)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = shl i64 %45, 32
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  store i64 %49, i64* %11, align 8
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %43, %40, %37
  br label %68

53:                                               ; preds = %32
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %28, %4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  switch i32 %75, label %84 [
    i32 1, label %76
    i32 2, label %80
  ]

76:                                               ; preds = %74
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @do_incr_rate(i64 %77, i64 %78)
  store i32 %79, i32* %15, align 4
  br label %89

80:                                               ; preds = %74
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @do_incr_rate2(i64 %81, i64 %82)
  store i32 %83, i32* %15, align 4
  br label %89

84:                                               ; preds = %74
  %85 = load i64, i64* %11, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @do_incr_rate_new(i64 %85, i32 %86, i64 %87)
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %84, %80, %76
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @get_single_rate(i32* %10, i64 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store i32 -1, i32* %5, align 4
  br label %109

98:                                               ; preds = %92
  %99 = load %struct.connection*, %struct.connection** %6, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @increment_rate.value, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = call i32 @write_out(i32* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @increment_rate.value, i64 0, i64 0), i32 %102)
  store i32 0, i32* %5, align 4
  br label %109

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104, %69
  %106 = load %struct.connection*, %struct.connection** %6, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 0
  %108 = call i32 @write_out(i32* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %98, %97
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @get_sorting_mode(i8 signext) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @do_incr_rate(i64, i64) #1

declare dso_local i32 @do_incr_rate2(i64, i64) #1

declare dso_local i32 @do_incr_rate_new(i64, i32, i64) #1

declare dso_local i32 @get_single_rate(i32*, i64, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
