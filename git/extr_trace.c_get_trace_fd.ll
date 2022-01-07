; ModuleID = '/home/carl/AnghaBench/git/extr_trace.c_get_trace_fd.c'
source_filename = "/home/carl/AnghaBench/git/extr_trace.c_get_trace_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_key = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"could not open '%s' for tracing: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [146 x i8] c"unknown trace value for '%s': %s\0A         If you want to trace into a file, then please set %s\0A         to an absolute pathname (starting with /)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_key*)* @get_trace_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_trace_fd(%struct.trace_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_key*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.trace_key* %0, %struct.trace_key** %3, align 8
  %6 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %7 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %12 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %114

14:                                               ; preds = %1
  %15 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %16 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @getenv(i32 %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strcasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %25, %21, %14
  %34 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %35 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %108

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcasecmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @STDERR_FILENO, align 4
  %46 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %47 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %107

48:                                               ; preds = %40
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @isdigit(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @atoi(i8* %58)
  %60 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %61 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %106

62:                                               ; preds = %52, %48
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @is_absolute_path(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @O_WRONLY, align 4
  %69 = load i32, i32* @O_APPEND, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @O_CREAT, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @open(i8* %67, i32 %72, i32 438)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 (i8*, i8*, i8*, ...) @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %77, i8* %81)
  %83 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %84 = call i32 @trace_disable(%struct.trace_key* %83)
  br label %91

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %88 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %90 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %89, i32 0, i32 2
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %76
  br label %105

92:                                               ; preds = %62
  %93 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %94 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load i8*, i8** %4, align 8
  %99 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %100 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i8*, i8*, ...) @warning(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.6, i64 0, i64 0), i8* %97, i8* %98, i32 %101)
  %103 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %104 = call i32 @trace_disable(%struct.trace_key* %103)
  br label %105

105:                                              ; preds = %92, %91
  br label %106

106:                                              ; preds = %105, %57
  br label %107

107:                                              ; preds = %106, %44
  br label %108

108:                                              ; preds = %107, %33
  %109 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %110 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load %struct.trace_key*, %struct.trace_key** %3, align 8
  %112 = getelementptr inbounds %struct.trace_key, %struct.trace_key* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %108, %10
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warning(i8*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @trace_disable(%struct.trace_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
