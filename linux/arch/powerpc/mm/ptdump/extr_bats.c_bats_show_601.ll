; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bats_show_601.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_bats.c_bats_show_601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"---[ Block Address Translation ]---\0A\00", align 1
@SPRN_IBAT0L = common dso_local global i32 0, align 4
@SPRN_IBAT0U = common dso_local global i32 0, align 4
@SPRN_IBAT1L = common dso_local global i32 0, align 4
@SPRN_IBAT1U = common dso_local global i32 0, align 4
@SPRN_IBAT2L = common dso_local global i32 0, align 4
@SPRN_IBAT2U = common dso_local global i32 0, align 4
@SPRN_IBAT3L = common dso_local global i32 0, align 4
@SPRN_IBAT3U = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @bats_show_601 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bats_show_601(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_puts(%struct.seq_file* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = load i32, i32* @SPRN_IBAT0L, align 4
  %9 = load i32, i32* @SPRN_IBAT0U, align 4
  %10 = call i32 @BAT_SHOW_601(%struct.seq_file* %7, i32 0, i32 %8, i32 %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i32, i32* @SPRN_IBAT1L, align 4
  %13 = load i32, i32* @SPRN_IBAT1U, align 4
  %14 = call i32 @BAT_SHOW_601(%struct.seq_file* %11, i32 1, i32 %12, i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load i32, i32* @SPRN_IBAT2L, align 4
  %17 = load i32, i32* @SPRN_IBAT2U, align 4
  %18 = call i32 @BAT_SHOW_601(%struct.seq_file* %15, i32 2, i32 %16, i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* @SPRN_IBAT3L, align 4
  %21 = load i32, i32* @SPRN_IBAT3U, align 4
  %22 = call i32 @BAT_SHOW_601(%struct.seq_file* %19, i32 3, i32 %20, i32 %21)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @BAT_SHOW_601(%struct.seq_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
