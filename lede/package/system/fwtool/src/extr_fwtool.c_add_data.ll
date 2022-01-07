; ModuleID = '/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_add_data.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwimage_trailer = type { i32, i32 }

@FWIMAGE_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@firmware_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to open firmware file\0A\00", align 1
@metadata_file = common dso_local global i64 0, align 8
@signature_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @add_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_data(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fwimage_trailer, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = getelementptr inbounds %struct.fwimage_trailer, %struct.fwimage_trailer* %4, i32 0, i32 0
  store i32 -1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.fwimage_trailer, %struct.fwimage_trailer* %4, i32 0, i32 1
  %11 = load i32, i32* @FWIMAGE_MAGIC, align 4
  %12 = call i32 @cpu_to_be32(i32 %11)
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* @firmware_file, align 4
  %15 = load i32, i32* @firmware_file, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @msg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %27
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* @firmware_file, align 4
  %23 = call i32 @fread(i8* %21, i32 1, i32 512, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %34

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @trailer_update_crc(%struct.fwimage_trailer* %4, i8* %31, i32 %32)
  br label %20

34:                                               ; preds = %26
  %35 = load i64, i64* @metadata_file, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @add_metadata(%struct.fwimage_trailer* %4)
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %34
  %40 = load i64, i64* @signature_file, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @add_signature(%struct.fwimage_trailer* %4)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @firmware_file, align 4
  %50 = call i32 @fflush(i32 %49)
  %51 = load i32, i32* @firmware_file, align 4
  %52 = call i32 @fileno(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ftruncate(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @msg(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @trailer_update_crc(%struct.fwimage_trailer*, i8*, i32) #1

declare dso_local i32 @add_metadata(%struct.fwimage_trailer*) #1

declare dso_local i32 @add_signature(%struct.fwimage_trailer*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @fileno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
