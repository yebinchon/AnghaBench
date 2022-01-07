; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_make_partition_table.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_make_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i8*, i32, i32 }
%struct.image_partition_entry = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"partition-table\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"partition %s base 0x%05x size 0x%05x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"flash partition table overflow?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (%struct.flash_partition_entry*)* @make_partition_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @make_partition_table(%struct.flash_partition_entry* %0) #0 {
  %2 = alloca %struct.image_partition_entry, align 8
  %3 = alloca %struct.flash_partition_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.flash_partition_entry* %0, %struct.flash_partition_entry** %3, align 8
  %9 = call { i32, i64 } @alloc_image_partition(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 2048)
  %10 = bitcast %struct.image_partition_entry* %2 to { i32, i64 }*
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { i32, i64 } %9, 0
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { i32, i64 } %9, 1
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 0, i8* %23, align 1
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  store i8 4, i8* %25, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  store i8 0, i8* %27, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  store i8 0, i8* %29, align 1
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %72, %1
  %32 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %32, i64 %33
  %35 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %46, i64 %47
  %49 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %3, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %51, i64 %52
  %54 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %56, i64 %57
  %59 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @snprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %55, i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, 1
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %38
  %67 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %38
  %69 = load i64, i64* %8, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %31

75:                                               ; preds = %31
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i8* %78, i32 255, i32 %84)
  %86 = bitcast %struct.image_partition_entry* %2 to { i32, i64 }*
  %87 = load { i32, i64 }, { i32, i64 }* %86, align 8
  ret { i32, i64 } %87
}

declare dso_local { i32, i64 } @alloc_image_partition(i8*, i32) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
