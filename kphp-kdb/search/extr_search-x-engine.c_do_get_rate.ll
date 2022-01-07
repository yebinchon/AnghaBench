; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_do_get_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_do_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@do_get_rate.value = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"ate%d_%d \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ate%d \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"p = %d, *key = %c\0A\00", align 1
@MAX_RATES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rates%d_%d \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rates%d \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @do_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_get_rate(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %13)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = shl i64 %28, 32
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  store i64 %32, i64* %11, align 8
  store i32 1, i32* %14, align 4
  br label %33

33:                                               ; preds = %26, %23, %20
  br label %47

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  store i32 1, i32* %14, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %34
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @get_sorting_mode(i8 signext %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8 signext %56)
  %58 = load i32, i32* %15, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %50
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @MAX_RATES, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i64 @get_single_rate(i32* %65, i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.connection*, %struct.connection** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_get_rate.value, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = call i32 @return_one_key(%struct.connection* %71, i8* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_get_rate.value, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %5, align 4
  br label %135

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %60, %50
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %82, %47
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %12, i32* %13)
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = shl i64 %95, 32
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  store i64 %99, i64* %11, align 8
  store i32 1, i32* %14, align 4
  br label %100

100:                                              ; preds = %93, %90, %87
  br label %113

101:                                              ; preds = %83
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %13)
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %11, align 8
  store i32 1, i32* %14, align 4
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %101
  br label %113

113:                                              ; preds = %112, %100
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %118 = load i64, i64* %11, align 8
  %119 = call i64 @get_rates(i32* %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.connection*, %struct.connection** %6, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_get_rate.value, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 %131)
  %133 = call i32 @return_one_key(%struct.connection* %122, i8* %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_get_rate.value, i64 0, i64 0), i32 %132)
  store i32 %133, i32* %5, align 4
  br label %135

134:                                              ; preds = %116, %113
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %121, %70
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @get_sorting_mode(i8 signext) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i8 signext) #1

declare dso_local i64 @get_single_rate(i32*, i64, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @get_rates(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
