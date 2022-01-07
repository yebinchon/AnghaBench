; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpu.c_validate_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_cpu.c_validate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"This kernel requires an %s CPU, \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"but only detected an %s CPU.\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"This kernel requires the following features not present on the CPU:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_cpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @check_cpu(i32* %3, i32* %4, i32** %2)
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @cpu_name(i32 %10)
  %12 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @cpu_name(i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  store i32 -1, i32* %1, align 4
  br label %29

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i32 @puts(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @show_cap_strs(i32* %21)
  %23 = call i32 @putchar(i8 signext 10)
  store i32 -1, i32* %1, align 4
  br label %29

24:                                               ; preds = %16
  %25 = call i64 (...) @check_knl_erratum()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %1, align 4
  br label %29

28:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %27, %19, %9
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @check_cpu(i32*, i32*, i32**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @cpu_name(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @show_cap_strs(i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @check_knl_erratum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
