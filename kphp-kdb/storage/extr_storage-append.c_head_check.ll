; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_head_check.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_head_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@STORAGE_LEV_START_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s isn't prefix of %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"First 36 bytes are equal (%s, %s).\0A\00", align 1
@crc32_complement = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @head_check(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STORAGE_LEV_START_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -10, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load i64, i64* @STORAGE_LEV_START_SIZE, align 8
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i64, i64* @STORAGE_LEV_START_SIZE, align 8
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load i64, i64* @STORAGE_LEV_START_SIZE, align 8
  %24 = call i64 @vk_pread(%struct.TYPE_5__* %22, i8* %19, i64 %23, i32 0)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -7, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

27:                                               ; preds = %16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = load i64, i64* @STORAGE_LEV_START_SIZE, align 8
  %30 = call i64 @vk_pread(%struct.TYPE_5__* %28, i8* %21, i64 %29, i32 0)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -8, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

33:                                               ; preds = %27
  %34 = load i64, i64* @STORAGE_LEV_START_SIZE, align 8
  %35 = call i64 @memcmp(i8* %19, i8* %21, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  store i32 -9, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

45:                                               ; preds = %33
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i64, i64* @STORAGE_LEV_START_SIZE, align 8
  %54 = call i32 @crc32_partial(i8* %19, i64 %53, i32 -1)
  store i32 %54, i32* @crc32_complement, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %45, %37, %32, %26
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vk_pread(%struct.TYPE_5__*, i8*, i64, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @kprintf(i8*, i32, i32) #2

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #2

declare dso_local i32 @crc32_partial(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
