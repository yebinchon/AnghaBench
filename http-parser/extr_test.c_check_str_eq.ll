; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_check_str_eq.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_check_str_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"\0A*** Error: %s in '%s' ***\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"expected %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"   found %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"expected '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"   found '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.message*, i8*, i8*, i8*)* @check_str_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_str_eq(%struct.message* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.message* %0, %struct.message** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp eq i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.message*, %struct.message** %6, align 8
  %20 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %21)
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %28

26:                                               ; preds = %17
  %27 = load i8*, i8** %8, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %25 ], [ %27, %26 ]
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %36

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %33 ], [ %35, %34 ]
  %38 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  store i32 0, i32* %5, align 4
  br label %58

39:                                               ; preds = %4
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i64 0, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.message*, %struct.message** %6, align 8
  %50 = getelementptr inbounds %struct.message, %struct.message* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  store i32 0, i32* %5, align 4
  br label %58

57:                                               ; preds = %42, %39
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %47, %36
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
