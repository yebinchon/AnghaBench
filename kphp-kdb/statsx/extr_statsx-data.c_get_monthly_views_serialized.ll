; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_views_serialized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_monthly_views_serialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { %struct.counter*, i32, i64 }

@Q_raw = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d,%d,%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_monthly_views_serialized(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.counter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @load_counter(i64 %12, i32 0, i32 1)
  %14 = icmp eq i32 %13, -2
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %106

16:                                               ; preds = %2
  %17 = load i64, i64* @Q_raw, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @get_monthly_views_serialized_raw(i8* %20, i64 %21)
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call %struct.counter* @get_counter_f(i64 %25, i32 0)
  store %struct.counter* %26, %struct.counter** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %95, %23
  %28 = load %struct.counter*, %struct.counter** %7, align 8
  %29 = icmp ne %struct.counter* %28, null
  br i1 %29, label %30, label %99

30:                                               ; preds = %27
  %31 = load %struct.counter*, %struct.counter** %7, align 8
  %32 = getelementptr inbounds %struct.counter, %struct.counter* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.counter*, %struct.counter** %7, align 8
  %39 = getelementptr inbounds %struct.counter, %struct.counter* %38, i32 0, i32 0
  %40 = load %struct.counter*, %struct.counter** %39, align 8
  %41 = icmp ne %struct.counter* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %30
  %43 = load %struct.counter*, %struct.counter** %7, align 8
  %44 = getelementptr inbounds %struct.counter, %struct.counter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @get_month(i32 %45)
  %47 = load %struct.counter*, %struct.counter** %7, align 8
  %48 = getelementptr inbounds %struct.counter, %struct.counter* %47, i32 0, i32 0
  %49 = load %struct.counter*, %struct.counter** %48, align 8
  %50 = getelementptr inbounds %struct.counter, %struct.counter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @get_month(i32 %51)
  %53 = icmp ne i32 %46, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %42
  %55 = load %struct.counter*, %struct.counter** %7, align 8
  %56 = getelementptr inbounds %struct.counter, %struct.counter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @get_year(i32 %57)
  %59 = load %struct.counter*, %struct.counter** %7, align 8
  %60 = getelementptr inbounds %struct.counter, %struct.counter* %59, i32 0, i32 0
  %61 = load %struct.counter*, %struct.counter** %60, align 8
  %62 = getelementptr inbounds %struct.counter, %struct.counter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @get_year(i32 %63)
  %65 = icmp ne i32 %58, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %54, %42, %30
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = load i8*, i8** %6, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %6, align 8
  br label %76

75:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %69
  %77 = load %struct.counter*, %struct.counter** %7, align 8
  %78 = getelementptr inbounds %struct.counter, %struct.counter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @get_month(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.counter*, %struct.counter** %7, align 8
  %82 = getelementptr inbounds %struct.counter, %struct.counter* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @get_year(i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %76, %54
  %96 = load %struct.counter*, %struct.counter** %7, align 8
  %97 = getelementptr inbounds %struct.counter, %struct.counter* %96, i32 0, i32 0
  %98 = load %struct.counter*, %struct.counter** %97, align 8
  store %struct.counter* %98, %struct.counter** %7, align 8
  br label %27

99:                                               ; preds = %27
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %99, %19, %15
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @load_counter(i64, i32, i32) #1

declare dso_local i32 @get_monthly_views_serialized_raw(i8*, i64) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @get_month(i32) #1

declare dso_local i32 @get_year(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
