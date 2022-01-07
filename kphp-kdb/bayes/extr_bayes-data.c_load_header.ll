; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_load_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_10__*, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@fd = common dso_local global i32* null, align 8
@header = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@header_size = common dso_local global i32 0, align 4
@global_bayes = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@max_words = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"error reading header from index file: read %d bytes instead of %d at position %d: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"error reading header from index file: read %d bytes instead of %d: %m\0A\00", align 1
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@teach_messages = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"header loaded %d %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_header(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = icmp eq %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32*, i32** @fd, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 -1, i32* %11, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 0), align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 10), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 5), align 8
  %12 = call i32 @time(i32* null)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 7), align 8
  store i32 4, i32* @header_size, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @global_bayes, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @global_bayes, i32 0, i32 2), align 8
  %13 = call i32 @qhtbl_init(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @global_bayes, i32 0, i32 0))
  %14 = load i32, i32* @max_words, align 4
  %15 = call i32 @qhtbl_set_size(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @global_bayes, i32 0, i32 0), i32 %14)
  store i32 0, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @fd, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** @fd, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i32 @lseek(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i32 -4, i32* %5, align 4
  %35 = load i32*, i32** @fd, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @read(i32 %37, %struct.TYPE_10__* @header, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %16
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %54

54:                                               ; preds = %43, %16
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 0), align 8
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.TYPE_10__* @qmalloc(i32 %60)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 6), align 8
  %62 = load i32*, i32** @fd, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 6), align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @read(i32 %64, %struct.TYPE_10__* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %54
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  br label %81

81:                                               ; preds = %71, %54
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 2), align 8
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 1), align 4
  store i32 %84, i32* @log_split_min, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 2), align 8
  store i32 %85, i32* @log_split_max, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 3), align 4
  store i32 %86, i32* @log_split_mod, align 4
  %87 = call i32 @get_index_header_size(%struct.TYPE_10__* @header)
  %88 = sext i32 %87 to i64
  %89 = sub i64 %88, 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* @header_size, align 4
  %91 = call i32 @bayes_global_load(%struct.TYPE_11__* @global_bayes)
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 5), align 8
  %93 = call i32 @black_list_load(i64 %92)
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @header, i32 0, i32 4), align 8
  store i64 %94, i64* @teach_messages, align 8
  %95 = load i32, i32* @verbosity, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %108

97:                                               ; preds = %81
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32*, i32** @fd, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @log_split_min, align 4
  %103 = load i32, i32* @log_split_max, align 4
  %104 = load i32, i32* @log_split_mod, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %97, %81
  store i32 1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %9
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @qhtbl_init(i32*) #1

declare dso_local i32 @qhtbl_set_size(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @qmalloc(i32) #1

declare dso_local i32 @get_index_header_size(%struct.TYPE_10__*) #1

declare dso_local i32 @bayes_global_load(%struct.TYPE_11__*) #1

declare dso_local i32 @black_list_load(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
