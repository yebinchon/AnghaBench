; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_zone_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_zone_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nullb_device* }
%struct.nullb_device = type { i64, %struct.blk_zone* }
%struct.blk_zone = type { i32, i32, i8*, i32 }

@BLK_ZONE_TYPE_CONVENTIONAL = common dso_local global i32 0, align 4
@BLK_ZONE_COND_EMPTY = common dso_local global i8* null, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_NOTSUPP = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb_cmd*, i32)* @null_zone_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_zone_reset(%struct.nullb_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nullb_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nullb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_zone*, align 8
  %9 = alloca i64, align 8
  store %struct.nullb_cmd* %0, %struct.nullb_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nullb_device*, %struct.nullb_device** %13, align 8
  store %struct.nullb_device* %14, %struct.nullb_device** %6, align 8
  %15 = load %struct.nullb_device*, %struct.nullb_device** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @null_zone_no(%struct.nullb_device* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nullb_device*, %struct.nullb_device** %6, align 8
  %19 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %18, i32 0, i32 1
  %20 = load %struct.blk_zone*, %struct.blk_zone** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %20, i64 %22
  store %struct.blk_zone* %23, %struct.blk_zone** %8, align 8
  %24 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @req_op(i32 %26)
  switch i32 %27, label %80 [
    i32 128, label %28
    i32 129, label %63
  ]

28:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.nullb_device*, %struct.nullb_device** %6, align 8
  %32 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %36, i64 %37
  %39 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BLK_ZONE_TYPE_CONVENTIONAL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %59

44:                                               ; preds = %35
  %45 = load i8*, i8** @BLK_ZONE_COND_EMPTY, align 8
  %46 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %46, i64 %47
  %49 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %50, i64 %51
  %53 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %55, i64 %56
  %58 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %44, %43
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %29

62:                                               ; preds = %29
  br label %82

63:                                               ; preds = %2
  %64 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %65 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BLK_ZONE_TYPE_CONVENTIONAL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %70, i32* %3, align 4
  br label %84

71:                                               ; preds = %63
  %72 = load i8*, i8** @BLK_ZONE_COND_EMPTY, align 8
  %73 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %74 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %76 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %79 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %82

80:                                               ; preds = %2
  %81 = load i32, i32* @BLK_STS_NOTSUPP, align 4
  store i32 %81, i32* %3, align 4
  br label %84

82:                                               ; preds = %71, %62
  %83 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %80, %69
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @null_zone_no(%struct.nullb_device*, i32) #1

declare dso_local i32 @req_op(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
