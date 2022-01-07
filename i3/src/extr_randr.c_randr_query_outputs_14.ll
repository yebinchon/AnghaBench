; ModuleID = '/home/carl/AnghaBench/i3/src/extr_randr.c_randr_query_outputs_14.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_randr.c_randr_query_outputs_14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Querying outputs using RandR \E2\89\A4 1.4\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@root = common dso_local global i32 0, align 4
@primary = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not get RandR primary output\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"primary output is %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not query screen resources.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @randr_query_outputs_14 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randr_query_outputs_14() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @conn, align 4
  %14 = load i32, i32* @root, align 4
  %15 = call i32 @xcb_randr_get_screen_resources_current(i32 %13, i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @conn, align 4
  %17 = load i32, i32* @root, align 4
  %18 = call i32 @xcb_randr_get_output_primary(i32 %16, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @conn, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call %struct.TYPE_10__* @xcb_randr_get_output_primary_reply(i32 %19, i32 %20, i32* null)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** @primary, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %0
  %24 = call i32 @ELOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %30

25:                                               ; preds = %0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @primary, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %23
  %31 = load i32, i32* @conn, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call %struct.TYPE_9__* @xcb_randr_get_screen_resources_current_reply(i32 %31, i32 %32, i32* null)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = icmp eq %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @ELOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %103

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @xcb_randr_get_screen_resources_current_outputs_length(%struct.TYPE_9__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = call i32* @xcb_randr_get_screen_resources_current_outputs(%struct.TYPE_9__* %44)
  store i32* %45, i32** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %7, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %66, %38
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32, i32* @conn, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @xcb_randr_get_output_info(i32 %55, i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %49, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %50

69:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i32, i32* @conn, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %49, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @xcb_randr_get_output_info_reply(i32 %75, i32 %79, i32* null)
  store i32* %80, i32** %11, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %96

83:                                               ; preds = %74
  %84 = load i32, i32* @conn, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = call i32 @handle_output(i32 %84, i32 %89, i32* %90, i32 %91, %struct.TYPE_9__* %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @free(i32* %94)
  br label %96

96:                                               ; preds = %83, %82
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %70

99:                                               ; preds = %70
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = call i32 @FREE(%struct.TYPE_9__* %100)
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  br label %103

103:                                              ; preds = %99, %36
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @xcb_randr_get_screen_resources_current(i32, i32) #1

declare dso_local i32 @xcb_randr_get_output_primary(i32, i32) #1

declare dso_local %struct.TYPE_10__* @xcb_randr_get_output_primary_reply(i32, i32, i32*) #1

declare dso_local i32 @ELOG(i8*) #1

declare dso_local %struct.TYPE_9__* @xcb_randr_get_screen_resources_current_reply(i32, i32, i32*) #1

declare dso_local i32 @xcb_randr_get_screen_resources_current_outputs_length(%struct.TYPE_9__*) #1

declare dso_local i32* @xcb_randr_get_screen_resources_current_outputs(%struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xcb_randr_get_output_info(i32, i32, i32) #1

declare dso_local i32* @xcb_randr_get_output_info_reply(i32, i32, i32*) #1

declare dso_local i32 @handle_output(i32, i32, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @FREE(%struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
