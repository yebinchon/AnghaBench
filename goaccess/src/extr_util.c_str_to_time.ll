; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_util.c_str_to_time.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_util.c_str_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@SECS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str_to_time(i8* %0, i8* %1, %struct.tm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %18, %13, %3
  store i32 1, i32* %4, align 4
  br label %78

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  store i64 0, i64* @errno, align 8
  %32 = load %struct.tm*, %struct.tm** %7, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  store i32 70, i32* %33, align 8
  %34 = load %struct.tm*, %struct.tm** %7, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strtoull(i8* %36, i8** %9, i32 10)
  store i64 %37, i64* %10, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @ERANGE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %41, %31
  store i32 1, i32* %4, align 4
  br label %78

51:                                               ; preds = %46
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @SECS, align 8
  %54 = udiv i64 %52, %53
  %55 = load %struct.tm*, %struct.tm** %7, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.tm*, %struct.tm** %7, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 3
  store i32 -1, i32* %58, align 8
  %59 = load %struct.tm*, %struct.tm** %7, align 8
  %60 = call i32 @mktime(%struct.tm* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %78

63:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %78

64:                                               ; preds = %27
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.tm*, %struct.tm** %7, align 8
  %68 = call i8* @strptime(i8* %65, i8* %66, %struct.tm* %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %64
  store i32 1, i32* %4, align 4
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %76, %63, %62, %50, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
