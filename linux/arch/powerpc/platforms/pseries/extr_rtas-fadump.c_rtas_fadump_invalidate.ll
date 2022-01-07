; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dump = type { i64, i32 }

@FADUMP_INVALIDATE = common dso_local global i32 0, align 4
@fdm_active = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to invalidate - unexpected error (%d).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_dump*)* @rtas_fadump_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_fadump_invalidate(%struct.fw_dump* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_dump*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_dump* %0, %struct.fw_dump** %3, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %8 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FADUMP_INVALIDATE, align 4
  %11 = load i32*, i32** @fdm_active, align 8
  %12 = call i32 @rtas_call(i32 %9, i32 3, i32 1, i32* null, i32 %10, i32* %11, i32 4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @rtas_busy_delay_time(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mdelay(i32 %18)
  br label %20

20:                                               ; preds = %17, %6
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %6, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %34 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  store i32* null, i32** @fdm_active, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @rtas_busy_delay_time(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
