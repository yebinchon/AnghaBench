; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_load_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__*, i64, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@HINTS_INDEX_MAGIC = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@header_size = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"error reading header from index file: read %d bytes instead of %d at position 0: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bad hints index file header\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"magic = 0x%08x // offset = %d\0A\00", align 1
@rating_num = common dso_local global i64 0, align 8
@fading = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"error reading header from index file: read %d bytes instead of %d: %m\0A\00", align 1
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"header loaded %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_header(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = icmp eq %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @HINTS_INDEX_MAGIC, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 18), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 17), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 16), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 14), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 5), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 6), align 8
  %12 = call i32 @time(i32* null)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 13), align 8
  store i32 4, i32* @header_size, align 4
  store i32 0, i32* %2, align 4
  br label %142

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @fd, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** @fd, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i32 @lseek(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i32 -4, i32* %5, align 4
  %32 = load i32*, i32** @fd, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @read(i32 %34, %struct.TYPE_9__* @header, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %13
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  store i32 0, i32* %2, align 4
  br label %142

50:                                               ; preds = %13
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %52 = load i32, i32* @HINTS_INDEX_MAGIC, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  %61 = call i32 @assert(i32 0)
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 6), align 8
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 5), align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call %struct.TYPE_9__* @dl_malloc0(i32 %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 11), align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 7), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %62
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 7), align 8
  %82 = load i64, i64* @rating_num, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %80, %62
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 8), align 8
  %88 = load i32, i32* @fading, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32*, i32** @fd, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 11), align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @read(i32 %95, %struct.TYPE_9__* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %86
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  store i32 0, i32* %2, align 4
  br label %142

112:                                              ; preds = %86
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 12), align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 11), align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @crc32_check_and_repair(%struct.TYPE_9__* %116, i32 %117, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 9), i32 1)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 9), align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 10), align 8
  store i32 %119, i32* %7, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 10), align 8
  %120 = call i32 @crc32_check_and_repair(%struct.TYPE_9__* @header, i32 -4, i32* %7, i32 1)
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 3), align 4
  %123 = call i32 @assert(i32 %122)
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 2), align 8
  store i32 %124, i32* @log_split_min, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 3), align 4
  store i32 %125, i32* @log_split_max, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 4), align 8
  store i32 %126, i32* @log_split_mod, align 4
  %127 = call i32 @get_index_header_size(%struct.TYPE_9__* @header)
  %128 = sext i32 %127 to i64
  %129 = sub i64 %128, 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* @header_size, align 4
  %131 = load i32, i32* @verbosity, align 4
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %141

133:                                              ; preds = %121
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32, i32* @log_split_min, align 4
  %136 = load i32, i32* @log_split_max, align 4
  %137 = load i32, i32* @log_split_mod, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %133, %121
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %102, %40, %10
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @dl_malloc0(i32) #1

declare dso_local i32 @crc32_check_and_repair(%struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @get_index_header_size(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
