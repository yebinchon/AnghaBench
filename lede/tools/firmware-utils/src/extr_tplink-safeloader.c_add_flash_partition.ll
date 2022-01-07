; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_add_flash_partition.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_add_flash_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i64, i64, i32* }

@.str = private unnamed_addr constant [36 x i8] c"No free flash part entry available.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to allocate memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flash_partition_entry*, i64, i8*, i64, i64)* @add_flash_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_flash_partition(%struct.flash_partition_entry* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.flash_partition_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.flash_partition_entry* %0, %struct.flash_partition_entry** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %34, %5
  %13 = load i32, i32* %11, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %19 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %24 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %29 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %39

33:                                               ; preds = %27, %22, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %38 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %37, i32 1
  store %struct.flash_partition_entry* %38, %struct.flash_partition_entry** %6, align 8
  br label %12

39:                                               ; preds = %32, %12
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %48, 1
  %50 = call i32* @calloc(i32 1, i64 %49)
  %51 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %52 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %54 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46
  %60 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %61 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = call i32 @memcpy(i8* %63, i8* %64, i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %70 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %6, align 8
  %73 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  ret i32 0
}

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
