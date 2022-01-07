; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fpudispatch.c_fpudispatch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fpudispatch.c_fpudispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPU_TYPE_FLAG_POS = common dso_local global i64 0, align 8
@PA2_0_FPU_FLAG = common dso_local global i32 0, align 4
@FPUDEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"class %d subop %d\0A\00", align 1
@UNIMPLEMENTEDEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpudispatch(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = call i32 @VASSERT(i32 1)
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @parisc_linux_get_fpu_type(i32* %14)
  %16 = load i32*, i32** %9, align 8
  %17 = load i64, i64* @FPU_TYPE_FLAG_POS, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @get_class(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @PA2_0_FPU_FLAG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @get_subop1_PA2_0(i32 %30)
  store i32 %31, i32* %11, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @get_subop1_PA1_1(i32 %33)
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @get_subop(i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i64, i64* @FPUDEBUG, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %72 [
    i32 132, label %48
    i32 128, label %48
    i32 131, label %54
    i32 133, label %60
    i32 130, label %64
    i32 129, label %68
  ]

48:                                               ; preds = %46, %46
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @decode_0c(i32 %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %5, align 4
  br label %74

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @decode_0e(i32 %55, i32 %56, i32 %57, i32* %58)
  store i32 %59, i32* %5, align 4
  br label %74

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @decode_06(i32 %61, i32* %62)
  store i32 %63, i32* %5, align 4
  br label %74

64:                                               ; preds = %46
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @decode_26(i32 %65, i32* %66)
  store i32 %67, i32* %5, align 4
  br label %74

68:                                               ; preds = %46
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @decode_2e(i32 %69, i32* %70)
  store i32 %71, i32* %5, align 4
  br label %74

72:                                               ; preds = %46
  %73 = load i32, i32* @UNIMPLEMENTEDEXCEPTION, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %68, %64, %60, %54, %48
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @VASSERT(i32) #1

declare dso_local i32 @parisc_linux_get_fpu_type(i32*) #1

declare dso_local i32 @get_class(i32) #1

declare dso_local i32 @get_subop1_PA2_0(i32) #1

declare dso_local i32 @get_subop1_PA1_1(i32) #1

declare dso_local i32 @get_subop(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @decode_0c(i32, i32, i32, i32*) #1

declare dso_local i32 @decode_0e(i32, i32, i32, i32*) #1

declare dso_local i32 @decode_06(i32, i32*) #1

declare dso_local i32 @decode_26(i32, i32*) #1

declare dso_local i32 @decode_2e(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
