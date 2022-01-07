; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_check.h_read_part_sector.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_check.h_read_part_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parsed_partitions*, i64, i32*)* @read_part_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_part_sector(%struct.parsed_partitions* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.parsed_partitions*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %10 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @get_capacity(i32 %13)
  %15 = icmp sge i64 %8, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %18 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  store i8* null, i8** %4, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %21 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @read_dev_sector(%struct.TYPE_2__* %22, i64 %23, i32* %24)
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i8*, i8** %4, align 8
  ret i8* %27
}

declare dso_local i64 @get_capacity(i32) #1

declare dso_local i8* @read_dev_sector(%struct.TYPE_2__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
