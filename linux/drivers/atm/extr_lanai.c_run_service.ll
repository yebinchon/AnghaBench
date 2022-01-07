; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_run_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_run_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@ServWrite_Reg = common dso_local global i32 0, align 4
@ServRead_Reg = common dso_local global i32 0, align 4
@vcc_sklist_lock = common dso_local global i32 0, align 4
@iter_transmit = common dso_local global i32 0, align 4
@NUM_VCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_dev*)* @run_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_service(%struct.lanai_dev* %0) #0 {
  %2 = alloca %struct.lanai_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.lanai_dev* %0, %struct.lanai_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %7 = load i32, i32* @ServWrite_Reg, align 4
  %8 = call i32 @reg_read(%struct.lanai_dev* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %10 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %5, align 8
  br label %16

16:                                               ; preds = %54, %1
  %17 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %18 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %16
  %24 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %25 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %26 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %27, align 8
  %30 = ptrtoint i32* %28 to i32
  %31 = call i32 @le32_to_cpup(i32 %30)
  %32 = call i64 @handle_service(%struct.lanai_dev* %24, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  %37 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %38 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %42 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp uge i32* %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %23
  %47 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %48 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %52 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32* %50, i32** %53, align 8
  br label %54

54:                                               ; preds = %46, %23
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @ServRead_Reg, align 4
  %59 = call i32 @reg_write(%struct.lanai_dev* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = call i32 @read_lock(i32* @vcc_sklist_lock)
  %64 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %65 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %66 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @iter_transmit, align 4
  %69 = call i32 @vci_bitfield_iterate(%struct.lanai_dev* %64, i32 %67, i32 %68)
  %70 = load %struct.lanai_dev*, %struct.lanai_dev** %2, align 8
  %71 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NUM_VCI, align 4
  %74 = call i32 @bitmap_zero(i32 %72, i32 %73)
  %75 = call i32 @read_unlock(i32* @vcc_sklist_lock)
  br label %76

76:                                               ; preds = %62, %55
  ret void
}

declare dso_local i32 @reg_read(%struct.lanai_dev*, i32) #1

declare dso_local i64 @handle_service(%struct.lanai_dev*, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @reg_write(%struct.lanai_dev*, i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @vci_bitfield_iterate(%struct.lanai_dev*, i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
