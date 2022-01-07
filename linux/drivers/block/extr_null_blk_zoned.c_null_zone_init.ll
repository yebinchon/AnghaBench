; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_zone_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_zone_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_device = type { i32, i32, i32, i32, %struct.blk_zone*, i64 }
%struct.blk_zone = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"zone_size must be power-of-two\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZONE_SIZE_SHIFT = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"changed the number of conventional zones to %u\00", align 1
@BLK_ZONE_TYPE_CONVENTIONAL = common dso_local global i32 0, align 4
@BLK_ZONE_COND_NOT_WP = common dso_local global i32 0, align 4
@BLK_ZONE_TYPE_SEQWRITE_REQ = common dso_local global i32 0, align 4
@BLK_ZONE_COND_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @null_zone_init(%struct.nullb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nullb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_zone*, align 8
  %8 = alloca %struct.blk_zone*, align 8
  store %struct.nullb_device* %0, %struct.nullb_device** %3, align 8
  %9 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %10 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = mul nsw i32 %12, 1024
  %14 = mul nsw i32 %13, 1024
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %16 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @is_power_of_2(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %164

24:                                               ; preds = %1
  %25 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %26 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ZONE_SIZE_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %31 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SECTOR_SHIFT, align 4
  %34 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %35 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ilog2(i32 %36)
  %38 = add nsw i32 %33, %37
  %39 = ashr i32 %32, %38
  %40 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %41 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %43 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load i32, i32* @__GFP_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.blk_zone* @kvmalloc_array(i32 %44, i32 20, i32 %47)
  %49 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %50 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %49, i32 0, i32 4
  store %struct.blk_zone* %48, %struct.blk_zone** %50, align 8
  %51 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %52 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %51, i32 0, i32 4
  %53 = load %struct.blk_zone*, %struct.blk_zone** %52, align 8
  %54 = icmp ne %struct.blk_zone* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %24
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %164

58:                                               ; preds = %24
  %59 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %60 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %63 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %68 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %72 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %74 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %66, %58
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %119, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %81 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %78
  %85 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %86 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %85, i32 0, i32 4
  %87 = load %struct.blk_zone*, %struct.blk_zone** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %87, i64 %89
  store %struct.blk_zone* %90, %struct.blk_zone** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %93 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %95 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %98 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %100 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %103 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %107 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @BLK_ZONE_TYPE_CONVENTIONAL, align 4
  %109 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %110 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @BLK_ZONE_COND_NOT_WP, align 4
  %112 = load %struct.blk_zone*, %struct.blk_zone** %7, align 8
  %113 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %115 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %84
  %120 = load i32, i32* %6, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %78

122:                                              ; preds = %78
  %123 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %124 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %160, %122
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %129 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ult i32 %127, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %126
  %133 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %134 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %133, i32 0, i32 4
  %135 = load %struct.blk_zone*, %struct.blk_zone** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %135, i64 %137
  store %struct.blk_zone* %138, %struct.blk_zone** %8, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %141 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %143 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  %144 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %145 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %148 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @BLK_ZONE_TYPE_SEQWRITE_REQ, align 4
  %150 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %151 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @BLK_ZONE_COND_EMPTY, align 4
  %153 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %154 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %156 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %132
  %161 = load i32, i32* %6, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %126

163:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %55, %20
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local %struct.blk_zone* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
