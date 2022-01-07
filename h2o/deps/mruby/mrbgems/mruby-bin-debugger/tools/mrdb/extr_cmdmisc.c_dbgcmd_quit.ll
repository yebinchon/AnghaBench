; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_dbgcmd_quit.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_dbgcmd_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"The program is running.  Exit anyway? (y or n) \00", align 1
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@DBG_QUIT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Please answer y or n.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DebuggerExit\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Exit mrdb.\00", align 1
@DBGST_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgcmd_quit(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.RClass*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %70 [
    i32 129, label %13
    i32 128, label %13
    i32 130, label %13
  ]

13:                                               ; preds = %2, %2, %2
  br label %14

14:                                               ; preds = %13, %68
  %15 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  %18 = call i32 (...) @getchar()
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i8*, i8** @DBG_QUIT, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %69

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  br label %31

31:                                               ; preds = %40, %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 (...) @getchar()
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @EOF, align 4
  %37 = icmp ne i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %31

41:                                               ; preds = %38
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 121
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %5, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 89
  br i1 %48, label %49, label %56

49:                                               ; preds = %45, %41
  %50 = load i8*, i8** @DBG_QUIT, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  br label %69

56:                                               ; preds = %45
  %57 = load i8, i8* %5, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 110
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8, i8* %5, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 78
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  br label %69

65:                                               ; preds = %60
  %66 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  br label %14

69:                                               ; preds = %64, %49, %21
  br label %77

70:                                               ; preds = %2
  %71 = load i8*, i8** @DBG_QUIT, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %69
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load i8*, i8** @DBG_QUIT, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %77
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.RClass* @mrb_define_class(%struct.TYPE_10__* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  store %struct.RClass* %92, %struct.RClass** %7, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = load %struct.RClass*, %struct.RClass** %7, align 8
  %95 = call i32 @mrb_raise(%struct.TYPE_10__* %93, %struct.RClass* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %87, %77
  %97 = load i32, i32* @DBGST_PROMPT, align 4
  ret i32 %97
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @getchar(...) #1

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_10__*, %struct.RClass*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
