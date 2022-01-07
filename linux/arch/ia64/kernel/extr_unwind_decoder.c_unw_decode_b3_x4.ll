; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_b3_x4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_b3_x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B3 = common dso_local global i32 0, align 4
@B4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_b3_x4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_b3_x4(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %16, i32* %8, align 4
  %17 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @B3, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @UNW_DEC_EPILOGUE(i32 %18, i32 %19, i32 %20, i8* %21)
  br label %74

23:                                               ; preds = %3
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %29, i32* %10, align 4
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @B4, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @UNW_DEC_COPY_STATE(i32 %35, i32 %36, i8* %37)
  br label %44

39:                                               ; preds = %28
  %40 = load i32, i32* @B4, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @UNW_DEC_LABEL_STATE(i32 %40, i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %73

45:                                               ; preds = %23
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 7
  switch i32 %48, label %69 [
    i32 1, label %49
    i32 2, label %54
    i32 3, label %59
    i32 4, label %64
  ]

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %6, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @unw_decode_x1(i8* %50, i8 zeroext %51, i8* %52)
  store i8* %53, i8** %4, align 8
  br label %76

54:                                               ; preds = %45
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %6, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @unw_decode_x2(i8* %55, i8 zeroext %56, i8* %57)
  store i8* %58, i8** %4, align 8
  br label %76

59:                                               ; preds = %45
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %6, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @unw_decode_x3(i8* %60, i8 zeroext %61, i8* %62)
  store i8* %63, i8** %4, align 8
  br label %76

64:                                               ; preds = %45
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %6, align 1
  %67 = load i8*, i8** %7, align 8
  %68 = call i8* @unw_decode_x4(i8* %65, i8 zeroext %66, i8* %67)
  store i8* %68, i8** %4, align 8
  br label %76

69:                                               ; preds = %45
  %70 = load i8, i8* %6, align 1
  %71 = call i32 @UNW_DEC_BAD_CODE(i8 zeroext %70)
  br label %72

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %15
  %75 = load i8*, i8** %5, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %74, %64, %59, %54, %49
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_EPILOGUE(i32, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_COPY_STATE(i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_LABEL_STATE(i32, i32, i8*) #1

declare dso_local i8* @unw_decode_x1(i8*, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x2(i8*, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x3(i8*, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x4(i8*, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_BAD_CODE(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
