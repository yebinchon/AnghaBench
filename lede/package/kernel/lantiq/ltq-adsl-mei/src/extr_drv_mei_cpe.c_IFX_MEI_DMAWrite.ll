; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_DMAWrite.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_DMAWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSL_DEV_MEI_ERR_FAILURE = common dso_local global i32 0, align 4
@ME_DX_AD = common dso_local global i32 0, align 4
@MEI_TO_ARC_MAILBOX = common dso_local global i32 0, align 4
@ME_DX_DATA = common dso_local global i64 0, align 8
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @IFX_MEI_DMAWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_DMAWrite(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %17, i32* %5, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @ME_DX_AD, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %36, %18
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MEI_TO_ARC_MAILBOX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @MEI_HALF_WORD_SWAP(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* @ME_DX_DATA, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %37, i32 %39, i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %10, align 8
  br label %23

44:                                               ; preds = %23
  %45 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @IFX_MEI_LongWordWriteOffset(i32*, i32, i32) #1

declare dso_local i32 @MEI_HALF_WORD_SWAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
