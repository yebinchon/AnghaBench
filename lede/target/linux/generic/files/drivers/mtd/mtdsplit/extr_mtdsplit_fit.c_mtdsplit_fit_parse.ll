; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_fit.c_mtdsplit_fit_parse.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_fit.c_mtdsplit_fit_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64, i32 }
%struct.mtd_partition = type { i64, i64, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.fdt_header = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"read error in \22%s\22 at offset 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"short read in \22%s\22\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OF_DT_HEADER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"no valid FIT image found in \22%s\22 at offset %llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"FIT image in \22%s\22 at offset %llx has null size\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"no rootfs found after FIT image in \22%s\22\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_PART_NAME = common dso_local global i32 0, align 4
@ROOTFS_PART_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_fit_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_fit_parse(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.fdt_header, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mtd_partition*, align 8
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 8, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %62, %3
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = bitcast %struct.fdt_header* %8 to i8*
  %28 = call i32 @mtd_read(%struct.mtd_info* %25, i32 0, i64 %26, i64* %10, i8* %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35)
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %4, align 4
  br label %146

38:                                               ; preds = %24
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %146

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @be32_to_cpu(i32 %51)
  %53 = load i64, i64* @OF_DT_HEADER, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %58, i64 %59)
  br label %62

61:                                               ; preds = %49
  br label %68

62:                                               ; preds = %55
  %63 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %11, align 8
  br label %18

68:                                               ; preds = %61, %18
  %69 = load i64, i64* %11, align 8
  store i64 %69, i64* %12, align 8
  %70 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @be32_to_cpu(i32 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %78, i64 %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %146

83:                                               ; preds = %68
  %84 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %85, %86
  %88 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mtd_find_rootfs_from(%struct.mtd_info* %84, i64 %87, i64 %90, i64* %14, i32* null)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %4, align 4
  br label %146

100:                                              ; preds = %83
  %101 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = sub i64 %103, %104
  store i64 %105, i64* %15, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.mtd_partition* @kzalloc(i32 48, i32 %106)
  store %struct.mtd_partition* %107, %struct.mtd_partition** %16, align 8
  %108 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %109 = icmp ne %struct.mtd_partition* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %146

113:                                              ; preds = %100
  %114 = load i32, i32* @KERNEL_PART_NAME, align 4
  %115 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %116 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %115, i64 0
  %117 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %120 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %119, i64 0
  %121 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %124 = call i64 @mtd_rounddown_to_eb(i64 %122, %struct.mtd_info* %123)
  %125 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %126 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %124, %127
  %129 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %130 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %129, i64 0
  %131 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %130, i32 0, i32 1
  store i64 %128, i64* %131, align 8
  %132 = load i32, i32* @ROOTFS_PART_NAME, align 4
  %133 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %134 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %133, i64 1
  %135 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %138 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %137, i64 1
  %139 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %138, i32 0, i32 0
  store i64 %136, i64* %139, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %142 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %141, i64 1
  %143 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %142, i32 0, i32 1
  store i64 %140, i64* %143, align 8
  %144 = load %struct.mtd_partition*, %struct.mtd_partition** %16, align 8
  %145 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %144, %struct.mtd_partition** %145, align 8
  store i32 2, i32* %4, align 4
  br label %146

146:                                              ; preds = %113, %110, %94, %75, %42, %31
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info*, i64, i64, i64*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

declare dso_local i64 @mtd_rounddown_to_eb(i64, %struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
