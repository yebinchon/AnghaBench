; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_prefix_check.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_prefix_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.lev_crc32 = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s is smaller than %s\0A\00", align 1
@STORAGE_LEV_START_SIZE = common dso_local global i32 0, align 4
@local_id = common dso_local global i64 0, align 8
@crc32_complement = common dso_local global i32 0, align 4
@LEV_CRC32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"didn't find LEV_CRC32 record in %s at offset %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"last lev_crc32 record don't matched.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Last %d bytes are equal (%s, %s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prefix_check(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_crc32, align 8
  %8 = alloca %struct.lev_crc32, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  store i32 -2, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 20
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26
  store i32 -1, i32* %3, align 4
  br label %104

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = call i32 @head_check(%struct.TYPE_7__* %38, %struct.TYPE_7__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %104

45:                                               ; preds = %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @STORAGE_LEV_START_SIZE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i64 0, i64* @local_id, align 8
  store i32 0, i32* %3, align 4
  br label %104

52:                                               ; preds = %45
  store i32 16, i32* %9, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @vk_pread(%struct.TYPE_7__* %59, %struct.lev_crc32* %7, i32 %60, i64 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 -3, i32* %3, align 4
  br label %104

65:                                               ; preds = %52
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @vk_pread(%struct.TYPE_7__* %66, %struct.lev_crc32* %8, i32 %67, i64 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -4, i32* %3, align 4
  br label %104

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = xor i32 %74, -1
  store i32 %75, i32* @crc32_complement, align 4
  %76 = getelementptr inbounds %struct.lev_crc32, %struct.lev_crc32* %7, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LEV_CRC32, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %10, align 8
  %85 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %84)
  store i32 -5, i32* %3, align 4
  br label %104

86:                                               ; preds = %72
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @memcmp(%struct.lev_crc32* %7, %struct.lev_crc32* %8, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -6, i32* %3, align 4
  br label %104

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %96, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @crc32_complement, align 4
  %103 = call i32 @crc32_partial(%struct.lev_crc32* %7, i32 %101, i32 %102)
  store i32 %103, i32* @crc32_complement, align 4
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %92, %90, %80, %71, %64, %51, %43, %36, %18
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @head_check(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i64 @vk_pread(%struct.TYPE_7__*, %struct.lev_crc32*, i32, i64) #1

declare dso_local i64 @memcmp(%struct.lev_crc32*, %struct.lev_crc32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @crc32_partial(%struct.lev_crc32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
