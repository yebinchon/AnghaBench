; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dump = type { i64 }

@OPAL_MPIPL_FREE_PRESERVED_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to invalidate - unexpected Error(%lld).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@opal_fdm_active = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_dump*)* @opal_fadump_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_fadump_invalidate(%struct.fw_dump* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_dump*, align 8
  %4 = alloca i64, align 8
  store %struct.fw_dump* %0, %struct.fw_dump** %3, align 8
  %5 = load i32, i32* @OPAL_MPIPL_FREE_PRESERVED_MEMORY, align 4
  %6 = call i64 @opal_mpipl_update(i32 %5, i32 0, i32 0, i32 0)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.fw_dump*, %struct.fw_dump** %3, align 8
  %16 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i32* null, i32** @opal_fdm_active, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @opal_mpipl_update(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
