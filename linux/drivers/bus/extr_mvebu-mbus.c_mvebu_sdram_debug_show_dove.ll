; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_sdram_debug_show_dove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_sdram_debug_show_dove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mbus_state = type { i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"[%d] disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"[%d] %016llx - %016llx : cs%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mbus_state*, %struct.seq_file*, i8*)* @mvebu_sdram_debug_show_dove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_sdram_debug_show_dove(%struct.mvebu_mbus_state* %0, %struct.seq_file* %1, i8* %2) #0 {
  %4 = alloca %struct.mvebu_mbus_state*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mvebu_mbus_state* %0, %struct.mvebu_mbus_state** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %48, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %4, align 8
  %16 = getelementptr inbounds %struct.mvebu_mbus_state, %struct.mvebu_mbus_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @DOVE_DDR_BASE_CS_OFF(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %48

29:                                               ; preds = %14
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, -8388608
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 983040
  %34 = ashr i32 %33, 16
  %35 = sub nsw i32 %34, 4
  %36 = shl i32 1048576, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %40, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %29, %25
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %11

51:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DOVE_DDR_BASE_CS_OFF(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
