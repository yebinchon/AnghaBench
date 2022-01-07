; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-path-utils.c_test_function.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-path-utils.c_test_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"FAIL: %s(%s) => '%s' != '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"FAIL: %s(%s) => '%s' != '%s', '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_data*, i8* (i8*)*, i8*)* @test_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_function(%struct.test_data* %0, i8* (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.test_data*, align 8
  %5 = alloca i8* (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.test_data* %0, %struct.test_data** %4, align 8
  store i8* (i8*)* %1, i8* (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %112, %3
  %12 = load %struct.test_data*, %struct.test_data** %4, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.test_data, %struct.test_data* %12, i64 %14
  %16 = getelementptr inbounds %struct.test_data, %struct.test_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %11
  %20 = load %struct.test_data*, %struct.test_data** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.test_data, %struct.test_data* %20, i64 %22
  %24 = getelementptr inbounds %struct.test_data, %struct.test_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i8* (i8*)*, i8* (i8*)** %5, align 8
  %29 = call i8* %28(i8* null)
  store i8* %29, i8** %10, align 8
  br label %42

30:                                               ; preds = %19
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %32 = load %struct.test_data*, %struct.test_data** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.test_data, %struct.test_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.test_data, %struct.test_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @xsnprintf(i8* %31, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i8* (i8*)*, i8* (i8*)** %5, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %41 = call i8* %39(i8* %40)
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %30, %27
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.test_data*, %struct.test_data** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.test_data, %struct.test_data* %44, i64 %46
  %48 = getelementptr inbounds %struct.test_data, %struct.test_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @strcmp(i8* %43, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %112

53:                                               ; preds = %42
  %54 = load %struct.test_data*, %struct.test_data** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.test_data, %struct.test_data* %54, i64 %56
  %58 = getelementptr inbounds %struct.test_data, %struct.test_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.test_data*, %struct.test_data** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.test_data, %struct.test_data* %63, i64 %65
  %67 = getelementptr inbounds %struct.test_data, %struct.test_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.test_data*, %struct.test_data** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.test_data, %struct.test_data* %70, i64 %72
  %74 = getelementptr inbounds %struct.test_data, %struct.test_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, i8*, i8*, i8*, i64, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %68, i8* %69, i64 %75)
  br label %111

77:                                               ; preds = %53
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.test_data*, %struct.test_data** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.test_data, %struct.test_data* %79, i64 %81
  %83 = getelementptr inbounds %struct.test_data, %struct.test_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @strcmp(i8* %78, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %112

88:                                               ; preds = %77
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.test_data*, %struct.test_data** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.test_data, %struct.test_data* %90, i64 %92
  %94 = getelementptr inbounds %struct.test_data, %struct.test_data* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load %struct.test_data*, %struct.test_data** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.test_data, %struct.test_data* %97, i64 %99
  %101 = getelementptr inbounds %struct.test_data, %struct.test_data* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.test_data*, %struct.test_data** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.test_data, %struct.test_data* %103, i64 %105
  %107 = getelementptr inbounds %struct.test_data, %struct.test_data* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, i8*, i8*, i8*, i64, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %89, i8* %95, i8* %96, i64 %102, i64 %108)
  br label %110

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110, %61
  store i32 1, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %87, %52
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %11

115:                                              ; preds = %11
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
