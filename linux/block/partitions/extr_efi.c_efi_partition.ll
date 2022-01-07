; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_efi_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_efi_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.partition_meta_info, i32 }
%struct.partition_meta_info = type { i32*, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"GUID Partition Table is valid!  Yea!\0A\00", align 1
@PARTITION_LINUX_RAID_GUID = common dso_local global i32 0, align 4
@ADDPART_FLAG_RAID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.partition_meta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  %14 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %15 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bdev_logical_block_size(i32 %16)
  %18 = sdiv i32 %17, 512
  store i32 %18, i32* %7, align 4
  %19 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %20 = call i32 @find_valid_gpt(%struct.parsed_partitions* %19, %struct.TYPE_9__** %4, %struct.TYPE_9__** %5)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %22, %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 @kfree(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = call i32 @kfree(%struct.TYPE_9__* %31)
  store i32 0, i32* %2, align 4
  br label %213

33:                                               ; preds = %25
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %200, %33
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %45 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = icmp slt i32 %43, %47
  br label %49

49:                                               ; preds = %42, %35
  %50 = phi i1 [ false, %35 ], [ %48, %42 ]
  br i1 %50, label %51, label %203

51:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le64_to_cpu(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le64_to_cpu(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @le64_to_cpu(i32 %71)
  %73 = sub i32 %65, %72
  %74 = zext i32 %73 to i64
  %75 = add i64 %74, 1
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %82 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @last_lba(i32 %83)
  %85 = call i32 @is_pte_valid(%struct.TYPE_9__* %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %51
  br label %200

88:                                               ; preds = %51
  %89 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %7, align 4
  %97 = mul i32 %95, %96
  %98 = call i32 @put_partition(%struct.parsed_partitions* %89, i32 %91, i32 %94, i32 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PARTITION_LINUX_RAID_GUID, align 4
  %106 = call i32 @efi_guidcmp(i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %88
  %109 = load i32, i32* @ADDPART_FLAG_RAID, align 4
  %110 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %111 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i32 %109, i32* %117, align 8
  br label %118

118:                                              ; preds = %108, %88
  %119 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %120 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store %struct.partition_meta_info* %126, %struct.partition_meta_info** %8, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load %struct.partition_meta_info*, %struct.partition_meta_info** %8, align 8
  %133 = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @efi_guid_to_str(i32* %131, i32 %134)
  %136 = load %struct.partition_meta_info*, %struct.partition_meta_info** %8, align 8
  %137 = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @ARRAY_SIZE(i32* %138)
  %140 = sub nsw i64 %139, 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @ARRAY_SIZE(i32* %146)
  %148 = call i32 @min(i64 %140, i64 %147)
  store i32 %148, i32* %10, align 4
  %149 = load %struct.partition_meta_info*, %struct.partition_meta_info** %8, align 8
  %150 = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %180, %118
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %191

159:                                              ; preds = %155
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 255
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %13, align 1
  %172 = load i8, i8* %13, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %159
  %176 = load i8, i8* %13, align 1
  %177 = call i32 @isprint(i8 signext %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  store i8 33, i8* %13, align 1
  br label %180

180:                                              ; preds = %179, %175, %159
  %181 = load i8, i8* %13, align 1
  %182 = sext i8 %181 to i32
  %183 = load %struct.partition_meta_info*, %struct.partition_meta_info** %8, align 8
  %184 = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %155

191:                                              ; preds = %155
  %192 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %193 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %192, i32 0, i32 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  br label %200

200:                                              ; preds = %191, %87
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %35

203:                                              ; preds = %49
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = call i32 @kfree(%struct.TYPE_9__* %204)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = call i32 @kfree(%struct.TYPE_9__* %206)
  %208 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %209 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @PAGE_SIZE, align 4
  %212 = call i32 @strlcat(i32 %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  store i32 1, i32* %2, align 4
  br label %213

213:                                              ; preds = %203, %28
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @find_valid_gpt(%struct.parsed_partitions*, %struct.TYPE_9__**, %struct.TYPE_9__**) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @is_pte_valid(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @last_lba(i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i32 @efi_guidcmp(i32, i32) #1

declare dso_local i32 @efi_guid_to_str(i32*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
