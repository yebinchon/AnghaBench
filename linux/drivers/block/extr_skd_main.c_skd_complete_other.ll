; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_complete_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_complete_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.skd_special_context, %struct.TYPE_3__*, i32 }
%struct.skd_special_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fit_completion_entry_v1 = type { i32 }
%struct.fit_comp_error_info = type { i32 }

@SKD_ID_TABLE_MASK = common dso_local global i32 0, align 4
@SKD_ID_SLOT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"table=0x%x id=0x%x slot=%d\0A\00", align 1
@SKD_REQ_STATE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*, %struct.fit_completion_entry_v1*, %struct.fit_comp_error_info*)* @skd_complete_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_complete_other(%struct.skd_device* %0, %struct.fit_completion_entry_v1* %1, %struct.fit_comp_error_info* %2) #0 {
  %4 = alloca %struct.skd_device*, align 8
  %5 = alloca %struct.fit_completion_entry_v1*, align 8
  %6 = alloca %struct.fit_comp_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skd_special_context*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %4, align 8
  store %struct.fit_completion_entry_v1* %1, %struct.fit_completion_entry_v1** %5, align 8
  store %struct.fit_comp_error_info* %2, %struct.fit_comp_error_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %12 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %5, align 8
  %15 = getelementptr inbounds %struct.fit_completion_entry_v1, %struct.fit_completion_entry_v1* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SKD_ID_TABLE_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SKD_ID_SLOT_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %24 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %61 [
    i32 128, label %32
    i32 129, label %33
    i32 130, label %60
  ]

32:                                               ; preds = %3
  br label %62

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %38 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %37, i32 0, i32 0
  store %struct.skd_special_context* %38, %struct.skd_special_context** %10, align 8
  %39 = load %struct.skd_special_context*, %struct.skd_special_context** %10, align 8
  %40 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %36
  %46 = load %struct.skd_special_context*, %struct.skd_special_context** %10, align 8
  %47 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SKD_REQ_STATE_BUSY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %54 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %5, align 8
  %55 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %6, align 8
  %56 = load %struct.skd_special_context*, %struct.skd_special_context** %10, align 8
  %57 = call i32 @skd_complete_internal(%struct.skd_device* %53, %struct.fit_completion_entry_v1* %54, %struct.fit_comp_error_info* %55, %struct.skd_special_context* %56)
  br label %62

58:                                               ; preds = %45, %36
  br label %59

59:                                               ; preds = %58, %33
  br label %62

60:                                               ; preds = %3
  br label %62

61:                                               ; preds = %3
  br label %62

62:                                               ; preds = %52, %61, %60, %59, %32
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @skd_complete_internal(%struct.skd_device*, %struct.fit_completion_entry_v1*, %struct.fit_comp_error_info*, %struct.skd_special_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
