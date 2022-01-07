; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bats_show_603.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bats_show_603.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"---[ Instruction Block Address Translation ]---\0A\00", align 1
@SPRN_IBAT0L = common dso_local global i32 0, align 4
@SPRN_IBAT0U = common dso_local global i32 0, align 4
@SPRN_IBAT1L = common dso_local global i32 0, align 4
@SPRN_IBAT1U = common dso_local global i32 0, align 4
@SPRN_IBAT2L = common dso_local global i32 0, align 4
@SPRN_IBAT2U = common dso_local global i32 0, align 4
@SPRN_IBAT3L = common dso_local global i32 0, align 4
@SPRN_IBAT3U = common dso_local global i32 0, align 4
@MMU_FTR_USE_HIGH_BATS = common dso_local global i32 0, align 4
@SPRN_IBAT4L = common dso_local global i32 0, align 4
@SPRN_IBAT4U = common dso_local global i32 0, align 4
@SPRN_IBAT5L = common dso_local global i32 0, align 4
@SPRN_IBAT5U = common dso_local global i32 0, align 4
@SPRN_IBAT6L = common dso_local global i32 0, align 4
@SPRN_IBAT6U = common dso_local global i32 0, align 4
@SPRN_IBAT7L = common dso_local global i32 0, align 4
@SPRN_IBAT7U = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\0A---[ Data Block Address Translation ]---\0A\00", align 1
@SPRN_DBAT0L = common dso_local global i32 0, align 4
@SPRN_DBAT0U = common dso_local global i32 0, align 4
@SPRN_DBAT1L = common dso_local global i32 0, align 4
@SPRN_DBAT1U = common dso_local global i32 0, align 4
@SPRN_DBAT2L = common dso_local global i32 0, align 4
@SPRN_DBAT2U = common dso_local global i32 0, align 4
@SPRN_DBAT3L = common dso_local global i32 0, align 4
@SPRN_DBAT3U = common dso_local global i32 0, align 4
@SPRN_DBAT4L = common dso_local global i32 0, align 4
@SPRN_DBAT4U = common dso_local global i32 0, align 4
@SPRN_DBAT5L = common dso_local global i32 0, align 4
@SPRN_DBAT5U = common dso_local global i32 0, align 4
@SPRN_DBAT6L = common dso_local global i32 0, align 4
@SPRN_DBAT6U = common dso_local global i32 0, align 4
@SPRN_DBAT7L = common dso_local global i32 0, align 4
@SPRN_DBAT7U = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @bats_show_603 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bats_show_603(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_puts(%struct.seq_file* %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = load i32, i32* @SPRN_IBAT0L, align 4
  %9 = load i32, i32* @SPRN_IBAT0U, align 4
  %10 = call i32 @BAT_SHOW_603(%struct.seq_file* %7, i32 0, i32 %8, i32 %9, i32 0)
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i32, i32* @SPRN_IBAT1L, align 4
  %13 = load i32, i32* @SPRN_IBAT1U, align 4
  %14 = call i32 @BAT_SHOW_603(%struct.seq_file* %11, i32 1, i32 %12, i32 %13, i32 0)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i32, i32* @SPRN_IBAT2L, align 4
  %17 = load i32, i32* @SPRN_IBAT2U, align 4
  %18 = call i32 @BAT_SHOW_603(%struct.seq_file* %15, i32 2, i32 %16, i32 %17, i32 0)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* @SPRN_IBAT3L, align 4
  %21 = load i32, i32* @SPRN_IBAT3U, align 4
  %22 = call i32 @BAT_SHOW_603(%struct.seq_file* %19, i32 3, i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @MMU_FTR_USE_HIGH_BATS, align 4
  %24 = call i64 @mmu_has_feature(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load i32, i32* @SPRN_IBAT4L, align 4
  %29 = load i32, i32* @SPRN_IBAT4U, align 4
  %30 = call i32 @BAT_SHOW_603(%struct.seq_file* %27, i32 4, i32 %28, i32 %29, i32 0)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load i32, i32* @SPRN_IBAT5L, align 4
  %33 = load i32, i32* @SPRN_IBAT5U, align 4
  %34 = call i32 @BAT_SHOW_603(%struct.seq_file* %31, i32 5, i32 %32, i32 %33, i32 0)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load i32, i32* @SPRN_IBAT6L, align 4
  %37 = load i32, i32* @SPRN_IBAT6U, align 4
  %38 = call i32 @BAT_SHOW_603(%struct.seq_file* %35, i32 6, i32 %36, i32 %37, i32 0)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load i32, i32* @SPRN_IBAT7L, align 4
  %41 = load i32, i32* @SPRN_IBAT7U, align 4
  %42 = call i32 @BAT_SHOW_603(%struct.seq_file* %39, i32 7, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %26, %2
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load i32, i32* @SPRN_DBAT0L, align 4
  %48 = load i32, i32* @SPRN_DBAT0U, align 4
  %49 = call i32 @BAT_SHOW_603(%struct.seq_file* %46, i32 0, i32 %47, i32 %48, i32 1)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load i32, i32* @SPRN_DBAT1L, align 4
  %52 = load i32, i32* @SPRN_DBAT1U, align 4
  %53 = call i32 @BAT_SHOW_603(%struct.seq_file* %50, i32 1, i32 %51, i32 %52, i32 1)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load i32, i32* @SPRN_DBAT2L, align 4
  %56 = load i32, i32* @SPRN_DBAT2U, align 4
  %57 = call i32 @BAT_SHOW_603(%struct.seq_file* %54, i32 2, i32 %55, i32 %56, i32 1)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load i32, i32* @SPRN_DBAT3L, align 4
  %60 = load i32, i32* @SPRN_DBAT3U, align 4
  %61 = call i32 @BAT_SHOW_603(%struct.seq_file* %58, i32 3, i32 %59, i32 %60, i32 1)
  %62 = load i32, i32* @MMU_FTR_USE_HIGH_BATS, align 4
  %63 = call i64 @mmu_has_feature(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %43
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load i32, i32* @SPRN_DBAT4L, align 4
  %68 = load i32, i32* @SPRN_DBAT4U, align 4
  %69 = call i32 @BAT_SHOW_603(%struct.seq_file* %66, i32 4, i32 %67, i32 %68, i32 1)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load i32, i32* @SPRN_DBAT5L, align 4
  %72 = load i32, i32* @SPRN_DBAT5U, align 4
  %73 = call i32 @BAT_SHOW_603(%struct.seq_file* %70, i32 5, i32 %71, i32 %72, i32 1)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load i32, i32* @SPRN_DBAT6L, align 4
  %76 = load i32, i32* @SPRN_DBAT6U, align 4
  %77 = call i32 @BAT_SHOW_603(%struct.seq_file* %74, i32 6, i32 %75, i32 %76, i32 1)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load i32, i32* @SPRN_DBAT7L, align 4
  %80 = load i32, i32* @SPRN_DBAT7U, align 4
  %81 = call i32 @BAT_SHOW_603(%struct.seq_file* %78, i32 7, i32 %79, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %65, %43
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @BAT_SHOW_603(%struct.seq_file*, i32, i32, i32, i32) #1

declare dso_local i64 @mmu_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
