; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-util.c_cvmx_helper_get_interface_num.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-util.c_cvmx_helper_get_interface_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"cvmx_helper_get_interface_num: Illegal IPD port number\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_get_interface_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %35

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 36
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 2, i32* %2, align 4
  br label %35

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 40
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 3, i32* %2, align 4
  br label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 44
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 4, i32* %2, align 4
  br label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 48
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 5, i32* %2, align 4
  br label %35

27:                                               ; preds = %23
  %28 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %26, %22, %18, %14, %10, %6
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @cvmx_dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
