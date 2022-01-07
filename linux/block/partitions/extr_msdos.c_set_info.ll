; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_set_info.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.partition_meta_info }
%struct.partition_meta_info = type { i64*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%08x-%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parsed_partitions*, i32, i32)* @set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_info(%struct.parsed_partitions* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.partition_meta_info*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %9 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.partition_meta_info* %14, %struct.partition_meta_info** %7, align 8
  %15 = load %struct.partition_meta_info*, %struct.partition_meta_info** %7, align 8
  %16 = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @snprintf(i32 %17, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.partition_meta_info*, %struct.partition_meta_info** %7, align 8
  %22 = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %26 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
