; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_lock_unlock_locking_range_sum.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_lock_unlock_locking_range_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_lock_unlock = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Tried to set an invalid locking state.\0A\00", align 1
@OPAL_INVAL_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error building SET command.\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @lock_unlock_locking_range_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_unlock_locking_range_sum(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.opal_lock_unlock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.opal_lock_unlock*
  store %struct.opal_lock_unlock* %18, %struct.opal_lock_unlock** %10, align 8
  %19 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %20 = call i32 @clear_opal_cmd(%struct.opal_dev* %19)
  %21 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %22 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %23 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_comid(%struct.opal_dev* %21, i32 %24)
  %26 = mul nuw i64 4, %14
  %27 = trunc i64 %26 to i32
  %28 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %10, align 8
  %29 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @build_locking_range(i32* %16, i32 %27, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ERANGE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

38:                                               ; preds = %2
  %39 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %10, align 8
  %40 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %45 [
    i32 129, label %42
    i32 128, label %43
    i32 130, label %44
  ]

42:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %48

43:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %48

44:                                               ; preds = %38
  br label %48

45:                                               ; preds = %38
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @OPAL_INVAL_PARAM, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

48:                                               ; preds = %44, %43, %42
  %49 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @generic_lr_enable_disable(%struct.opal_dev* %49, i32* %16, i32 1, i32 1, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %60 = load i32, i32* @parse_and_check_status, align 4
  %61 = call i32 @finalize_and_send(%struct.opal_dev* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %58, %55, %45, %35
  %63 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @clear_opal_cmd(%struct.opal_dev*) #2

declare dso_local i32 @set_comid(%struct.opal_dev*, i32) #2

declare dso_local i64 @build_locking_range(i32*, i32, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @generic_lr_enable_disable(%struct.opal_dev*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
