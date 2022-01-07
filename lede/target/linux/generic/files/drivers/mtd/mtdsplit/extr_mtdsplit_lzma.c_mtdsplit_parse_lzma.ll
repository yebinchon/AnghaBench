; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_lzma.c_mtdsplit_parse_lzma.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_lzma.c_mtdsplit_parse_lzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.lzma_header = type { i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LZMA_NR_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_lzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_lzma(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.lzma_header, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mtd_partition*, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 16, i64* %9, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %16 = load i64, i64* %9, align 8
  %17 = bitcast %struct.lzma_header* %8 to i8*
  %18 = call i32 @mtd_read(%struct.mtd_info* %15, i32 0, i64 %16, i64* %10, i8* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %4, align 4
  br label %114

23:                                               ; preds = %3
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %114

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.lzma_header, %struct.lzma_header* %8, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 225
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %114

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.lzma_header, %struct.lzma_header* %8, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = call i64 @get_unaligned_le32(i32* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @is_power_of_2(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %114

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.lzma_header, %struct.lzma_header* %8, i32 0, i32 1
  %52 = call i64 @get_unaligned_le32(i32* %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %114

58:                                               ; preds = %50
  %59 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %60 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @mtd_find_rootfs_from(%struct.mtd_info* %59, i32 %62, i64 %65, i64* %11, i32* null)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %4, align 4
  br label %114

71:                                               ; preds = %58
  %72 = load i32, i32* @LZMA_NR_PARTS, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 24
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.mtd_partition* @kzalloc(i32 %75, i32 %76)
  store %struct.mtd_partition* %77, %struct.mtd_partition** %13, align 8
  %78 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %79 = icmp ne %struct.mtd_partition* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %114

83:                                               ; preds = %71
  %84 = load i32, i32* @KERNEL_PART_NAME, align 4
  %85 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %86 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %85, i64 0
  %87 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %89 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %88, i64 0
  %90 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %93 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %92, i64 0
  %94 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %96 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %97 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %96, i64 1
  %98 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %101 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %100, i64 1
  %102 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %104 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = sub i64 %105, %106
  %108 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %109 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %108, i64 1
  %110 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  %111 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %112 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %111, %struct.mtd_partition** %112, align 8
  %113 = load i32, i32* @LZMA_NR_PARTS, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %83, %80, %69, %55, %47, %36, %27, %21
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info*, i32, i64, i64*, i32*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
