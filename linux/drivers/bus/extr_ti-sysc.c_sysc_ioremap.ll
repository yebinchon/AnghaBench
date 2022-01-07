; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_ioremap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i64*, i32, i32, i32, i32 }

@SYSC_REVISION = common dso_local global i64 0, align 8
@SYSC_SYSCONFIG = common dso_local global i64 0, align 8
@SYSC_SYSSTATUS = common dso_local global i64 0, align 8
@SZ_1K = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_ioremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_ioremap(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %5 = load %struct.sysc*, %struct.sysc** %3, align 8
  %6 = getelementptr inbounds %struct.sysc, %struct.sysc* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @SYSC_REVISION, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.sysc*, %struct.sysc** %3, align 8
  %14 = getelementptr inbounds %struct.sysc, %struct.sysc* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @SYSC_SYSCONFIG, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.sysc*, %struct.sysc** %3, align 8
  %22 = getelementptr inbounds %struct.sysc, %struct.sysc* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @SYSC_SYSSTATUS, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.sysc*, %struct.sysc** %3, align 8
  %30 = getelementptr inbounds %struct.sysc, %struct.sysc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %20, %12, %1
  %33 = load %struct.sysc*, %struct.sysc** %3, align 8
  %34 = getelementptr inbounds %struct.sysc, %struct.sysc* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @SYSC_REVISION, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sysc*, %struct.sysc** %3, align 8
  %40 = getelementptr inbounds %struct.sysc, %struct.sysc* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @SYSC_SYSCONFIG, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sysc*, %struct.sysc** %3, align 8
  %46 = getelementptr inbounds %struct.sysc, %struct.sysc* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @SYSC_SYSSTATUS, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @max3(i64 %38, i64 %44, i64 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SZ_1K, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = load i32, i32* @SZ_1K, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %32
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = load %struct.sysc*, %struct.sysc** %3, align 8
  %62 = getelementptr inbounds %struct.sysc, %struct.sysc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %60, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.sysc*, %struct.sysc** %3, align 8
  %68 = getelementptr inbounds %struct.sysc, %struct.sysc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %57
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.sysc*, %struct.sysc** %3, align 8
  %73 = getelementptr inbounds %struct.sysc, %struct.sysc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sysc*, %struct.sysc** %3, align 8
  %76 = getelementptr inbounds %struct.sysc, %struct.sysc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @devm_ioremap(i32 %74, i32 %77, i32 %81)
  %83 = load %struct.sysc*, %struct.sysc** %3, align 8
  %84 = getelementptr inbounds %struct.sysc, %struct.sysc* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sysc*, %struct.sysc** %3, align 8
  %86 = getelementptr inbounds %struct.sysc, %struct.sysc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %71
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @max3(i64, i64, i64) #1

declare dso_local i32 @devm_ioremap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
