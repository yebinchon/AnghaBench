; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.xilly_channel* }
%struct.xilly_channel = type { i32, i32, i64*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fpga_buf_offset_reg = common dso_local global i64 0, align 8
@fpga_buf_ctrl_reg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @xillybus_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xillybus_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xilly_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  store %struct.xilly_channel* %13, %struct.xilly_channel** %8, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %18 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %114

26:                                               ; preds = %3
  %27 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %28 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %27, i32 0, i32 3
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %31 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %30, i32 0, i32 4
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %42 [
    i32 128, label %34
    i32 130, label %36
    i32 129, label %40
  ]

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %9, align 4
  br label %45

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %45

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %9, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %94

45:                                               ; preds = %40, %36, %34
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %48 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %94

57:                                               ; preds = %45
  %58 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %59 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %65 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %63, %66
  %68 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %69 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @fpga_buf_offset_reg, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @iowrite32(i32 %67, i64 %74)
  %76 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %77 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 1
  %80 = or i32 %79, 100663296
  %81 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %82 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @fpga_buf_ctrl_reg, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @iowrite32(i32 %80, i64 %87)
  %89 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %90 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %89, i32 0, i32 5
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %57, %54, %42
  %95 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %96 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %95, i32 0, i32 4
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %99 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %98, i32 0, i32 3
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %114

105:                                              ; preds = %94
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.file*, %struct.file** %5, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.xilly_channel*, %struct.xilly_channel** %8, align 8
  %110 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 3
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %105, %103, %23
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
