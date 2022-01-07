; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_config.c_config_integer_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_config.c_config_integer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i64 }

@parsing_bindings = common dso_local global i64 0, align 8
@cur_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"input_code\00", align 1
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@bindings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unknown key \22%s\22 while parsing bar bindings.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bar_height\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"bar_height = %lld\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tray_padding\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"tray_padding = %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"modifier = %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"workspace_min_width\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"workspace_min_width = %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @config_integer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_integer_cb(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @parsing_bindings, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* @cur_key, align 4
  %11 = call i64 @strcmp(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = call %struct.TYPE_5__* @scalloc(i32 1, i32 8)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = load i32, i32* @bindings, align 4
  %20 = call i32 @TAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 4), %struct.TYPE_5__* %18, i32 %19)
  store i32 1, i32* %3, align 4
  br label %59

21:                                               ; preds = %9
  %22 = load i32, i32* @cur_key, align 4
  %23 = call i32 @ELOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load i32, i32* @cur_key, align 4
  %26 = call i64 @strcmp(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @DLOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 3), align 8
  store i32 1, i32* %3, align 4
  br label %59

33:                                               ; preds = %24
  %34 = load i32, i32* @cur_key, align 4
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @DLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  store i32 1, i32* %3, align 4
  br label %59

41:                                               ; preds = %33
  %42 = load i32, i32* @cur_key, align 4
  %43 = call i64 @strcmp(i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @DLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  store i32 1, i32* %3, align 4
  br label %59

50:                                               ; preds = %41
  %51 = load i32, i32* @cur_key, align 4
  %52 = call i64 @strcmp(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @DLOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %54, %45, %37, %28, %21, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @scalloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ELOG(i8*, i32) #1

declare dso_local i32 @DLOG(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
