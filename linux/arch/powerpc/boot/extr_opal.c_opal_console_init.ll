; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_opal.c_opal_console_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_opal.c_opal_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_console_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@opal_con_id = common dso_local global i64 0, align 8
@opal_con_open = common dso_local global i32 0, align 4
@opal_con_putc = common dso_local global i32 0, align 4
@opal_con_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opal_console_init(i8* %0, %struct.serial_console_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.serial_console_data*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.serial_console_data* %1, %struct.serial_console_data** %5, align 8
  %7 = call i32 (...) @opal_init()
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @getprop(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* @opal_con_id, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %31

17:                                               ; preds = %10
  %18 = load i64, i64* @opal_con_id, align 8
  %19 = call i64 @be32_to_cpu(i64 %18)
  store i64 %19, i64* @opal_con_id, align 8
  br label %21

20:                                               ; preds = %2
  store i64 0, i64* @opal_con_id, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* @opal_con_open, align 4
  %23 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %24 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @opal_con_putc, align 4
  %26 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %27 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @opal_con_close, align 4
  %29 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %30 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @opal_init(...) #1

declare dso_local i32 @getprop(i8*, i8*, i64*, i32) #1

declare dso_local i64 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
