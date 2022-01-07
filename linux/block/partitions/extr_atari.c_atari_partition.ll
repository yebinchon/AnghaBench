; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_atari.c_atari_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_atari.c_atari_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rootsector = type { %struct.partition_info*, %struct.partition_info* }
%struct.partition_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" AHDI\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"XGM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" XGM<\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" block %ld read failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"\0AFirst sub-partition in extended partition is not valid!\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\0AID of extended partition is not XGM!\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\0AMaximum number of partitions reached!\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atari_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rootsector*, align 8
  %6 = alloca %struct.partition_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rootsector*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  %13 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %14 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @bdev_logical_block_size(%struct.TYPE_4__* %15)
  %17 = icmp ne i32 %16, 512
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %236

19:                                               ; preds = %1
  %20 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %21 = call %struct.rootsector* @read_part_sector(%struct.parsed_partitions* %20, i32 0, i32* %4)
  store %struct.rootsector* %21, %struct.rootsector** %5, align 8
  %22 = load %struct.rootsector*, %struct.rootsector** %5, align 8
  %23 = icmp ne %struct.rootsector* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %236

25:                                               ; preds = %19
  %26 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %27 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 9
  store i32 %33, i32* %8, align 4
  %34 = load %struct.rootsector*, %struct.rootsector** %5, align 8
  %35 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %34, i32 0, i32 1
  %36 = load %struct.partition_info*, %struct.partition_info** %35, align 8
  %37 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %36, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @VALID_PARTITION(%struct.partition_info* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %25
  %42 = load %struct.rootsector*, %struct.rootsector** %5, align 8
  %43 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %42, i32 0, i32 1
  %44 = load %struct.partition_info*, %struct.partition_info** %43, align 8
  %45 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %44, i64 1
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @VALID_PARTITION(%struct.partition_info* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %41
  %50 = load %struct.rootsector*, %struct.rootsector** %5, align 8
  %51 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %50, i32 0, i32 1
  %52 = load %struct.partition_info*, %struct.partition_info** %51, align 8
  %53 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %52, i64 2
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @VALID_PARTITION(%struct.partition_info* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %49
  %58 = load %struct.rootsector*, %struct.rootsector** %5, align 8
  %59 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %58, i32 0, i32 1
  %60 = load %struct.partition_info*, %struct.partition_info** %59, align 8
  %61 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %60, i64 3
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @VALID_PARTITION(%struct.partition_info* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @put_dev_sector(i32 %66)
  store i32 0, i32* %2, align 4
  br label %236

68:                                               ; preds = %57, %49, %41, %25
  %69 = load %struct.rootsector*, %struct.rootsector** %5, align 8
  %70 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %69, i32 0, i32 1
  %71 = load %struct.partition_info*, %struct.partition_info** %70, align 8
  %72 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %71, i64 0
  store %struct.partition_info* %72, %struct.partition_info** %6, align 8
  %73 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %74 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = call i32 @strlcat(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %223, %68
  %79 = load %struct.partition_info*, %struct.partition_info** %6, align 8
  %80 = load %struct.rootsector*, %struct.rootsector** %5, align 8
  %81 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %80, i32 0, i32 1
  %82 = load %struct.partition_info*, %struct.partition_info** %81, align 8
  %83 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %82, i64 4
  %84 = icmp ult %struct.partition_info* %79, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %88 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br label %91

91:                                               ; preds = %85, %78
  %92 = phi i1 [ false, %78 ], [ %90, %85 ]
  br i1 %92, label %93, label %228

93:                                               ; preds = %91
  %94 = load %struct.partition_info*, %struct.partition_info** %6, align 8
  %95 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %223

100:                                              ; preds = %93
  %101 = load %struct.partition_info*, %struct.partition_info** %6, align 8
  %102 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @memcmp(i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.partition_info*, %struct.partition_info** %6, align 8
  %110 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be32_to_cpu(i32 %111)
  %113 = load %struct.partition_info*, %struct.partition_info** %6, align 8
  %114 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @be32_to_cpu(i32 %115)
  %117 = call i32 @put_partition(%struct.parsed_partitions* %107, i32 %108, i32 %112, i32 %116)
  br label %223

118:                                              ; preds = %100
  %119 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %120 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = call i32 @strlcat(i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load %struct.partition_info*, %struct.partition_info** %6, align 8
  %125 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @be32_to_cpu(i32 %126)
  store i32 %127, i32* %7, align 4
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %118, %216
  %129 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call %struct.rootsector* @read_part_sector(%struct.parsed_partitions* %129, i32 %130, i32* %11)
  store %struct.rootsector* %131, %struct.rootsector** %10, align 8
  %132 = load %struct.rootsector*, %struct.rootsector** %10, align 8
  %133 = icmp ne %struct.rootsector* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @put_dev_sector(i32 %137)
  store i32 -1, i32* %2, align 4
  br label %236

139:                                              ; preds = %128
  %140 = load %struct.rootsector*, %struct.rootsector** %10, align 8
  %141 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %140, i32 0, i32 1
  %142 = load %struct.partition_info*, %struct.partition_info** %141, align 8
  %143 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %142, i64 0
  %144 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %139
  %149 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @put_dev_sector(i32 %150)
  br label %217

152:                                              ; preds = %139
  %153 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.rootsector*, %struct.rootsector** %10, align 8
  %157 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %156, i32 0, i32 1
  %158 = load %struct.partition_info*, %struct.partition_info** %157, align 8
  %159 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %158, i64 0
  %160 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @be32_to_cpu(i32 %161)
  %163 = add nsw i32 %155, %162
  %164 = load %struct.rootsector*, %struct.rootsector** %10, align 8
  %165 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %164, i32 0, i32 1
  %166 = load %struct.partition_info*, %struct.partition_info** %165, align 8
  %167 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %166, i64 0
  %168 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @be32_to_cpu(i32 %169)
  %171 = call i32 @put_partition(%struct.parsed_partitions* %153, i32 %154, i32 %163, i32 %170)
  %172 = load %struct.rootsector*, %struct.rootsector** %10, align 8
  %173 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %172, i32 0, i32 1
  %174 = load %struct.partition_info*, %struct.partition_info** %173, align 8
  %175 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %174, i64 1
  %176 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %152
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @put_dev_sector(i32 %181)
  br label %217

183:                                              ; preds = %152
  %184 = load %struct.rootsector*, %struct.rootsector** %10, align 8
  %185 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %184, i32 0, i32 1
  %186 = load %struct.partition_info*, %struct.partition_info** %185, align 8
  %187 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %186, i64 1
  %188 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @memcmp(i32 %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %183
  %193 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @put_dev_sector(i32 %194)
  br label %217

196:                                              ; preds = %183
  %197 = load %struct.rootsector*, %struct.rootsector** %10, align 8
  %198 = getelementptr inbounds %struct.rootsector, %struct.rootsector* %197, i32 0, i32 1
  %199 = load %struct.partition_info*, %struct.partition_info** %198, align 8
  %200 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %199, i64 1
  %201 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @be32_to_cpu(i32 %202)
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %203, %204
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @put_dev_sector(i32 %206)
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  %210 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %211 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %209, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %196
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %217

216:                                              ; preds = %196
  br label %128

217:                                              ; preds = %214, %192, %180, %148
  %218 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %219 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @PAGE_SIZE, align 4
  %222 = call i32 @strlcat(i32 %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %217, %106, %99
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %9, align 4
  %226 = load %struct.partition_info*, %struct.partition_info** %6, align 8
  %227 = getelementptr inbounds %struct.partition_info, %struct.partition_info* %226, i32 1
  store %struct.partition_info* %227, %struct.partition_info** %6, align 8
  br label %78

228:                                              ; preds = %91
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @put_dev_sector(i32 %229)
  %231 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %232 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @PAGE_SIZE, align 4
  %235 = call i32 @strlcat(i32 %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %234)
  store i32 1, i32* %2, align 4
  br label %236

236:                                              ; preds = %228, %134, %65, %24, %18
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @bdev_logical_block_size(%struct.TYPE_4__*) #1

declare dso_local %struct.rootsector* @read_part_sector(%struct.parsed_partitions*, i32, i32*) #1

declare dso_local i32 @VALID_PARTITION(%struct.partition_info*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
