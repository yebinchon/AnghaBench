; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_fcp_scpdata_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_fcp_scpdata_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@reipl_block_fcp = common dso_local global %struct.TYPE_6__* null, align 8
@IPL_BP_FCP_LEN = common dso_local global i64 0, align 8
@IPL_BP0_FCP_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @reipl_fcp_scpdata_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reipl_fcp_scpdata_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %7, align 8
  br label %66

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reipl_block_fcp, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @memcpy(i64 %26, i8* %27, i64 %28)
  %30 = load i64, i64* %14, align 8
  %31 = urem i64 %30, 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load i64, i64* %14, align 8
  %35 = urem i64 %34, 8
  %36 = sub i64 8, %35
  store i64 %36, i64* %15, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reipl_block_fcp, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* %15, align 8
  %44 = call i32 @memset(i64 %42, i32 0, i64 %43)
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %14, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %14, align 8
  br label %48

48:                                               ; preds = %33, %22
  %49 = load i64, i64* @IPL_BP_FCP_LEN, align 8
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %49, %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reipl_block_fcp, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* @IPL_BP0_FCP_LEN, align 8
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reipl_block_fcp, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reipl_block_fcp, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %13, align 8
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %48, %19
  %67 = load i64, i64* %7, align 8
  ret i64 %67
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
