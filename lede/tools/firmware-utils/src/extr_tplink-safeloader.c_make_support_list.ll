; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_make_support_list.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_make_support_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32, i32 }
%struct.image_partition_entry = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"support-list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.device_info*)* @make_support_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_support_list(%struct.device_info* %0) #0 {
  %2 = alloca %struct.image_partition_entry, align 8
  %3 = alloca %struct.device_info*, align 8
  %4 = alloca i64, align 8
  store %struct.device_info* %0, %struct.device_info** %3, align 8
  %5 = load %struct.device_info*, %struct.device_info** %3, align 8
  %6 = getelementptr inbounds %struct.device_info, %struct.device_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @strlen(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %9, 9
  %11 = call i32* @alloc_image_partition(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  store i32* %11, i32** %12, align 8
  %13 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @put32(i32* %14, i64 %15)
  %17 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = call i32 @memset(i32* %19, i32 0, i32 4)
  %21 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = load %struct.device_info*, %struct.device_info** %3, align 8
  %25 = getelementptr inbounds %struct.device_info, %struct.device_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @memcpy(i32* %23, i32 %26, i64 %27)
  %29 = load %struct.device_info*, %struct.device_info** %3, align 8
  %30 = getelementptr inbounds %struct.device_info, %struct.device_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 8
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %2, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  ret i32* %38
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32* @alloc_image_partition(i8*, i64) #1

declare dso_local i32 @put32(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
