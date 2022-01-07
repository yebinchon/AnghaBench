; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_get_vblks.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_get_vblks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.ldmdb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@frags = common dso_local global i32 0, align 4
@OFF_VMDB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Disk read failed.\00", align 1
@MAGIC_VBLK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected to find a VBLK.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_partitions*, i64, %struct.ldmdb*)* @ldm_get_vblks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_get_vblks(%struct.parsed_partitions* %0, i64 %1, %struct.ldmdb* %2) #0 {
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ldmdb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ldmdb* %2, %struct.ldmdb** %6, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @frags, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %20 = icmp ne %struct.parsed_partitions* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %23 = icmp ne %struct.ldmdb* %22, null
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %3
  %26 = phi i1 [ true, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %30 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 512, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %36 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 9
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %42 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %40, %44
  %46 = ashr i32 %45, 9
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %113, %25
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %116

52:                                               ; preds = %48
  %53 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @OFF_VMDB, align 8
  %56 = add i64 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = call i32* @read_part_sector(%struct.parsed_partitions* %53, i64 %59, i32* %15)
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  %64 = call i32 @ldm_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %119

65:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %103, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %66
  %71 = load i64, i64* @MAGIC_VBLK, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i64 @get_unaligned_be32(i32* %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @ldm_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %119

77:                                               ; preds = %70
  %78 = load i32*, i32** %14, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 14
  %80 = call i32 @get_unaligned_be16(i32* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %87 = call i32 @ldm_ldmdb_add(i32* %84, i32 %85, %struct.ldmdb* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %119

90:                                               ; preds = %83
  br label %102

91:                                               ; preds = %77
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @ldm_frag_add(i32* %95, i32 %96, i32* @frags)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %119

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %91
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %14, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %14, align 8
  br label %66

110:                                              ; preds = %66
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @put_dev_sector(i32 %111)
  store i32* null, i32** %14, align 8
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %48

116:                                              ; preds = %48
  %117 = load %struct.ldmdb*, %struct.ldmdb** %6, align 8
  %118 = call i32 @ldm_frag_commit(i32* @frags, %struct.ldmdb* %117)
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %116, %99, %89, %75, %63
  %120 = load i32*, i32** %14, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @put_dev_sector(i32 %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = call i32 @ldm_frag_free(i32* @frags)
  %127 = load i32, i32* %16, align 4
  ret i32 %127
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @read_part_sector(%struct.parsed_partitions*, i64, i32*) #1

declare dso_local i32 @ldm_crit(i8*) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @ldm_error(i8*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @ldm_ldmdb_add(i32*, i32, %struct.ldmdb*) #1

declare dso_local i32 @ldm_frag_add(i32*, i32, i32*) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @ldm_frag_commit(i32*, %struct.ldmdb*) #1

declare dso_local i32 @ldm_frag_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
