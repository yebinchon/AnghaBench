; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_notification_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_notification_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"exec_get_raw_notifications (%p, %s, %d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"raw_notification_updates%d[%d,%d]:%n%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"raw_notification_updates%n%d\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"mask = %d, st_time = %d, end_time = %d, x = %d, user_id = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"prepare_raw_updates(%d) = %d\0A\00", align 1
@R = common dso_local global i64 0, align 8
@R_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @exec_get_raw_notification_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_get_raw_notification_updates(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @verbosity, align 4
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.connection*, %struct.connection** %6, align 8
  %22 = ptrtoint %struct.connection* %21 to i32
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %15, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %14, i32* %10)
  %39 = icmp sge i32 %38, 4
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32* %10)
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %99

47:                                               ; preds = %40, %33
  %48 = load i32, i32* %14, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %99

50:                                               ; preds = %47
  %51 = load i32, i32* @verbosity, align 4
  %52 = icmp sge i32 %51, 3
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %14, align 4
  %65 = call i32 (...) @clear_result_buffer()
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @prepare_raw_notify_updates(i32 %66, i32 %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* @verbosity, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %61
  %79 = load i32, i32* %16, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load %struct.connection*, %struct.connection** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 0, %91
  %93 = load i64, i64* @R, align 8
  %94 = load i64, i64* @R_end, align 8
  %95 = load i64, i64* @R, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i32 @return_one_key_list(%struct.connection* %82, i8* %87, i32 %90, i32 2147483647, i32 %92, i64 %93, i64 %96)
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %47, %40
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %81
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @clear_result_buffer(...) #1

declare dso_local i32 @prepare_raw_notify_updates(i32, i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
