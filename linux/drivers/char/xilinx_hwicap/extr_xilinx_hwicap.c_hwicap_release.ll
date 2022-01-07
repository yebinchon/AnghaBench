; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.hwicap_drvdata* }
%struct.hwicap_drvdata = type { i32, i32, i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hwicap_drvdata*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hwicap_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwicap_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.hwicap_drvdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %9, align 8
  store %struct.hwicap_drvdata* %10, %struct.hwicap_drvdata** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %12 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %15 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %2
  %19 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %20 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %32, %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %27 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %37 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.hwicap_drvdata*, i32*, i32)*, i32 (%struct.hwicap_drvdata*, i32*, i32)** %39, align 8
  %41 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %42 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %43 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = bitcast i64* %44 to i32*
  %46 = call i32 %40(%struct.hwicap_drvdata* %41, i32* %45, i32 1)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %58

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %53 = call i32 @hwicap_command_desync(%struct.hwicap_drvdata* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %56, %49
  %59 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %60 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %62 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hwicap_command_desync(%struct.hwicap_drvdata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
