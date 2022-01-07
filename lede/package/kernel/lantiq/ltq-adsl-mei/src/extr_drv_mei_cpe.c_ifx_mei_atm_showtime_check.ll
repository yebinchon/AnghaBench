; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_ifx_mei_atm_showtime_check.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_ifx_mei_atm_showtime_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_cell_info = type { i32, i32* }

@g_tx_link_rate = common dso_local global i32* null, align 8
@g_xdata_addr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifx_mei_atm_showtime_check(i32* %0, %struct.port_cell_info* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.port_cell_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.port_cell_info* %1, %struct.port_cell_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i32*, i32** @g_tx_link_rate, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32*, i32** @g_tx_link_rate, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.port_cell_info*, %struct.port_cell_info** %5, align 8
  %27 = icmp ne %struct.port_cell_info* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.port_cell_info*, %struct.port_cell_info** %5, align 8
  %32 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 2
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i1 [ false, %29 ], [ %37, %35 ]
  br i1 %39, label %40, label %55

40:                                               ; preds = %38
  %41 = load i32*, i32** @g_tx_link_rate, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.port_cell_info*, %struct.port_cell_info** %5, align 8
  %47 = getelementptr inbounds %struct.port_cell_info, %struct.port_cell_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %29

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i8**, i8*** %6, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32*, i32** @g_tx_link_rate, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32*, i32** @g_tx_link_rate, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8**, i8*** %6, align 8
  store i8* null, i8** %70, align 8
  br label %74

71:                                               ; preds = %64, %59
  %72 = load i8*, i8** @g_xdata_addr, align 8
  %73 = load i8**, i8*** %6, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %69
  br label %75

75:                                               ; preds = %74, %56
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
