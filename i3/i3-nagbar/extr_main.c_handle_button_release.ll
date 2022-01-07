; ModuleID = '/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_handle_button_release.c'
source_filename = "/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_handle_button_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i64 }

@.str = private unnamed_addr constant [35 x i8] c"button released on x = %d, y = %d\0A\00", align 1
@btn_close = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"nagbar-cmd\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Could not create temporary script to store the nagbar command\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Could not fdopen() temporary script to store the nagbar command\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"#!/bin/sh\0Arm %s\0A%s\00", align 1
@argv0 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"%s.nagbar_cmd\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to symlink %s to %s\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"i3-sensible-terminal -e %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"argv0 = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"terminal_cmd = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @handle_button_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_button_release(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btn_close, i32 0, i32 0), align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btn_close, i32 0, i32 0), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btn_close, i32 0, i32 1), align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @exit(i32 0) #3
  unreachable

36:                                               ; preds = %25, %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_7__* @get_button_at(i64 %40, i32 %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %119

48:                                               ; preds = %36
  %49 = call i8* @get_process_filename(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @O_WRONLY, align 4
  %52 = load i32, i32* @O_CREAT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @O_TRUNC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @S_IRUSR, align 4
  %57 = load i32, i32* @S_IWUSR, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @open(i8* %50, i32 %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = call i32 @warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %119

64:                                               ; preds = %48
  %65 = load i32, i32* %7, align 4
  %66 = call i32* @fdopen(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %119

71:                                               ; preds = %64
  %72 = load i32*, i32** %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @fprintf(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %73, i8* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load i8*, i8** @argv0, align 8
  %81 = call i8* @get_exe_path(i8* %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @sasprintf(i8** %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @symlink(i8* %84, i8* %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %93

88:                                               ; preds = %71
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @err(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %88, %71
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @sasprintf(i8** %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %99)
  br label %104

101:                                              ; preds = %93
  %102 = load i8*, i8** %9, align 8
  %103 = call i8* @sstrdup(i8* %102)
  store i8* %103, i8** %11, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i8*, i8** @argv0, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %105)
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @start_application(i8* %109)
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @free(i8* %117)
  br label %119

119:                                              ; preds = %104, %69, %62, %47
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_7__* @get_button_at(i64, i32) #1

declare dso_local i8* @get_process_filename(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @get_exe_path(i8*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @symlink(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*, i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @start_application(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
