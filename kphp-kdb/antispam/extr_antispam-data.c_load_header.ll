; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_load_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"error reading header from index file: incorrect Index->offset = %d: %m\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"error reading header from index file: read %d bytes instead of %d at position %d: %m\0A\00", align 1
@ANTISPAM_INDEX_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"bad antispam index file header\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"magic = 0x%08x instead of 0x%08x // offset = %d\0A\00", align 1
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"header loaded %d %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @load_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_header(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 20)
  %15 = call i32 @time(i32* null)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %3, align 4
  br label %100

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @lseek(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %100

41:                                               ; preds = %23
  store i32 20, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @read(i32 %42, %struct.TYPE_8__* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %100

56:                                               ; preds = %41
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ANTISPAM_INDEX_MAGIC, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @stderr, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ANTISPAM_INDEX_MAGIC, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %100

73:                                               ; preds = %56
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* @log_split_min, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* @log_split_max, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* @log_split_mod, align 4
  %87 = load i32, i32* @verbosity, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %98

89:                                               ; preds = %73
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @log_split_min, align 4
  %93 = load i32, i32* @log_split_max, align 4
  %94 = load i32, i32* @log_split_mod, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %89, %73
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %62, %49, %36, %12
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @read(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
