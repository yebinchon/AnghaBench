; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-util.c_cvmx_helper_get_interface_index_num.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-util.c_cvmx_helper_get_interface_index_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"cvmx_helper_get_interface_index_num: Illegal IPD port number\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_get_interface_index_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 15
  store i32 %8, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 36
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 3
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 40
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 3
  store i32 %20, i32* %2, align 4
  br label %40

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 44
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 3
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 48
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 3
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %27
  %34 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %30, %24, %18, %12, %6
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @cvmx_dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
