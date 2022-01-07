; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_service_buffer_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_service_buffer_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@SERVICE_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"allocated service buffer at %p, size %zu(%d)\0A\00", align 1
@ServWrite_Reg = common dso_local global i32 0, align 4
@ServiceStuff_Reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_dev*)* @service_buffer_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_buffer_allocate(%struct.lanai_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lanai_dev*, align 8
  store %struct.lanai_dev* %0, %struct.lanai_dev** %3, align 8
  %4 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %5 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %4, i32 0, i32 0
  %6 = load i32, i32* @SERVICE_ENTRIES, align 4
  %7 = mul nsw i32 %6, 4
  %8 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %9 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @lanai_buf_allocate(%struct.TYPE_4__* %5, i32 %7, i32 8, i32 %10)
  %12 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %13 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %25 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %29 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %28, i32 0, i32 0
  %30 = call i32 @lanai_buf_size(%struct.TYPE_4__* %29)
  %31 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %32 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %31, i32 0, i32 0
  %33 = call i32 @lanai_buf_size_cardorder(%struct.TYPE_4__* %32)
  %34 = call i32 @DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %30, i32 %33)
  %35 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %36 = load i32, i32* @ServWrite_Reg, align 4
  %37 = call i32 @reg_write(%struct.lanai_dev* %35, i32 0, i32 %36)
  %38 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %39 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %40 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %39, i32 0, i32 0
  %41 = call i32 @lanai_buf_size_cardorder(%struct.TYPE_4__* %40)
  %42 = call i32 @SSTUFF_SET_SIZE(i32 %41)
  %43 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %44 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @SSTUFF_SET_ADDR(i32 %46)
  %48 = or i32 %42, %47
  %49 = load i32, i32* @ServiceStuff_Reg, align 4
  %50 = call i32 @reg_write(%struct.lanai_dev* %38, i32 %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %23, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @lanai_buf_allocate(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32*, i32, i32) #1

declare dso_local i32 @lanai_buf_size(%struct.TYPE_4__*) #1

declare dso_local i32 @lanai_buf_size_cardorder(%struct.TYPE_4__*) #1

declare dso_local i32 @reg_write(%struct.lanai_dev*, i32, i32) #1

declare dso_local i32 @SSTUFF_SET_SIZE(i32) #1

declare dso_local i32 @SSTUFF_SET_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
