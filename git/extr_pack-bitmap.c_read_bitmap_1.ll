; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_read_bitmap_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_read_bitmap_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }
%struct.bitmap_index = type { i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to load bitmap index (corrupted?)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ewah_bitmap* (%struct.bitmap_index*)* @read_bitmap_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ewah_bitmap* @read_bitmap_1(%struct.bitmap_index* %0) #0 {
  %2 = alloca %struct.ewah_bitmap*, align 8
  %3 = alloca %struct.bitmap_index*, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca i64, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %3, align 8
  %6 = call %struct.ewah_bitmap* (...) @ewah_pool_new()
  store %struct.ewah_bitmap* %6, %struct.ewah_bitmap** %4, align 8
  %7 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %8 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %9 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %12 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %16 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %19 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = call i64 @ewah_read_mmap(%struct.ewah_bitmap* %7, i64 %14, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %28 = call i32 @ewah_pool_free(%struct.ewah_bitmap* %27)
  store %struct.ewah_bitmap* null, %struct.ewah_bitmap** %2, align 8
  br label %36

29:                                               ; preds = %1
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %32 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  store %struct.ewah_bitmap* %35, %struct.ewah_bitmap** %2, align 8
  br label %36

36:                                               ; preds = %29, %25
  %37 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  ret %struct.ewah_bitmap* %37
}

declare dso_local %struct.ewah_bitmap* @ewah_pool_new(...) #1

declare dso_local i64 @ewah_read_mmap(%struct.ewah_bitmap*, i64, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ewah_pool_free(%struct.ewah_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
