; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_contained.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_contained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@do_contained.value = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"%d_%d%n%c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%n%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ERROR near '%.256s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @do_contained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_contained(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 9
  %20 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11, i32* %13, i8* %14)
  %21 = icmp sge i32 %20, 3
  br i1 %21, label %22, label %48

22:                                               ; preds = %4
  %23 = load i8, i8* %14, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 40
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = shl i64 %37, 32
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  store i64 %41, i64* %15, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 9
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %16, align 8
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %35, %32, %29, %26
  br label %48

48:                                               ; preds = %47, %22, %4
  store i32 -1, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 9
  %54 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32* %13, i8* %14)
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i8, i8* %14, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 40
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %15, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 9
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %16, align 8
  store i32 1, i32* %12, align 4
  br label %71

71:                                               ; preds = %63, %60
  br label %72

72:                                               ; preds = %71, %56, %51, %48
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @do_contained_query(i64 %76, i8** %16)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.connection*, %struct.connection** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i32, i32* %17, align 4
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_contained.value, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = call i32 @return_one_key(%struct.connection* %81, i8* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_contained.value, i64 0, i64 0), i32 %88)
  store i32 %89, i32* %5, align 4
  br label %101

90:                                               ; preds = %75
  %91 = load %struct.connection*, %struct.connection** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_contained.value, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  %99 = call i32 @return_one_key(%struct.connection* %91, i8* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_contained.value, i64 0, i64 0), i32 %98)
  store i32 %99, i32* %5, align 4
  br label %101

100:                                              ; preds = %72
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %90, %80
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @do_contained_query(i64, i8**) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
