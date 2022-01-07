; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_util.c_usecs_to_str.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_util.c_usecs_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%.2f  d\00", align 1
@HOUR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%.2f hr\00", align 1
@MINS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%.2f mn\00", align 1
@SECS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%.2f  s\00", align 1
@MILS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%.2f ms\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%.2f us\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usecs_to_str(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i8* @xmalloc(i32 11)
  store i8* %4, i8** %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @DAY, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = uitofp i64 %10 to double
  %12 = load i64, i64* @DAY, align 8
  %13 = uitofp i64 %12 to double
  %14 = fdiv double %11, %13
  %15 = call i32 @snprintf(i8* %9, i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %14)
  br label %73

16:                                               ; preds = %1
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @HOUR, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %2, align 8
  %23 = uitofp i64 %22 to double
  %24 = load i64, i64* @HOUR, align 8
  %25 = uitofp i64 %24 to double
  %26 = fdiv double %23, %25
  %27 = call i32 @snprintf(i8* %21, i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), double %26)
  br label %72

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @MINS, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %2, align 8
  %35 = uitofp i64 %34 to double
  %36 = load i64, i64* @MINS, align 8
  %37 = uitofp i64 %36 to double
  %38 = fdiv double %35, %37
  %39 = call i32 @snprintf(i8* %33, i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %38)
  br label %71

40:                                               ; preds = %28
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @SECS, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %2, align 8
  %47 = uitofp i64 %46 to double
  %48 = load i64, i64* @SECS, align 8
  %49 = uitofp i64 %48 to double
  %50 = fdiv double %47, %49
  %51 = call i32 @snprintf(i8* %45, i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), double %50)
  br label %70

52:                                               ; preds = %40
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @MILS, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %2, align 8
  %59 = uitofp i64 %58 to double
  %60 = load i64, i64* @MILS, align 8
  %61 = uitofp i64 %60 to double
  %62 = fdiv double %59, %61
  %63 = call i32 @snprintf(i8* %57, i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %62)
  br label %69

64:                                               ; preds = %52
  %65 = load i8*, i8** %3, align 8
  %66 = load i64, i64* %2, align 8
  %67 = uitofp i64 %66 to double
  %68 = call i32 @snprintf(i8* %65, i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %67)
  br label %69

69:                                               ; preds = %64, %56
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %32
  br label %72

72:                                               ; preds = %71, %20
  br label %73

73:                                               ; preds = %72, %8
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
