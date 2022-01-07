; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_stream_read.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@backup_buff = common dso_local global i8* null, align 8
@io_buff = common dso_local global i8* null, align 8
@PREVSIZE = common dso_local global i64 0, align 8
@KFS_BINLOG_ZIP_CHUNK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"kfs_bz_decode file '%s' from offset %lld failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"kfs_bz_decode file '%s' from offset %lld retuned %d bytes, expected %d bytes.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"read '%s' from offset %lld fail. %m\0A\00", align 1
@stats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"read '%s' from offset %lld. Read %lld bytes of expected %lld.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"lseek (%d, 0, SEEK_CUR) = %lld\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64)* @stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_read(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = call i64 @stream_is_zipped(%struct.TYPE_9__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** @backup_buff, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** @io_buff, align 8
  %23 = load i64, i64* @PREVSIZE, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = icmp eq i8* %21, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** @io_buff, align 8
  %29 = icmp eq i8* %27, %28
  br label %30

30:                                               ; preds = %26, %20, %16
  %31 = phi i1 [ true, %20 ], [ true, %16 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* @KFS_BINLOG_ZIP_CHUNK_SIZE, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @KFS_BINLOG_ZIP_CHUNK_SIZE, align 8
  br label %41

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @kfs_bz_decode(%struct.TYPE_11__* %46, i64 %49, i8* %50, i32* %9, i32* %8)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %41
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, i32, i64, ...) @kprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63)
  store i32 -1, i32* %4, align 4
  br label %164

65:                                               ; preds = %41
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %7, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i64, i64* %7, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i8*, i32, i64, ...) @kprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %80, i32 %81, i32 %83)
  store i32 -1, i32* %4, align 4
  br label %164

85:                                               ; preds = %65
  br label %147

86:                                               ; preds = %3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @read(i32 %91, i8* %92, i64 %93)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %146

98:                                               ; preds = %86
  %99 = load i64, i64* %10, align 8
  %100 = icmp ult i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = call i64 @stream_tell(%struct.TYPE_9__* %109)
  %111 = call i32 (i8*, i32, i64, ...) @kprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %108, i64 %110)
  store i32 -1, i32* %4, align 4
  br label %164

112:                                              ; preds = %98
  %113 = load i64, i64* %10, align 8
  %114 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats, i32 0, i32 0), align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %113
  store i64 %120, i64* %118, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = call i64 @stream_tell(%struct.TYPE_9__* %128)
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 (i8*, i32, i64, ...) @kprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %127, i64 %129, i64 %130, i64 %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SEEK_CUR, align 4
  %144 = call i64 @lseek(i32 %142, i32 0, i32 %143)
  %145 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %137, i64 %144)
  store i32 -1, i32* %4, align 4
  br label %164

146:                                              ; preds = %86
  br label %147

147:                                              ; preds = %146, %85
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats, i32 0, i32 0), align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %149
  store i64 %156, i64* %154, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load i64, i64* %7, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %147, %112, %101, %70, %53
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @stream_is_zipped(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @kfs_bz_decode(%struct.TYPE_11__*, i64, i8*, i32*, i32*) #1

declare dso_local i32 @kprintf(i8*, i32, i64, ...) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @stream_tell(%struct.TYPE_9__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i64) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
