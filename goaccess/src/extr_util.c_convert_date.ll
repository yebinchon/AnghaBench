; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_util.c_convert_date.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_util.c_convert_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tm = type { i32 }

@timestamp = common dso_local global i32 0, align 4
@now_tm = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"Yy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_date(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call i32 @memset(%struct.tm* %12, i32 0, i32 4)
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* @timestamp, align 4
  %15 = call %struct.TYPE_3__* @localtime(i32* @timestamp)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** @now_tm, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @str_to_time(i8* %16, i8* %17, %struct.tm* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %42

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @has_timestamp(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = call i32* @strpbrk(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @now_tm, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %25, %21
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strftime(i8* %35, i32 %36, i8* %37, %struct.tm* %12)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40, %20
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.TYPE_3__* @localtime(i32*) #1

declare dso_local i64 @str_to_time(i8*, i8*, %struct.tm*) #1

declare dso_local i32 @has_timestamp(i8*) #1

declare dso_local i32* @strpbrk(i8*, i8*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
