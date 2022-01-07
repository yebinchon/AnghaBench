; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_wrgg.c_mtdsplit_parse_wrgg.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_wrgg.c_mtdsplit_parse_wrgg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.wrgg03_header = type { i32, i32 }
%struct.wrg_header = type { i32 }

@EIO = common dso_local global i32 0, align 4
@WRGG03_MAGIC = common dso_local global i32 0, align 4
@WRG_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WRGG_MIN_ROOTFS_OFFS = common dso_local global i32 0, align 4
@WRGG_NR_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_wrgg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_wrgg(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.wrgg03_header, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mtd_partition*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 8, i64* %9, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = load i64, i64* %9, align 8
  %18 = bitcast %struct.wrgg03_header* %8 to i8*
  %19 = call i32 @mtd_read(%struct.mtd_info* %16, i32 0, i64 %17, i64* %10, i8* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %4, align 4
  br label %123

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %123

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load i32, i32* @WRGG03_MAGIC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be32_to_cpu(i32 %40)
  %42 = add i64 %38, %41
  store i64 %42, i64* %11, align 8
  br label %60

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load i32, i32* @WRG_MAGIC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = bitcast %struct.wrgg03_header* %8 to %struct.wrg_header*
  %51 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = add i64 4, %54
  store i64 %55, i64* %11, align 8
  br label %59

56:                                               ; preds = %43
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %123

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %123

69:                                               ; preds = %60
  %70 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %71 = load i32, i32* @WRGG_MIN_ROOTFS_OFFS, align 4
  %72 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @mtd_find_rootfs_from(%struct.mtd_info* %70, i32 %71, i64 %74, i64* %12, i32* %14)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %4, align 4
  br label %123

80:                                               ; preds = %69
  %81 = load i32, i32* @WRGG_NR_PARTS, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 24
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.mtd_partition* @kzalloc(i32 %84, i32 %85)
  store %struct.mtd_partition* %86, %struct.mtd_partition** %13, align 8
  %87 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %88 = icmp ne %struct.mtd_partition* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %123

92:                                               ; preds = %80
  %93 = load i32, i32* @KERNEL_PART_NAME, align 4
  %94 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %95 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %94, i64 0
  %96 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %98 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %97, i64 0
  %99 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %102 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %101, i64 0
  %103 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %102, i32 0, i32 1
  store i64 %100, i64* %103, align 8
  %104 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %105 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %106 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %105, i64 1
  %107 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %110 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %109, i64 1
  %111 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %113 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = sub i64 %114, %115
  %117 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %118 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %117, i64 1
  %119 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  %120 = load %struct.mtd_partition*, %struct.mtd_partition** %13, align 8
  %121 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %120, %struct.mtd_partition** %121, align 8
  %122 = load i32, i32* @WRGG_NR_PARTS, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %92, %89, %78, %66, %56, %28, %22
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info*, i32, i64, i64*, i32*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
