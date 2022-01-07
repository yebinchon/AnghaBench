; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_mac.c_mac_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_mac.c_mac_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mac_partition = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.mac_driver_desc = type { i32, i32 }

@MAC_DRIVER_MAGIC = common dso_local global i32 0, align 4
@MAC_PARTITION_MAGIC = common dso_local global i32 0, align 4
@DISK_MAX_PARTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" [mac]\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Linux_RAID\00", align 1
@ADDPART_FLAG_RAID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAC_STATUS_BOOTABLE = common dso_local global i32 0, align 4
@powermac = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mac_partition*, align 8
  %12 = alloca %struct.mac_driver_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  %14 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %15 = call i8* @read_part_sector(%struct.parsed_partitions* %14, i32 0, i32* %4)
  %16 = bitcast i8* %15 to %struct.mac_driver_desc*
  store %struct.mac_driver_desc* %16, %struct.mac_driver_desc** %12, align 8
  %17 = load %struct.mac_driver_desc*, %struct.mac_driver_desc** %12, align 8
  %18 = icmp ne %struct.mac_driver_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %177

20:                                               ; preds = %1
  %21 = load %struct.mac_driver_desc*, %struct.mac_driver_desc** %12, align 8
  %22 = getelementptr inbounds %struct.mac_driver_desc, %struct.mac_driver_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be16_to_cpu(i32 %23)
  %25 = load i32, i32* @MAC_DRIVER_MAGIC, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @put_dev_sector(i32 %28)
  store i32 0, i32* %2, align 4
  br label %177

30:                                               ; preds = %20
  %31 = load %struct.mac_driver_desc*, %struct.mac_driver_desc** %12, align 8
  %32 = getelementptr inbounds %struct.mac_driver_desc, %struct.mac_driver_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @put_dev_sector(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @round_down(i32 %37, i32 512)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %40 = load i32, i32* %9, align 4
  %41 = udiv i32 %40, 512
  %42 = call i8* @read_part_sector(%struct.parsed_partitions* %39, i32 %41, i32* %4)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %177

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = urem i32 %47, 512
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = add i64 %50, 48
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %177

56:                                               ; preds = %46
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = bitcast i8* %60 to %struct.mac_partition*
  store %struct.mac_partition* %61, %struct.mac_partition** %11, align 8
  %62 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %63 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be16_to_cpu(i32 %64)
  %66 = load i32, i32* @MAC_PARTITION_MAGIC, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @put_dev_sector(i32 %69)
  store i32 0, i32* %2, align 4
  br label %177

71:                                               ; preds = %56
  %72 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %73 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @be32_to_cpu(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @DISK_MAX_PARTS, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @put_dev_sector(i32 %83)
  store i32 0, i32* %2, align 4
  br label %177

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %88 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %93 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %98 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = call i32 @strlcat(i32 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %100)
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %166, %96
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %169

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul i32 %107, %108
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @put_dev_sector(i32 %110)
  %112 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sdiv i32 %113, 512
  %115 = call i8* @read_part_sector(%struct.parsed_partitions* %112, i32 %114, i32* %4)
  store i8* %115, i8** %5, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %106
  store i32 -1, i32* %2, align 4
  br label %177

119:                                              ; preds = %106
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %13, align 4
  %122 = srem i32 %121, 512
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = bitcast i8* %124 to %struct.mac_partition*
  store %struct.mac_partition* %125, %struct.mac_partition** %11, align 8
  %126 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %127 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @be16_to_cpu(i32 %128)
  %130 = load i32, i32* @MAC_PARTITION_MAGIC, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %119
  br label %169

133:                                              ; preds = %119
  %134 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %137 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @be32_to_cpu(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = udiv i32 %140, 512
  %142 = mul i32 %139, %141
  %143 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %144 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @be32_to_cpu(i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = udiv i32 %147, 512
  %149 = mul i32 %146, %148
  %150 = call i32 @put_partition(%struct.parsed_partitions* %134, i32 %135, i32 %142, i32 %149)
  %151 = load %struct.mac_partition*, %struct.mac_partition** %11, align 8
  %152 = getelementptr inbounds %struct.mac_partition, %struct.mac_partition* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @strncasecmp(i64 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %133
  %157 = load i32, i32* @ADDPART_FLAG_RAID, align 4
  %158 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %159 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %158, i32 0, i32 3
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %157, i32* %164, align 4
  br label %165

165:                                              ; preds = %156, %133
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %102

169:                                              ; preds = %132, %102
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @put_dev_sector(i32 %170)
  %172 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %173 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PAGE_SIZE, align 4
  %176 = call i32 @strlcat(i32 %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  store i32 1, i32* %2, align 4
  br label %177

177:                                              ; preds = %169, %118, %82, %68, %55, %45, %27, %19
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i64 @strncasecmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
