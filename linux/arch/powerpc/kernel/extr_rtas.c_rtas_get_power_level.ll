; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_rtas_get_power_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_rtas_get_power_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"get-power-level\00", align 1
@RTAS_UNKNOWN_SERVICE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RTAS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtas_get_power_level(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = call i32 @rtas_token(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RTAS_UNKNOWN_SERVICE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %23, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rtas_call(i32 %17, i32 1, i32 2, i32* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @RTAS_BUSY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @udelay(i32 1)
  br label %16

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rtas_error_rc(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtas_error_rc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
