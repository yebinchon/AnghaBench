; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_sysv68.c_sysv68_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_sysv68.c_sysv68_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i8*, i32, i32 }
%struct.dkblk0 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.slice = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"MOTOROLA\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"sysV68: %s(s%u)\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"(s%u)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv68_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dkblk0*, align 8
  %10 = alloca %struct.slice*, align 8
  %11 = alloca [64 x i8], align 16
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  store i32 1, i32* %6, align 4
  %12 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %13 = call i8* @read_part_sector(%struct.parsed_partitions* %12, i32 0, i32* %7)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.dkblk0*
  store %struct.dkblk0* %19, %struct.dkblk0** %9, align 8
  %20 = load %struct.dkblk0*, %struct.dkblk0** %9, align 8
  %21 = getelementptr inbounds %struct.dkblk0, %struct.dkblk0* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @memcmp(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @put_dev_sector(i32 %27)
  store i32 0, i32* %2, align 4
  br label %119

29:                                               ; preds = %17
  %30 = load %struct.dkblk0*, %struct.dkblk0** %9, align 8
  %31 = getelementptr inbounds %struct.dkblk0, %struct.dkblk0* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.dkblk0*, %struct.dkblk0** %9, align 8
  %36 = getelementptr inbounds %struct.dkblk0, %struct.dkblk0* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @put_dev_sector(i32 %40)
  %42 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i8* @read_part_sector(%struct.parsed_partitions* %42, i32 %43, i32* %7)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %119

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %52 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %53 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %58 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i32 @strlcat(i32 %59, i8* %60, i32 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to %struct.slice*
  store %struct.slice* %64, %struct.slice** %10, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %106, %48
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %72 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %111

76:                                               ; preds = %69
  %77 = load %struct.slice*, %struct.slice** %10, align 8
  %78 = getelementptr inbounds %struct.slice, %struct.slice* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.slice*, %struct.slice** %10, align 8
  %86 = getelementptr inbounds %struct.slice, %struct.slice* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be32_to_cpu(i32 %87)
  %89 = load %struct.slice*, %struct.slice** %10, align 8
  %90 = getelementptr inbounds %struct.slice, %struct.slice* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = call i32 @put_partition(%struct.parsed_partitions* %83, i32 %84, i32 %88, i32 %92)
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %98 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = call i32 @strlcat(i32 %99, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %82, %76
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  %109 = load %struct.slice*, %struct.slice** %10, align 8
  %110 = getelementptr inbounds %struct.slice, %struct.slice* %109, i32 1
  store %struct.slice* %110, %struct.slice** %10, align 8
  br label %65

111:                                              ; preds = %75, %65
  %112 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %113 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = call i32 @strlcat(i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @put_dev_sector(i32 %117)
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %47, %26, %16
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
