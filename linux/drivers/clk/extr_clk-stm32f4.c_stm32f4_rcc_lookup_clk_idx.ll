; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_rcc_lookup_clk_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_rcc_lookup_clk_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_GATE_MAP = common dso_local global i32 0, align 4
@stm32fx_end_primary_clk = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@stm32f4_gate_map = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@BITS_PER_LONG_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @stm32f4_rcc_lookup_clk_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_rcc_lookup_clk_idx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MAX_GATE_MAP, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @stm32fx_end_primary_clk, align 4
  %18 = icmp sge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

27:                                               ; preds = %2
  %28 = load i32, i32* @stm32f4_gate_map, align 4
  %29 = mul nuw i64 4, %10
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memcpy(i32* %12, i32 %28, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* @BITS_PER_BYTE, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nuw i64 4, %10
  %37 = mul i64 %35, %36
  %38 = icmp uge i64 %33, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BIT_ULL_WORD(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %12, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BIT_ULL_MASK(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp eq i32 0, %47
  br label %49

49:                                               ; preds = %39, %27
  %50 = phi i1 [ true, %27 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @BITS_PER_LONG_LONG, align 4
  %60 = srem i32 %58, %59
  %61 = call i32 @GENMASK_ULL(i32 %60, i32 0)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @BIT_ULL_WORD(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %12, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @stm32fx_end_primary_clk, align 4
  %69 = sub nsw i32 %68, 1
  %70 = getelementptr inbounds i32, i32* %12, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = call i32 @hweight64(i32 %71)
  %73 = add nsw i32 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @BIT_ULL_WORD(i32 %74)
  %76 = icmp sge i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %57
  %78 = getelementptr inbounds i32, i32* %12, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @hweight64(i32 %79)
  br label %82

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 0, %81 ]
  %84 = add nsw i32 %73, %83
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @BIT_ULL_WORD(i32 %85)
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = getelementptr inbounds i32, i32* %12, i64 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @hweight64(i32 %90)
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i32 [ %91, %88 ], [ 0, %92 ]
  %95 = add nsw i32 %84, %94
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %54, %25, %22
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @BIT_ULL_WORD(i32) #2

declare dso_local i32 @BIT_ULL_MASK(i32) #2

declare dso_local i32 @GENMASK_ULL(i32, i32) #2

declare dso_local i32 @hweight64(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
