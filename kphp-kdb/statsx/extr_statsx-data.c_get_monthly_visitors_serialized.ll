; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_visitors_serialized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_visitors_serialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i64, i32, %struct.counter* }

@Q_raw = common dso_local global i64 0, align 8
@COUNTER_TYPE_MONTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d,%d,%d\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%d:%d:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_monthly_visitors_serialized(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.counter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @load_counter(i64 %18, i32 0, i32 1)
  %20 = icmp eq i32 %19, -2
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %178

22:                                               ; preds = %2
  %23 = load i64, i64* @Q_raw, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @get_monthly_visitors_serialized_raw(i8* %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %178

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call %struct.counter* @get_counter_f(i64 %31, i32 0)
  store %struct.counter* %32, %struct.counter** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %167, %29
  %34 = load %struct.counter*, %struct.counter** %7, align 8
  %35 = icmp ne %struct.counter* %34, null
  br i1 %35, label %36, label %171

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load %struct.counter*, %struct.counter** %7, align 8
  %41 = getelementptr inbounds %struct.counter, %struct.counter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @COUNTER_TYPE_MONTH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %39
  %47 = load %struct.counter*, %struct.counter** %7, align 8
  %48 = getelementptr inbounds %struct.counter, %struct.counter* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load %struct.counter*, %struct.counter** %7, align 8
  %53 = getelementptr inbounds %struct.counter, %struct.counter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @get_month(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.counter*, %struct.counter** %7, align 8
  %57 = getelementptr inbounds %struct.counter, %struct.counter* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @get_year(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  store i32 1, i32* %8, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.counter*, %struct.counter** %7, align 8
  %64 = getelementptr inbounds %struct.counter, %struct.counter* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %66, i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %51, %46, %39, %36
  %73 = load i32, i32* @verbosity, align 4
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load %struct.counter*, %struct.counter** %7, align 8
  %77 = getelementptr inbounds %struct.counter, %struct.counter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @COUNTER_TYPE_MONTH, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.counter*, %struct.counter** %7, align 8
  %84 = getelementptr inbounds %struct.counter, %struct.counter* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @get_month(i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.counter*, %struct.counter** %7, align 8
  %88 = getelementptr inbounds %struct.counter, %struct.counter* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @get_year(i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.counter*, %struct.counter** %7, align 8
  %95 = getelementptr inbounds %struct.counter, %struct.counter* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %82, %75
  br label %99

99:                                               ; preds = %98, %72
  %100 = load %struct.counter*, %struct.counter** %7, align 8
  %101 = getelementptr inbounds %struct.counter, %struct.counter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @COUNTER_TYPE_MONTH, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %167

106:                                              ; preds = %99
  %107 = load %struct.counter*, %struct.counter** %7, align 8
  %108 = getelementptr inbounds %struct.counter, %struct.counter* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %167

111:                                              ; preds = %106
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load %struct.counter*, %struct.counter** %7, align 8
  %116 = getelementptr inbounds %struct.counter, %struct.counter* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @get_month(i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load %struct.counter*, %struct.counter** %7, align 8
  %120 = getelementptr inbounds %struct.counter, %struct.counter* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @get_year(i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  store i32 1, i32* %8, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %15, align 4
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %126, i32 %127)
  %129 = load i8*, i8** %6, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %114, %111
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 (i8*, i8*, ...) @sprintf(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i8*, i8** %6, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %6, align 8
  br label %142

141:                                              ; preds = %132
  store i32 1, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %135
  %143 = load %struct.counter*, %struct.counter** %7, align 8
  %144 = getelementptr inbounds %struct.counter, %struct.counter* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @get_month(i32 %145)
  store i32 %146, i32* %16, align 4
  %147 = load %struct.counter*, %struct.counter** %7, align 8
  %148 = getelementptr inbounds %struct.counter, %struct.counter* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @get_year(i32 %149)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %142
  store i32 12, i32* %16, align 4
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %17, align 4
  br label %156

156:                                              ; preds = %153, %142
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.counter*, %struct.counter** %7, align 8
  %159 = getelementptr inbounds %struct.counter, %struct.counter* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %160, i32 %161, i32 %162)
  %164 = load i8*, i8** %6, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %6, align 8
  br label %167

167:                                              ; preds = %156, %106, %99
  %168 = load %struct.counter*, %struct.counter** %7, align 8
  %169 = getelementptr inbounds %struct.counter, %struct.counter* %168, i32 0, i32 3
  %170 = load %struct.counter*, %struct.counter** %169, align 8
  store %struct.counter* %170, %struct.counter** %7, align 8
  br label %33

171:                                              ; preds = %33
  %172 = load i8*, i8** %6, align 8
  %173 = load i8*, i8** %4, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %171, %25, %21
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @load_counter(i64, i32, i32) #1

declare dso_local i32 @get_monthly_visitors_serialized_raw(i8*, i64) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @get_month(i32) #1

declare dso_local i32 @get_year(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
