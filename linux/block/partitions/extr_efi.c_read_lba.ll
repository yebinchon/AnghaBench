; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_read_lba.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_read_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { %struct.block_device* }
%struct.block_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parsed_partitions*, i32, i32*, i64)* @read_lba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_lba(%struct.parsed_partitions* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.parsed_partitions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.block_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %17 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %16, i32 0, i32 0
  %18 = load %struct.block_device*, %struct.block_device** %17, align 8
  store %struct.block_device* %18, %struct.block_device** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.block_device*, %struct.block_device** %11, align 8
  %21 = call i32 @bdev_logical_block_size(%struct.block_device* %20)
  %22 = sdiv i32 %21, 512
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.block_device*, %struct.block_device** %11, align 8
  %29 = call i32 @last_lba(%struct.block_device* %28)
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %4
  store i64 0, i64* %5, align 8
  br label %73

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  store i32 512, i32* %13, align 4
  %37 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = call i8* @read_part_sector(%struct.parsed_partitions* %37, i32 %38, i32* %14)
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %71

44:                                               ; preds = %36
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @memcpy(i32* %53, i8* %54, i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @put_dev_sector(i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %8, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %33

71:                                               ; preds = %43, %33
  %72 = load i64, i64* %10, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %31
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @last_lba(%struct.block_device*) #1

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
