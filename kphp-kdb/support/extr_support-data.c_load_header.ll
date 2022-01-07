; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_load_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@fd = common dso_local global i32* null, align 8
@header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@header_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"load_header\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"error reading header from index file: read %d bytes instead of %d at position %d: %m\0A\00", align 1
@SUPPORT_INDEX_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"bad support index file header\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"magic = 0x%08x // offset = %d\0A\00", align 1
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"header loaded %d %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32*, i32** @fd, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 -1, i32* %11, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 7), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 5), align 8
  %12 = call i32 @time(i32* null)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 4), align 8
  store i32 4, i32* @header_size, align 4
  store i32 0, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = call i32 @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @fd, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** @fd, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i32 @lseek(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i32 4, i32* %5, align 4
  %33 = load i32*, i32** @fd, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @read(i32 %35, %struct.TYPE_7__* @header, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %13
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %41, %13
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 3), align 4
  %54 = load i32, i32* @SUPPORT_INDEX_MAGIC, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 3), align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61)
  %63 = call i32 @assert(i32 0)
  br label %64

64:                                               ; preds = %56, %52
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 1), align 4
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 0), align 8
  store i32 %67, i32* @log_split_min, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 1), align 4
  store i32 %68, i32* @log_split_max, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 2), align 8
  store i32 %69, i32* @log_split_mod, align 4
  %70 = call i32 @get_index_header_size(%struct.TYPE_7__* @header)
  store i32 %70, i32* @header_size, align 4
  %71 = load i32, i32* @verbosity, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %84

73:                                               ; preds = %64
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32*, i32** @fd, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @log_split_min, align 4
  %79 = load i32, i32* @log_split_max, align 4
  %80 = load i32, i32* @log_split_mod, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %73, %64
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %9
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @get_index_header_size(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
