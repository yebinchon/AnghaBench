; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_make_soft_version.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_make_soft_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_partition_entry = type { i64 }
%struct.soft_version = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i8* }
%struct.tm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"soft-version\00", align 1
@source_date_epoch = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @make_soft_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_soft_version(i32 %0) #0 {
  %2 = alloca %struct.image_partition_entry, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.soft_version*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i64 @alloc_image_partition(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 88)
  %8 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.soft_version*
  store %struct.soft_version* %11, %struct.soft_version** %4, align 8
  %12 = load i32, i32* @source_date_epoch, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @source_date_epoch, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  br label %24

17:                                               ; preds = %1
  %18 = call i64 @time(i64* %5)
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @error(i32 1, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %14
  %25 = call %struct.tm* @localtime(i64* %5)
  store %struct.tm* %25, %struct.tm** %6, align 8
  %26 = call i8* @htonl(i32 12)
  %27 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %28 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %27, i32 0, i32 11
  store i8* %26, i8** %28, align 8
  %29 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %30 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %32 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %31, i32 0, i32 0
  store i32 255, i32* %32, align 8
  %33 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %34 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %36 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %35, i32 0, i32 8
  store i64 0, i64* %36, align 8
  %37 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %38 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.tm*, %struct.tm** %6, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 1900, %41
  %43 = sdiv i32 %42, 100
  %44 = call i8* @bcd(i32 %43)
  %45 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %46 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.tm*, %struct.tm** %6, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %49, 100
  %51 = call i8* @bcd(i32 %50)
  %52 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %53 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.tm*, %struct.tm** %6, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i8* @bcd(i32 %57)
  %59 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %60 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.tm*, %struct.tm** %6, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @bcd(i32 %63)
  %65 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %66 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %70 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.soft_version*, %struct.soft_version** %4, align 8
  %72 = getelementptr inbounds %struct.soft_version, %struct.soft_version* %71, i32 0, i32 1
  store i32 255, i32* %72, align 4
  %73 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  ret i64 %74
}

declare dso_local i64 @alloc_image_partition(i8*, i32) #1

declare dso_local i64 @time(i64*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
