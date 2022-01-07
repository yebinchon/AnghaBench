; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_parse_date_format.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_parse_date_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.date_mode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"auto:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"default-local\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-local\00", align 1
@DATE_STRFTIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"date format missing colon separator: %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"unknown date format %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_date_format(i8* %0, %struct.date_mode* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.date_mode*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.date_mode* %1, %struct.date_mode** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @skip_prefix(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = call i64 @isatty(i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i64 (...) @pager_in_use()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %3, align 8
  br label %18

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %15
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @parse_date_type(i8* %25, i8** %5)
  %27 = load %struct.date_mode*, %struct.date_mode** %4, align 8
  %28 = getelementptr inbounds %struct.date_mode, %struct.date_mode* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.date_mode*, %struct.date_mode** %4, align 8
  %30 = getelementptr inbounds %struct.date_mode, %struct.date_mode* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @skip_prefix(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.date_mode*, %struct.date_mode** %4, align 8
  %36 = getelementptr inbounds %struct.date_mode, %struct.date_mode* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load %struct.date_mode*, %struct.date_mode** %4, align 8
  %39 = getelementptr inbounds %struct.date_mode, %struct.date_mode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DATE_STRFTIME, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @skip_prefix(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %5)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @xstrdup(i8* %51)
  %53 = load %struct.date_mode*, %struct.date_mode** %4, align 8
  %54 = getelementptr inbounds %struct.date_mode, %struct.date_mode* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %63

55:                                               ; preds = %37
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %50
  ret void
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @pager_in_use(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_date_type(i8*, i8**) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
