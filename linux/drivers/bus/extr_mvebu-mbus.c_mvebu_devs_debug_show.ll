; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_devs_debug_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_devs_debug_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mbus_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }

@mbus_state = common dso_local global %struct.mvebu_mbus_state zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"[%02d] disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[%02d] %016llx - %016llx : %04x:%04x\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" (Invalid base/size!!)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" (remap %016llx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvebu_devs_debug_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_devs_debug_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvebu_mbus_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.mvebu_mbus_state* @mbus_state, %struct.mvebu_mbus_state** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %69, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %5, align 8
  %16 = getelementptr inbounds %struct.mvebu_mbus_state, %struct.mvebu_mbus_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %13
  %22 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mvebu_mbus_read_window(%struct.mvebu_mbus_state* %22, i32 %23, i32* %12, i32* %7, i32* %9, i32* %10, i32* %11, i32* %8)
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %69

31:                                               ; preds = %21
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %35, i64 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @is_power_of_2(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %31
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = call i32 @seq_puts(%struct.seq_file* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @mvebu_mbus_window_is_remappable(%struct.mvebu_mbus_state* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  br label %68

65:                                               ; preds = %55
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %13

72:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @mvebu_mbus_read_window(%struct.mvebu_mbus_state*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @mvebu_mbus_window_is_remappable(%struct.mvebu_mbus_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
