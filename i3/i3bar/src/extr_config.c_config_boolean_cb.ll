; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_config.c_config_boolean_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_config.c_config_boolean_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@parsing_bindings = common dso_local global i64 0, align 8
@cur_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"release\00", align 1
@config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@bindings_head = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"There is no binding to put the current command onto. This is a bug in i3.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Unknown key \22%s\22 while parsing bar bindings.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"binding_mode_indicator\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"binding_mode_indicator = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"workspace_buttons\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"workspace_buttons = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"strip_workspace_numbers\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"strip_workspace_numbers = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"strip_workspace_name\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"strip_workspace_name = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"verbose = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @config_boolean_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_boolean_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @parsing_bindings, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i32, i32* @cur_key, align 4
  %11 = call i64 @strcmp(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* @bindings_head, align 4
  %15 = call %struct.TYPE_4__* @TAILQ_LAST(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 5), i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %78

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 1, i32* %3, align 4
  br label %78

24:                                               ; preds = %9
  %25 = load i32, i32* @cur_key, align 4
  %26 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @cur_key, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 4
  store i32 1, i32* %3, align 4
  br label %78

38:                                               ; preds = %27
  %39 = load i32, i32* @cur_key, align 4
  %40 = call i64 @strcmp(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 1), align 4
  store i32 1, i32* %3, align 4
  br label %78

49:                                               ; preds = %38
  %50 = load i32, i32* @cur_key, align 4
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @DLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 2), align 4
  store i32 1, i32* %3, align 4
  br label %78

57:                                               ; preds = %49
  %58 = load i32, i32* @cur_key, align 4
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 4
  store i32 1, i32* %3, align 4
  br label %78

65:                                               ; preds = %57
  %66 = load i32, i32* @cur_key, align 4
  %67 = call i64 @strcmp(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 4), align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 4), align 4
  br label %76

76:                                               ; preds = %72, %69
  store i32 1, i32* %3, align 4
  br label %78

77:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %61, %53, %42, %31, %20, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @ELOG(i8*, ...) #1

declare dso_local i32 @DLOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
