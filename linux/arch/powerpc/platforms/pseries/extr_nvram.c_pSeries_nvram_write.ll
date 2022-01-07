; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_nvram.c_pSeries_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_nvram.c_pSeries_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nvram_size = common dso_local global i32 0, align 4
@nvram_store = common dso_local global i64 0, align 8
@RTAS_UNKNOWN_SERVICE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@nvram_lock = common dso_local global i32 0, align 4
@NVRW_CNT = common dso_local global i64 0, align 8
@nvram_buf = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @pSeries_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pSeries_nvram_write(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = load i32, i32* @nvram_size, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @nvram_store, align 8
  %18 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %103

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @nvram_size, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %103

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %33, %34
  %36 = load i32, i32* @nvram_size, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32, i32* @nvram_size, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub i32 %40, %41
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @nvram_lock, i64 %45)
  br label %47

47:                                               ; preds = %88, %44
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @NVRW_CNT, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @NVRW_CNT, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* @nvram_buf, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @memcpy(i32 %58, i8* %59, i64 %60)
  %62 = load i64, i64* @nvram_store, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @nvram_buf, align 4
  %65 = call i32 @__pa(i32 %64)
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @rtas_call(i64 %62, i32 3, i32 2, i32* %10, i32 %63, i32 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %57
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %57
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @nvram_lock, i64 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %103

79:                                               ; preds = %69
  %80 = load i64, i64* %9, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %12, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = add i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %6, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %47

92:                                               ; preds = %47
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* @nvram_lock, i64 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %74, %28, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @rtas_call(i64, i32, i32, i32*, i32, i32, i64) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
