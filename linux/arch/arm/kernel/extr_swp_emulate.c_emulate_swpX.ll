; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_swp_emulate.c_emulate_swpX.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_swp_emulate.c_emulate_swpX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_SWPB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SWP instruction on unaligned pointer!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@swpbcounter = common dso_local global i32 0, align 4
@swpcounter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @emulate_swpX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_swpX(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @TYPE_SWPB, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %75

22:                                               ; preds = %14, %3
  br label %23

23:                                               ; preds = %22, %57
  %24 = call i32 (...) @uaccess_save_and_enable()
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @TYPE_SWPB, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @__user_swpb_asm(i32 %30, i32 %31, i32 %32, i64 %33)
  br label %42

35:                                               ; preds = %23
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @__user_swp_asm(i32 %37, i32 %38, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @uaccess_restore(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub i32 0, %46
  %48 = icmp ne i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %42
  br label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @cond_resched()
  br label %23

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TYPE_SWPB, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @swpbcounter, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @swpbcounter, align 4
  br label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @swpcounter, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @swpcounter, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @uaccess_save_and_enable(...) #1

declare dso_local i32 @__user_swpb_asm(i32, i32, i32, i64) #1

declare dso_local i32 @__user_swp_asm(i32, i32, i32, i64) #1

declare dso_local i32 @uaccess_restore(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
