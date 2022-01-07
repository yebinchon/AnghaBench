; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_ghash_s390.c_ghash_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_ghash_s390.c_ghash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.ghash_desc_ctx = type { i32, i32* }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@CPACF_KIMD_GHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @ghash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ghash_desc_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = call %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.ghash_desc_ctx* %12, %struct.ghash_desc_ctx** %7, align 8
  %13 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %23 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @min(i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %5, align 8
  %50 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %20
  %55 = load i32, i32* @CPACF_KIMD_GHASH, align 4
  %56 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %59 = call i32 @cpacf_kimd(i32 %55, %struct.ghash_desc_ctx* %56, i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %20
  br label %61

61:                                               ; preds = %60, %3
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = xor i32 %64, -1
  %66 = and i32 %62, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load i32, i32* @CPACF_KIMD_GHASH, align 4
  %71 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @cpacf_kimd(i32 %70, %struct.ghash_desc_ctx* %71, i32* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %69, %61
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub i32 %86, %87
  %89 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %90 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @memcpy(i32* %91, i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %85, %82
  ret i32 0
}

declare dso_local %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpacf_kimd(i32, %struct.ghash_desc_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
