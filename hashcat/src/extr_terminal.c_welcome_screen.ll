; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_terminal.c_welcome_screen.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_terminal.c_welcome_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s (%s) starting in benchmark mode...\00", align 1
@PROGNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Benchmarking uses hand-optimized kernel code by default.\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"You can use it in your cracking session by setting the -O option.\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Note: Using optimized kernel code limits the maximum supported password length.\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"To disable the optimized kernel code in benchmark mode, use the -w option.\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"# version: %s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s (%s) starting in restore mode...\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s (%s) starting in speed-only mode...\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"%s (%s) starting in progress-only mode...\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s (%s) starting...\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"You have enabled --force to bypass dangerous warnings and errors!\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"This can hide serious problems and should only be done when debugging.\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"Do not report hashcat issues encountered when using --force.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @welcome_screen(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %134

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %134

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %134

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %134

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %134

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %76

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i32, i32* @PROGNAME, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %53, i8* null)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = call i32 @event_log_advice(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = call i32 @event_log_advice(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @event_log_advice(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = call i32 @event_log_advice(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = call i32 @event_log_advice(%struct.TYPE_8__* %68, i8* null)
  br label %70

70:                                               ; preds = %59, %48
  br label %75

71:                                               ; preds = %43
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %70
  br label %122

76:                                               ; preds = %38
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = load i32, i32* @PROGNAME, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %83, i8* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %86, i8* null)
  br label %121

88:                                               ; preds = %76
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = load i32, i32* @PROGNAME, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %95, i8* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %98, i8* null)
  br label %120

100:                                              ; preds = %88
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = load i32, i32* @PROGNAME, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %107, i8* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %110, i8* null)
  br label %119

112:                                              ; preds = %100
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = load i32, i32* @PROGNAME, align 4
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %114, i8* %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = call i32 (%struct.TYPE_8__*, i8*, ...) @event_log_info(%struct.TYPE_8__* %117, i8* null)
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121, %75
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = call i32 @event_log_warning(%struct.TYPE_8__* %128, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0))
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = call i32 @event_log_warning(%struct.TYPE_8__* %130, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0))
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = call i32 @event_log_warning(%struct.TYPE_8__* %132, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0))
  br label %134

134:                                              ; preds = %13, %19, %25, %31, %37, %127, %122
  ret void
}

declare dso_local i32 @event_log_info(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @event_log_advice(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @event_log_warning(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
