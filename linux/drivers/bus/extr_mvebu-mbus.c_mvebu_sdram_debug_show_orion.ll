; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_sdram_debug_show_orion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_sdram_debug_show_orion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mbus_state = type { i64 }
%struct.seq_file = type { i32 }

@DDR_SIZE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[%d] disabled\0A\00", align 1
@DDR_BASE_CS_HIGH_MASK = common dso_local global i32 0, align 4
@DDR_BASE_CS_LOW_MASK = common dso_local global i32 0, align 4
@DDR_SIZE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[%d] %016llx - %016llx : cs%d\0A\00", align 1
@DDR_SIZE_CS_MASK = common dso_local global i32 0, align 4
@DDR_SIZE_CS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mbus_state*, %struct.seq_file*, i8*)* @mvebu_sdram_debug_show_orion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_sdram_debug_show_orion(%struct.mvebu_mbus_state* %0, %struct.seq_file* %1, i8* %2) #0 {
  %4 = alloca %struct.mvebu_mbus_state*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mvebu_mbus_state* %0, %struct.mvebu_mbus_state** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %68, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %71

15:                                               ; preds = %12
  %16 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %4, align 8
  %17 = getelementptr inbounds %struct.mvebu_mbus_state, %struct.mvebu_mbus_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @DDR_BASE_CS_OFF(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %4, align 8
  %24 = getelementptr inbounds %struct.mvebu_mbus_state, %struct.mvebu_mbus_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @DDR_SIZE_CS_OFF(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @DDR_SIZE_ENABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %15
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %68

38:                                               ; preds = %15
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @DDR_BASE_CS_HIGH_MASK, align 4
  %41 = and i32 %39, %40
  %42 = shl i32 %41, 32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DDR_BASE_CS_LOW_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @DDR_SIZE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = or i32 %48, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %57, %59
  %61 = add i64 %60, 1
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DDR_SIZE_CS_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @DDR_SIZE_CS_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %55, i64 %61, i32 %66)
  br label %68

68:                                               ; preds = %38, %34
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %12

71:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DDR_BASE_CS_OFF(i32) #1

declare dso_local i64 @DDR_SIZE_CS_OFF(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
