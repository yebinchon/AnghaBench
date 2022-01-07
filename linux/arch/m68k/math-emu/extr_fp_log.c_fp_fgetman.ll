; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_log.c_fp_fgetman.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_fp_log.c_fp_fgetman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fgetman\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fgetman(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %6 = load i32, i32* @PINSTR, align 4
  %7 = call i32 @dprint(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %9 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %10 = call i32 @fp_monadic_check(%struct.fp_ext* %8, %struct.fp_ext* %9)
  %11 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %12 = call i64 @IS_ZERO(%struct.fp_ext* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %15, %struct.fp_ext** %3, align 8
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %18 = call i64 @IS_INF(%struct.fp_ext* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %21, %struct.fp_ext** %3, align 8
  br label %26

22:                                               ; preds = %16
  %23 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %24 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %23, i32 0, i32 0
  store i32 16383, i32* %24, align 4
  %25 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %25, %struct.fp_ext** %3, align 8
  br label %26

26:                                               ; preds = %22, %20, %14
  %27 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %27
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_monadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
