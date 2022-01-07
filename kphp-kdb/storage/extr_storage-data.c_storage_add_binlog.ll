; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_add_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_storage_add_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i64, i32, i64, i32, i32, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"absolute filename for binlog %s is too long. %m\0A\00", align 1
@STORAGE_ERR_PATH_TOO_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"read_volume_info (%s) return error code %d.\0A\00", align 1
@MAX_VOLUME_BINLOGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Found too many binlogs for volume_id = %lld (max binlogs = %d).\0A\00", align 1
@STORAGE_ERR_TOO_MANY_BINLOGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [157 x i8] c"More than one binlog file for volume_id = %lld in directory %s. Hint: your could change extention from .bin for something else for hiding old binlog files.\0A\00", align 1
@Dirs = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_add_binlog(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @realpath(i8* %21, i8* %20)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @STORAGE_ERR_PATH_TOO_LONG, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %172

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @read_volume_info(i8* %30, i64* %10, i64* %11, i32* %13)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %172

39:                                               ; preds = %29
  %40 = load i64, i64* %10, align 8
  %41 = call %struct.TYPE_7__* @get_volume_f(i64 %40, i32 1)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %15, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %64, %39
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %52, i64 %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strcmp(i8* %49, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %172

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MAX_VOLUME_BINLOGS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* @MAX_VOLUME_BINLOGS, align 4
  %76 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %74, i32 %75)
  %77 = load i32, i32* @STORAGE_ERR_TOO_MANY_BINLOGS, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %172

78:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %108, %78
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Dirs, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.3, i64 0, i64 0), i64 %98, i32 %104)
  %106 = load i32, i32* @STORAGE_ERR_TOO_MANY_BINLOGS, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %172

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %79

111:                                              ; preds = %79
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = call i32 @pthread_mutex_lock(i32* %113)
  %115 = call %struct.TYPE_8__* @tszmalloc0(i32 48)
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %16, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %119, i64 %123
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %124, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = shl i32 %136, 56
  store i32 %137, i32* %135, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = or i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @strdup(i8* %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 4
  %149 = load i64, i64* %11, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 6
  store i32 -1, i32* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  store i32 -1, i32* %158, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = call i32 @pthread_mutex_unlock(i32* %164)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %167 = call i32 @storage_evaluate_priorities(%struct.TYPE_7__* %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %172

172:                                              ; preds = %111, %97, %73, %61, %34, %25
  %173 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @realpath(i8*, i8*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @read_volume_info(i8*, i64*, i64*, i32*) #2

declare dso_local %struct.TYPE_7__* @get_volume_f(i64, i32) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local %struct.TYPE_8__* @tszmalloc0(i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @storage_evaluate_priorities(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
