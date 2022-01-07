; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_find_partition.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_find_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flash_partition_entry* (%struct.flash_partition_entry*, i64, i8*, i8*)* @find_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flash_partition_entry* @find_partition(%struct.flash_partition_entry* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.flash_partition_entry*, align 8
  %6 = alloca %struct.flash_partition_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.flash_partition_entry* %0, %struct.flash_partition_entry** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %26, %4
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %18 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  store %struct.flash_partition_entry* %24, %struct.flash_partition_entry** %5, align 8
  br label %34

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %30 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %29, i32 1
  store %struct.flash_partition_entry* %30, %struct.flash_partition_entry** %6, align 8
  br label %11

31:                                               ; preds = %11
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  store %struct.flash_partition_entry* null, %struct.flash_partition_entry** %5, align 8
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %5, align 8
  ret %struct.flash_partition_entry* %35
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
