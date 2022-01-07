; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_id.c_omap_get_die_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_id.c_omap_get_die_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_die_id = type { i8*, i8*, i8*, i8* }

@OMAP_TAP_DIE_ID_44XX_0 = common dso_local global i32 0, align 4
@OMAP_TAP_DIE_ID_44XX_1 = common dso_local global i32 0, align 4
@OMAP_TAP_DIE_ID_44XX_2 = common dso_local global i32 0, align 4
@OMAP_TAP_DIE_ID_44XX_3 = common dso_local global i32 0, align 4
@OMAP_TAP_DIE_ID_0 = common dso_local global i32 0, align 4
@OMAP_TAP_DIE_ID_1 = common dso_local global i32 0, align 4
@OMAP_TAP_DIE_ID_2 = common dso_local global i32 0, align 4
@OMAP_TAP_DIE_ID_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_get_die_id(%struct.omap_die_id* %0) #0 {
  %2 = alloca %struct.omap_die_id*, align 8
  store %struct.omap_die_id* %0, %struct.omap_die_id** %2, align 8
  %3 = call i64 (...) @soc_is_omap44xx()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = call i64 (...) @soc_is_omap54xx()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = call i64 (...) @soc_is_dra7xx()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %8, %5, %1
  %12 = load i32, i32* @OMAP_TAP_DIE_ID_44XX_0, align 4
  %13 = call i8* @read_tap_reg(i32 %12)
  %14 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %15 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @OMAP_TAP_DIE_ID_44XX_1, align 4
  %17 = call i8* @read_tap_reg(i32 %16)
  %18 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %19 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @OMAP_TAP_DIE_ID_44XX_2, align 4
  %21 = call i8* @read_tap_reg(i32 %20)
  %22 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %23 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @OMAP_TAP_DIE_ID_44XX_3, align 4
  %25 = call i8* @read_tap_reg(i32 %24)
  %26 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %27 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %45

28:                                               ; preds = %8
  %29 = load i32, i32* @OMAP_TAP_DIE_ID_0, align 4
  %30 = call i8* @read_tap_reg(i32 %29)
  %31 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %32 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @OMAP_TAP_DIE_ID_1, align 4
  %34 = call i8* @read_tap_reg(i32 %33)
  %35 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %36 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @OMAP_TAP_DIE_ID_2, align 4
  %38 = call i8* @read_tap_reg(i32 %37)
  %39 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %40 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @OMAP_TAP_DIE_ID_3, align 4
  %42 = call i8* @read_tap_reg(i32 %41)
  %43 = load %struct.omap_die_id*, %struct.omap_die_id** %2, align 8
  %44 = getelementptr inbounds %struct.omap_die_id, %struct.omap_die_id* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %28, %11
  ret void
}

declare dso_local i64 @soc_is_omap44xx(...) #1

declare dso_local i64 @soc_is_omap54xx(...) #1

declare dso_local i64 @soc_is_dra7xx(...) #1

declare dso_local i8* @read_tap_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
