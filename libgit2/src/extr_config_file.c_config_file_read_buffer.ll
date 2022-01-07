; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_config_file_read_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_config_file_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_10__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i8* }

@MAX_INCLUDE_DEPTH = common dso_local global i32 0, align 4
@GIT_ERROR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"maximum config include depth reached\00", align 1
@read_on_variable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_10__*, i32, i32, i8*, i64)* @config_file_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_file_read_buffer(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @MAX_INCLUDE_DEPTH, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* @GIT_ERROR_CONFIG, align 4
  %24 = call i32 @git_error_set(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %61

25:                                               ; preds = %7
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %31 = load i8*, i8** %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @git_parse_ctx_init(%struct.TYPE_11__* %30, i8* %31, i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %25
  store i32 0, i32* %18, align 4
  br label %59

46:                                               ; preds = %38
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 4
  store i32* %47, i32** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %50, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @read_on_variable, align 4
  %58 = call i32 @git_config_parse(%struct.TYPE_8__* %17, i32* null, i32 %57, i32* null, i32* null, %struct.TYPE_9__* %16)
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %46, %45
  %60 = load i32, i32* %18, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %22
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_parse_ctx_init(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @git_config_parse(%struct.TYPE_8__*, i32*, i32, i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
