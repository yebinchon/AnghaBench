; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm4xx_fixup_ebc_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm4xx_fixup_ebc_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBC_NUM_BANKS = common dso_local global i32 0, align 4
@DCRN_EBC0_CFGADDR = common dso_local global i32 0, align 4
@DCRN_EBC0_CFGDATA = common dso_local global i32 0, align 4
@EBC_BXCR_BU = common dso_local global i32 0, align 4
@EBC_BXCR_BU_OFF = common dso_local global i32 0, align 4
@EBC_BXCR_BAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Couldn't locate EBC node %s\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm4xx_fixup_ebc_ranges(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @EBC_NUM_BANKS, align 4
  %10 = mul nsw i32 %9, 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32* %13, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %46, %1
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EBC_NUM_BANKS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load i32, i32* @DCRN_EBC0_CFGADDR, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @EBC_BXCR(i32 %20)
  %22 = call i32 @mtdcr(i32 %19, i32 %21)
  %23 = load i32, i32* @DCRN_EBC0_CFGDATA, align 4
  %24 = call i32 @mfdcr(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EBC_BXCR_BU, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @EBC_BXCR_BU_OFF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  store i32 0, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @EBC_BXCR_BAS, align 4
  %38 = and i32 %36, %37
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @EBC_BXCR_BANK_SIZE(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %45

45:                                               ; preds = %30, %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load i8*, i8** %2, align 8
  %51 = call i8* @finddevice(i8* %50)
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i8*, i8** %3, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = ptrtoint i32* %59 to i64
  %61 = ptrtoint i32* %13 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @setprop(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32 %65)
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mtdcr(i32, i32) #2

declare dso_local i32 @EBC_BXCR(i32) #2

declare dso_local i32 @mfdcr(i32) #2

declare dso_local i32 @EBC_BXCR_BANK_SIZE(i32) #2

declare dso_local i8* @finddevice(i8*) #2

declare dso_local i32 @fatal(i8*, i8*) #2

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
