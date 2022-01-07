; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_validate_tocblocks.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_validate_tocblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.ldmdb = type { %struct.tocblock, %struct.privhead }
%struct.tocblock = type { i64, i64, i64, i64 }
%struct.privhead = type { i64 }

@ldm_validate_tocblocks.off = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Disk read failed for TOCBLOCK %d.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to find a valid TOCBLOCK.\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"The bitmaps are out of range.  Giving up.\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"TOCBLOCKs 0 and %d do not match.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Validated %d TOCBLOCKs successfully.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, i64, %struct.ldmdb*)* @ldm_validate_tocblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_validate_tocblocks(%struct.parsed_partitions* %0, i64 %1, %struct.ldmdb* %2) #0 {
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ldmdb*, align 8
  %7 = alloca [4 x %struct.tocblock*], align 16
  %8 = alloca %struct.privhead*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ldmdb* %2, %struct.ldmdb** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %15 = icmp ne %struct.parsed_partitions* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %18 = icmp ne %struct.ldmdb* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %25 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %24, i32 0, i32 1
  store %struct.privhead* %25, %struct.privhead** %8, align 8
  %26 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %27 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %26, i32 0, i32 0
  %28 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 0
  store %struct.tocblock* %27, %struct.tocblock** %28, align 16
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.tocblock* @kmalloc_array(i32 3, i32 32, i32 %29)
  %31 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 1
  store %struct.tocblock* %30, %struct.tocblock** %31, align 8
  %32 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 1
  %33 = load %struct.tocblock*, %struct.tocblock** %32, align 8
  %34 = icmp ne %struct.tocblock* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  %36 = call i32 (i8*, ...) @ldm_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %144

37:                                               ; preds = %20
  %38 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 1
  %39 = load %struct.tocblock*, %struct.tocblock** %38, align 8
  %40 = bitcast %struct.tocblock* %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 32
  %42 = bitcast i32* %41 to %struct.tocblock*
  %43 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 2
  store %struct.tocblock* %42, %struct.tocblock** %43, align 16
  %44 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 2
  %45 = load %struct.tocblock*, %struct.tocblock** %44, align 16
  %46 = bitcast %struct.tocblock* %45 to i32*
  %47 = getelementptr inbounds i32, i32* %46, i64 32
  %48 = bitcast i32* %47 to %struct.tocblock*
  %49 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 3
  store %struct.tocblock* %48, %struct.tocblock** %49, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %82, %37
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* @ldm_validate_tocblocks.off, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %55, %60
  %62 = call i32* @read_part_sector(%struct.parsed_partitions* %54, i64 %61, i32* %9)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ldm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %82

68:                                               ; preds = %53
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 %71
  %73 = load %struct.tocblock*, %struct.tocblock** %72, align 8
  %74 = call i64 @ldm_parse_tocblock(i32* %69, %struct.tocblock* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @put_dev_sector(i32 %80)
  br label %82

82:                                               ; preds = %79, %65
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %50

85:                                               ; preds = %50
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @ldm_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %144

90:                                               ; preds = %85
  %91 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 0
  %92 = load %struct.tocblock*, %struct.tocblock** %91, align 16
  %93 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 0
  %96 = load %struct.tocblock*, %struct.tocblock** %95, align 16
  %97 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  %100 = load %struct.privhead*, %struct.privhead** %8, align 8
  %101 = getelementptr inbounds %struct.privhead, %struct.privhead* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %118, label %104

104:                                              ; preds = %90
  %105 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 0
  %106 = load %struct.tocblock*, %struct.tocblock** %105, align 16
  %107 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 0
  %110 = load %struct.tocblock*, %struct.tocblock** %109, align 16
  %111 = getelementptr inbounds %struct.tocblock, %struct.tocblock* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %108, %112
  %114 = load %struct.privhead*, %struct.privhead** %8, align 8
  %115 = getelementptr inbounds %struct.privhead, %struct.privhead* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %104, %90
  %119 = call i32 (i8*, ...) @ldm_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %144

120:                                              ; preds = %104
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %138, %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 0
  %127 = load %struct.tocblock*, %struct.tocblock** %126, align 16
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 %129
  %131 = load %struct.tocblock*, %struct.tocblock** %130, align 8
  %132 = call i32 @ldm_compare_tocblocks(%struct.tocblock* %127, %struct.tocblock* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %11, align 4
  %136 = call i32 (i8*, ...) @ldm_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %144

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %121

141:                                              ; preds = %121
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @ldm_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  store i32 1, i32* %13, align 4
  br label %144

144:                                              ; preds = %141, %134, %118, %88, %35
  %145 = getelementptr inbounds [4 x %struct.tocblock*], [4 x %struct.tocblock*]* %7, i64 0, i64 1
  %146 = load %struct.tocblock*, %struct.tocblock** %145, align 8
  %147 = call i32 @kfree(%struct.tocblock* %146)
  %148 = load i32, i32* %13, align 4
  ret i32 %148
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.tocblock* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ldm_crit(i8*, ...) #1

declare dso_local i32* @read_part_sector(%struct.parsed_partitions*, i64, i32*) #1

declare dso_local i32 @ldm_error(i8*, i32) #1

declare dso_local i64 @ldm_parse_tocblock(i32*, %struct.tocblock*) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @ldm_compare_tocblocks(%struct.tocblock*, %struct.tocblock*) #1

declare dso_local i32 @ldm_debug(i8*, i32) #1

declare dso_local i32 @kfree(%struct.tocblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
