; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_make_empty_binlogs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_make_empty_binlogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%%s%%0%dd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@LEV_STORAGE_START_SIZE = common dso_local global i64 0, align 8
@LEV_START = common dso_local global i32 0, align 4
@STORAGE_SCHEMA_V1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"fopen (%s, \22wb\22) failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"writing to %s failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_empty_binlogs(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca [65536 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.lev_start*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %22 = call i64 @strlen(i8* %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %93, %4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %28
  %33 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* %34, i8* %35, i32 %36)
  %38 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* @LEV_STORAGE_START_SIZE, align 8
  %41 = call %struct.lev_start* @malloc(i64 %40)
  store %struct.lev_start* %41, %struct.lev_start** %14, align 8
  %42 = load i32, i32* @LEV_START, align 4
  %43 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %44 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @STORAGE_SCHEMA_V1, align 4
  %46 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %47 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %49 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %48, i32 0, i32 0
  store i32 12, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %52 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %55 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %59 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %61 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 (i32*, ...) @memcpy(i32* %62, i64* %13, i32 8)
  %64 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %65 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = call i32 (i32*, ...) @memcpy(i32* %67, i32* %8, i32 4)
  %69 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %70 = call i32* @fopen(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %32
  %74 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %75 = call i32 @kprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  store i32 -2, i32* %5, align 4
  br label %97

76:                                               ; preds = %32
  %77 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %78 = load i64, i64* @LEV_STORAGE_START_SIZE, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i64 @fwrite(%struct.lev_start* %77, i32 1, i64 %78, i32* %79)
  %81 = load i64, i64* @LEV_STORAGE_START_SIZE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %85 = call i32 @kprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %84)
  store i32 -3, i32* %5, align 4
  br label %97

86:                                               ; preds = %76
  %87 = load %struct.lev_start*, %struct.lev_start** %14, align 8
  %88 = call i32 @free(%struct.lev_start* %87)
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %28

96:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %83, %73
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.lev_start* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i64 @fwrite(%struct.lev_start*, i32, i64, i32*) #1

declare dso_local i32 @free(%struct.lev_start*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
