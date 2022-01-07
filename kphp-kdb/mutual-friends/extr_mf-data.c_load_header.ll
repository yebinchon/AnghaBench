; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_load_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i64, i64, i64, i64, i64 }

@header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@header_size = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"error reading header from index file: read %d bytes instead of %d at position 0: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"error reading header from index file: read %d bytes instead of %d: %m\0A\00", align 1
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"header loaded %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_header(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @open_file(i32 0, i8* %6, i32 -1)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 0), align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 8), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 1), align 4
  store i32 1000000000, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 6), align 8
  %10 = call i32 @time(i32* null)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 5), align 8
  store i32 4, i32* @header_size, align 4
  store i32 0, i32* %2, align 4
  br label %86

11:                                               ; preds = %1
  %12 = load i32*, i32** @fd, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i64 @lseek(i32 %14, i32 0, i32 %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  store i32 -4, i32* %4, align 4
  %20 = load i32*, i32** @fd, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @read(i32 %22, %struct.TYPE_5__* @header, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 0), align 8
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.TYPE_5__* @qmalloc0(i32 %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 4), align 8
  %46 = load i32*, i32** @fd, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 4), align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @read(i32 %48, %struct.TYPE_5__* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %33
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %33
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 2), align 8
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 1), align 4
  store i32 %68, i32* @log_split_min, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 2), align 8
  store i32 %69, i32* @log_split_max, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 3), align 4
  store i32 %70, i32* @log_split_mod, align 4
  %71 = call i32 @get_index_header_size(%struct.TYPE_5__* @header)
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* @header_size, align 4
  %75 = load i32, i32* @verbosity, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %85

77:                                               ; preds = %60
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* @log_split_min, align 4
  %80 = load i32, i32* @log_split_max, align 4
  %81 = load i32, i32* @log_split_mod, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %77, %60
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %9
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @qmalloc0(i32) #1

declare dso_local i32 @get_index_header_size(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
