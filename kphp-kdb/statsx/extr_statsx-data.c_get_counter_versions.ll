; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_versions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, %struct.counter* }

@Q_raw = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_counter_versions(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.counter*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @Q_raw, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @get_counter_versions_raw(i8* %11, i64 %12)
  store i32 %13, i32* %3, align 4
  br label %108

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.counter* @get_counter_f(i64 %16, i32 0)
  store %struct.counter* %17, %struct.counter** %7, align 8
  br label %18

18:                                               ; preds = %40, %14
  %19 = load %struct.counter*, %struct.counter** %7, align 8
  %20 = icmp ne %struct.counter* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 100000
  %25 = icmp ult i8* %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.counter*, %struct.counter** %7, align 8
  %28 = getelementptr inbounds %struct.counter, %struct.counter* %27, i32 0, i32 1
  %29 = load %struct.counter*, %struct.counter** %28, align 8
  %30 = icmp uge %struct.counter* %29, null
  br label %31

31:                                               ; preds = %26, %21, %18
  %32 = phi i1 [ false, %21 ], [ false, %18 ], [ %30, %26 ]
  br i1 %32, label %33, label %52

33:                                               ; preds = %31
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ugt i8* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  store i8 44, i8* %38, align 1
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.counter*, %struct.counter** %7, align 8
  %43 = getelementptr inbounds %struct.counter, %struct.counter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %6, align 8
  %49 = load %struct.counter*, %struct.counter** %7, align 8
  %50 = getelementptr inbounds %struct.counter, %struct.counter* %49, i32 0, i32 1
  %51 = load %struct.counter*, %struct.counter** %50, align 8
  store %struct.counter* %51, %struct.counter** %7, align 8
  br label %18

52:                                               ; preds = %31
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 100000
  %56 = icmp ult i8* %53, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @load_counter(i64 %58, i32 0, i32 1)
  %60 = icmp eq i32 %59, -2
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 -2, i32* %3, align 4
  br label %108

62:                                               ; preds = %57
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call %struct.counter* @get_counter_f(i64 %64, i32 0)
  store %struct.counter* %65, %struct.counter** %7, align 8
  br label %66

66:                                               ; preds = %88, %62
  %67 = load %struct.counter*, %struct.counter** %7, align 8
  %68 = icmp ne %struct.counter* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 100000
  %73 = icmp ult i8* %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.counter*, %struct.counter** %7, align 8
  %76 = getelementptr inbounds %struct.counter, %struct.counter* %75, i32 0, i32 1
  %77 = load %struct.counter*, %struct.counter** %76, align 8
  %78 = icmp uge %struct.counter* %77, null
  br label %79

79:                                               ; preds = %74, %69, %66
  %80 = phi i1 [ false, %69 ], [ false, %66 ], [ %78, %74 ]
  br i1 %80, label %81, label %100

81:                                               ; preds = %79
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = icmp ugt i8* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 44, i8* %86, align 1
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.counter*, %struct.counter** %7, align 8
  %91 = getelementptr inbounds %struct.counter, %struct.counter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i8*, i8** %6, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %6, align 8
  %97 = load %struct.counter*, %struct.counter** %7, align 8
  %98 = getelementptr inbounds %struct.counter, %struct.counter* %97, i32 0, i32 1
  %99 = load %struct.counter*, %struct.counter** %98, align 8
  store %struct.counter* %99, %struct.counter** %7, align 8
  br label %66

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %52
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %61, %10
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @get_counter_versions_raw(i8*, i64) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @load_counter(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
