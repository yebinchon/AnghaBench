; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vr9.c_pp32_download_code.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vr9.c_pp32_download_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32)* @pp32_download_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp32_download_code(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = and i64 %19, 3
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %10, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = and i64 %27, 3
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %22, %17, %5
  store i32 -1, i32* %6, align 4
  br label %80

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 240, i32 15
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @CDM_CODE_MEMORYn_DWLEN(i32 0)
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 192, i32 8
  store i32 %43, i32* %13, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @CDM_CFG, align 4
  %49 = call i32 @IFX_REG_W32_MASK(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32* @CDM_CODE_MEMORY(i32 %50, i32 0)
  store i32* %51, i32** %14, align 8
  br label %52

52:                                               ; preds = %56, %45
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %9, align 4
  %55 = icmp ugt i32 %53, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %8, align 8
  %59 = load i32, i32* %57, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %14, align 8
  %62 = ptrtoint i32* %60 to i32
  %63 = call i32 @IFX_REG_W32(i32 %59, i32 %62)
  br label %52

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = call i32* @CDM_DATA_MEMORY(i32 %65, i32 0)
  store i32* %66, i32** %14, align 8
  br label %67

67:                                               ; preds = %71, %64
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, -1
  store i32 %69, i32* %11, align 4
  %70 = icmp ugt i32 %68, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* %72, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %14, align 8
  %77 = ptrtoint i32* %75 to i32
  %78 = call i32 @IFX_REG_W32(i32 %74, i32 %77)
  br label %67

79:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @CDM_CODE_MEMORYn_DWLEN(i32) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

declare dso_local i32* @CDM_CODE_MEMORY(i32, i32) #1

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

declare dso_local i32* @CDM_DATA_MEMORY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
