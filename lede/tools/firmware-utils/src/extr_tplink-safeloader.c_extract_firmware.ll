; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_extract_firmware.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_extract_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i64, i64, i32* }
%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can not read input firmware %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to stat output directory %s\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Given output directory is not a directory %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Error can not read the partition table (fwup-ptn)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @extract_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_firmware(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [16 x %struct.flash_partition_entry], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = bitcast [16 x %struct.flash_partition_entry]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 384, i1 false)
  store i64 16, i64* %6, align 8
  store i64 4116, i64* %7, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @stat(i8* %12, %struct.stat* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @stat(i8* %20, %struct.stat* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @errno, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @S_IFDIR, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @errno, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i8*, i8** %3, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds [16 x %struct.flash_partition_entry], [16 x %struct.flash_partition_entry]* %5, i64 0, i64 0
  %44 = call i64 @read_partition_table(i32* %41, i64 %42, %struct.flash_partition_entry* %43, i32 16, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %38
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %84, %48
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [16 x %struct.flash_partition_entry], [16 x %struct.flash_partition_entry]* %5, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x %struct.flash_partition_entry], [16 x %struct.flash_partition_entry]* %5, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x %struct.flash_partition_entry], [16 x %struct.flash_partition_entry]* %5, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %84

76:                                               ; preds = %68, %61, %54
  %77 = load i32*, i32** %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x %struct.flash_partition_entry], [16 x %struct.flash_partition_entry]* %5, i64 0, i64 %80
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @extract_firmware_partition(i32* %77, i64 %78, %struct.flash_partition_entry* %81, i8* %82)
  br label %84

84:                                               ; preds = %76, %75
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %49

87:                                               ; preds = %49
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @error(i32, i32, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @read_partition_table(i32*, i64, %struct.flash_partition_entry*, i32, i32) #2

declare dso_local i32 @extract_firmware_partition(i32*, i64, %struct.flash_partition_entry*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
