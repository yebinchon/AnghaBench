; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/glue/extr_wl_glue.c_wl_glue_unregister.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/glue/extr_wl_glue.c_wl_glue_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wl_glue_attached = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@active_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Not removing glue driver due to unsupported bus\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"SSB/BCMA glue driver successfully detached\0A\00", align 1
@wl_glue_bcma_driver = common dso_local global i32 0, align 4
@wl_glue_ssb_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl_glue_unregister() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @wl_glue_attached, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENOSYS, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %21

8:                                                ; preds = %0
  %9 = load i32, i32* @active_bus_type, align 4
  switch i32 %9, label %10 [
  ]

10:                                               ; preds = %8
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @wl_glue_attached, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %5
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
