; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_validate_partition_table.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_validate_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.partition = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Disk read failed.\00", align 1
@MSDOS_LABEL_MAGIC = common dso_local global i32 0, align 4
@LDM_PARTITION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Found W2K dynamic disk partition type.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*)* @ldm_validate_partition_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_validate_partition_table(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.partition*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %10 = icmp ne %struct.parsed_partitions* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %15 = call i32* @read_part_sector(%struct.parsed_partitions* %14, i32 0, i32* %4)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @ldm_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 510
  %23 = bitcast i32* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @MSDOS_LABEL_MAGIC, align 4
  %26 = call i64 @cpu_to_le16(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %54

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 446
  %32 = bitcast i32* %31 to %struct.partition*
  store %struct.partition* %32, %struct.partition** %6, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %43, %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.partition*, %struct.partition** %6, align 8
  %38 = call i64 @SYS_IND(%struct.partition* %37)
  %39 = load i64, i64* @LDM_PARTITION, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  br label %48

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load %struct.partition*, %struct.partition** %6, align 8
  %47 = getelementptr inbounds %struct.partition, %struct.partition* %46, i32 1
  store %struct.partition* %47, %struct.partition** %6, align 8
  br label %33

48:                                               ; preds = %41, %33
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @ldm_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @put_dev_sector(i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i32 @ldm_info(i8*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @SYS_IND(%struct.partition*) #1

declare dso_local i32 @ldm_debug(i8*) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
