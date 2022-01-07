; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_aix.c_read_lba.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_aix.c_read_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parsed_partitions*, i64, i32*, i64)* @read_lba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_lba(%struct.parsed_partitions* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.parsed_partitions*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = udiv i64 %18, 512
  %20 = add i64 %17, %19
  %21 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %22 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @last_lba(i32 %23)
  %25 = icmp ugt i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16, %4
  store i64 0, i64* %5, align 8
  br label %69

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  store i32 512, i32* %11, align 4
  %32 = load %struct.parsed_partitions*, %struct.parsed_partitions** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %7, align 8
  %35 = trunc i64 %33 to i32
  %36 = call i8* @read_part_sector(%struct.parsed_partitions* %32, i32 %35, i32* %12)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %67

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @memcpy(i32* %49, i8* %50, i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @put_dev_sector(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %9, align 8
  br label %28

67:                                               ; preds = %39, %28
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %67, %26
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local i64 @last_lba(i32) #1

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
