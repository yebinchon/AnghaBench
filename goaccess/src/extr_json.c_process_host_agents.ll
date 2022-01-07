; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_process_host_agents.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_process_host_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@conf = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@load_host_agents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c",%.*s%.*s\22items\22: [%.*s\00", align 1
@nlines = common dso_local global i32 0, align 4
@NL = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*s\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\22,%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i32)* @process_host_agents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_host_agents(i32* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call %struct.TYPE_13__* (...) @new_gagents()
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @conf, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @load_host_agents, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = call i32 @set_host_agents(i32 %22, i32 %23, %struct.TYPE_13__* %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %89

28:                                               ; preds = %17
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @nlines, align 4
  %31 = load i32, i32* @NL, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @TAB, align 4
  %34 = load i32, i32* @nlines, align 4
  %35 = load i32, i32* @NL, align 4
  %36 = call i32 (i32*, i8*, ...) @pjson(i32* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %46

42:                                               ; preds = %28
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i32 [ 10, %41 ], [ %45, %42 ]
  store i32 %47, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %80, %46
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @TAB, align 4
  %56 = call i32 (i32*, i8*, ...) @pjson(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @escape_json_output(i32* %57, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 (i32*, i8*, ...) @pjson(i32* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %79

74:                                               ; preds = %52
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @nlines, align 4
  %77 = load i32, i32* @NL, align 4
  %78 = call i32 (i32*, i8*, ...) @pjson(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %48

83:                                               ; preds = %48
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @pclose_arr(i32* %84, i32 %85, i32 1)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = call i32 @free_agents_array(%struct.TYPE_13__* %87)
  br label %89

89:                                               ; preds = %83, %27
  ret void
}

declare dso_local %struct.TYPE_13__* @new_gagents(...) #1

declare dso_local i32 @set_host_agents(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @pjson(i32*, i8*, ...) #1

declare dso_local i32 @escape_json_output(i32*, i32) #1

declare dso_local i32 @pclose_arr(i32*, i32, i32) #1

declare dso_local i32 @free_agents_array(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
