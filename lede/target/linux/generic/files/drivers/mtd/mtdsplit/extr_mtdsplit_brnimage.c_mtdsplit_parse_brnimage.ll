; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_brnimage.c_mtdsplit_parse_brnimage.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_brnimage.c_mtdsplit_parse_brnimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }

@BRNIMAGE_ALIGN_BYTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BRNIMAGE_FOOTER_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BRNIMAGE_MIN_OVERHEAD = common dso_local global i64 0, align 8
@BRNIMAGE_MAX_OVERHEAD = common dso_local global i64 0, align 8
@BRNIMAGE_NR_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_brnimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_brnimage(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @mtd_check_rootfs_magic(%struct.mtd_info* %22, i64 %23, i32* null)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %33

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* @BRNIMAGE_ALIGN_BYTES, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %10, align 8
  br label %15

33:                                               ; preds = %27, %15
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %4, align 4
  br label %130

38:                                               ; preds = %33
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %130

47:                                               ; preds = %38
  %48 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @BRNIMAGE_FOOTER_SIZE, align 8
  %51 = sub i64 %49, %50
  %52 = bitcast i32* %9 to i8*
  %53 = call i32 @mtd_read(%struct.mtd_info* %48, i64 %51, i32 4, i64* %13, i8* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %4, align 4
  br label %130

58:                                               ; preds = %47
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %130

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @le32_to_cpu(i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @BRNIMAGE_MIN_OVERHEAD, align 8
  %70 = sub i64 %68, %69
  %71 = icmp ugt i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %130

75:                                               ; preds = %64
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @BRNIMAGE_MAX_OVERHEAD, align 8
  %79 = sub i64 %77, %78
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %130

84:                                               ; preds = %75
  %85 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %87, %88
  %90 = load i64, i64* @BRNIMAGE_FOOTER_SIZE, align 8
  %91 = sub i64 %89, %90
  store i64 %91, i64* %11, align 8
  %92 = load i32, i32* @BRNIMAGE_NR_PARTS, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 24
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.mtd_partition* @kzalloc(i32 %95, i32 %96)
  store %struct.mtd_partition* %97, %struct.mtd_partition** %8, align 8
  %98 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %99 = icmp ne %struct.mtd_partition* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %84
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %130

103:                                              ; preds = %84
  %104 = load i32, i32* @KERNEL_PART_NAME, align 4
  %105 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %106 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %105, i64 0
  %107 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %109 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %108, i64 0
  %110 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %113 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %112, i64 0
  %114 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  %115 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %116 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %117 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %116, i64 1
  %118 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %121 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %120, i64 1
  %122 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %125 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %124, i64 1
  %126 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %125, i32 0, i32 1
  store i64 %123, i64* %126, align 8
  %127 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %128 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %127, %struct.mtd_partition** %128, align 8
  %129 = load i32, i32* @BRNIMAGE_NR_PARTS, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %103, %100, %81, %72, %61, %56, %44, %36
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @mtd_check_rootfs_magic(%struct.mtd_info*, i64, i32*) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
