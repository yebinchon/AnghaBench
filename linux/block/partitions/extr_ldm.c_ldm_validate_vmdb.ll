; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_validate_vmdb.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_validate_vmdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.ldmdb = type { %struct.tocblock, %struct.vmdb }
%struct.tocblock = type { i32 }
%struct.vmdb = type { i32, i32, i32 }

@OFF_VMDB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Disk read failed.\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Database is not in a consistent state.  Aborting.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"VBLKs start at offset 0x%04x.\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"VMDB exceeds allowed size specified by TOCBLOCK.  Database is corrupt.  Aborting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, i64, %struct.ldmdb*)* @ldm_validate_vmdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_validate_vmdb(%struct.parsed_partitions* %0, i64 %1, %struct.ldmdb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parsed_partitions*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ldmdb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmdb*, align 8
  %12 = alloca %struct.tocblock*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ldmdb* %2, %struct.ldmdb** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %14 = icmp ne %struct.parsed_partitions* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.ldmdb*, %struct.ldmdb** %7, align 8
  %17 = icmp ne %struct.ldmdb* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ true, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ldmdb*, %struct.ldmdb** %7, align 8
  %24 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %23, i32 0, i32 1
  store %struct.vmdb* %24, %struct.vmdb** %11, align 8
  %25 = load %struct.ldmdb*, %struct.ldmdb** %7, align 8
  %26 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %25, i32 0, i32 0
  store %struct.tocblock* %26, %struct.tocblock** %12, align 8
  %27 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @OFF_VMDB, align 8
  %30 = add i64 %28, %29
  %31 = call i32* @read_part_sector(%struct.parsed_partitions* %27, i64 %30, i32* %8)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %19
  %35 = call i32 @ldm_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %79

36:                                               ; preds = %19
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.vmdb*, %struct.vmdb** %11, align 8
  %39 = call i32 @ldm_parse_vmdb(i32* %37, %struct.vmdb* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %75

42:                                               ; preds = %36
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  %45 = call i32 @get_unaligned_be16(i32* %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @ldm_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %75

49:                                               ; preds = %42
  %50 = load %struct.vmdb*, %struct.vmdb** %11, align 8
  %51 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 512
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.vmdb*, %struct.vmdb** %11, align 8
  %56 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ldm_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.vmdb*, %struct.vmdb** %11, align 8
  %61 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vmdb*, %struct.vmdb** %11, align 8
  %64 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = load %struct.tocblock*, %struct.tocblock** %12, align 8
  %68 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 9
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = call i32 @ldm_crit(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  br label %75

74:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %72, %47, %41
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @put_dev_sector(i32 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %34
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @read_part_sector(%struct.parsed_partitions*, i64, i32*) #1

declare dso_local i32 @ldm_crit(i8*) #1

declare dso_local i32 @ldm_parse_vmdb(i32*, %struct.vmdb*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @ldm_info(i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
