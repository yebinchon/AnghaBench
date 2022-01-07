; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_apply_r_mips_lo16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_apply_r_mips_lo16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mips_hi16* }
%struct.mips_hi16 = type { i32, i64*, %struct.mips_hi16* }

@.str = private unnamed_addr constant [45 x i8] c"module %s: dangerous R_MIPS_LO16 relocation\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32*, i32, i32, i32)* @apply_r_mips_lo16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_mips_lo16(%struct.module* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.mips_hi16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mips_hi16*, align 8
  %17 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -65536
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 65535
  %28 = or i32 %25, %27
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %123

30:                                               ; preds = %5
  %31 = load i64, i64* %12, align 8
  %32 = and i64 %31, 65535
  %33 = xor i64 %32, 32768
  %34 = sub i64 %33, 32768
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load %struct.module*, %struct.module** %7, align 8
  %37 = getelementptr inbounds %struct.module, %struct.module* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.mips_hi16*, %struct.mips_hi16** %38, align 8
  %40 = icmp ne %struct.mips_hi16* %39, null
  br i1 %40, label %41, label %98

41:                                               ; preds = %30
  %42 = load %struct.module*, %struct.module** %7, align 8
  %43 = getelementptr inbounds %struct.module, %struct.module* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.mips_hi16*, %struct.mips_hi16** %44, align 8
  store %struct.mips_hi16* %45, %struct.mips_hi16** %13, align 8
  br label %46

46:                                               ; preds = %56, %41
  %47 = load %struct.mips_hi16*, %struct.mips_hi16** %13, align 8
  %48 = icmp ne %struct.mips_hi16* %47, null
  br i1 %48, label %49, label %94

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.mips_hi16*, %struct.mips_hi16** %13, align 8
  %52 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %111

56:                                               ; preds = %49
  %57 = load %struct.mips_hi16*, %struct.mips_hi16** %13, align 8
  %58 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %17, align 8
  %61 = load i64, i64* %17, align 8
  %62 = and i64 %61, 65535
  %63 = shl i64 %62, 16
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %63, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = ashr i32 %71, 16
  %73 = load i32, i32* %14, align 4
  %74 = and i32 %73, 32768
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %72, %76
  %78 = and i32 %77, 65535
  store i32 %78, i32* %14, align 4
  %79 = load i64, i64* %17, align 8
  %80 = and i64 %79, -65536
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = or i64 %80, %82
  store i64 %83, i64* %17, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load %struct.mips_hi16*, %struct.mips_hi16** %13, align 8
  %86 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  store i64 %84, i64* %87, align 8
  %88 = load %struct.mips_hi16*, %struct.mips_hi16** %13, align 8
  %89 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %88, i32 0, i32 2
  %90 = load %struct.mips_hi16*, %struct.mips_hi16** %89, align 8
  store %struct.mips_hi16* %90, %struct.mips_hi16** %16, align 8
  %91 = load %struct.mips_hi16*, %struct.mips_hi16** %13, align 8
  %92 = call i32 @kfree(%struct.mips_hi16* %91)
  %93 = load %struct.mips_hi16*, %struct.mips_hi16** %16, align 8
  store %struct.mips_hi16* %93, %struct.mips_hi16** %13, align 8
  br label %46

94:                                               ; preds = %46
  %95 = load %struct.module*, %struct.module** %7, align 8
  %96 = getelementptr inbounds %struct.module, %struct.module* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store %struct.mips_hi16* null, %struct.mips_hi16** %97, align 8
  br label %98

98:                                               ; preds = %94, %30
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %14, align 4
  %102 = load i64, i64* %12, align 8
  %103 = and i64 %102, -65536
  %104 = load i32, i32* %14, align 4
  %105 = and i32 %104, 65535
  %106 = sext i32 %105 to i64
  %107 = or i64 %103, %106
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  store i32 0, i32* %6, align 4
  br label %123

111:                                              ; preds = %55
  %112 = load %struct.mips_hi16*, %struct.mips_hi16** %13, align 8
  %113 = call i32 @free_relocation_chain(%struct.mips_hi16* %112)
  %114 = load %struct.module*, %struct.module** %7, align 8
  %115 = getelementptr inbounds %struct.module, %struct.module* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store %struct.mips_hi16* null, %struct.mips_hi16** %116, align 8
  %117 = load %struct.module*, %struct.module** %7, align 8
  %118 = getelementptr inbounds %struct.module, %struct.module* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ENOEXEC, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %111, %98, %22
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @kfree(%struct.mips_hi16*) #1

declare dso_local i32 @free_relocation_chain(%struct.mips_hi16*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
