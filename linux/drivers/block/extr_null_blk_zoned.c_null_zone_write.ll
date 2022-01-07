; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_zone_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_zone_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nullb_device* }
%struct.nullb_device = type { %struct.blk_zone* }
%struct.blk_zone = type { i32, i32, i32, i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb_cmd*, i32, i32)* @null_zone_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_zone_write(%struct.nullb_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nullb_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nullb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.blk_zone*, align 8
  store %struct.nullb_cmd* %0, %struct.nullb_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nullb_cmd*, %struct.nullb_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nullb_device*, %struct.nullb_device** %14, align 8
  store %struct.nullb_device* %15, %struct.nullb_device** %8, align 8
  %16 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @null_zone_no(%struct.nullb_device* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %20 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %19, i32 0, i32 0
  %21 = load %struct.blk_zone*, %struct.blk_zone** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %21, i64 %23
  store %struct.blk_zone* %24, %struct.blk_zone** %10, align 8
  %25 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %26 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %71 [
    i32 130, label %28
    i32 131, label %33
    i32 129, label %33
    i32 128, label %70
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* @BLK_STS_IOERR, align 4
  %30 = load %struct.nullb_cmd*, %struct.nullb_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %3, %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %36 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %43 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 131
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %48 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %47, i32 0, i32 0
  store i32 129, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %52 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %56 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %59 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %62 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %60, %63
  %65 = icmp eq i32 %57, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load %struct.blk_zone*, %struct.blk_zone** %10, align 8
  %68 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %67, i32 0, i32 0
  store i32 130, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %49
  br label %73

70:                                               ; preds = %3
  br label %73

71:                                               ; preds = %3
  %72 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %70, %69
  %74 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %71, %39, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @null_zone_no(%struct.nullb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
