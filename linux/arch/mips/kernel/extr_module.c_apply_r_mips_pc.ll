; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_apply_r_mips_pc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_module.c_apply_r_mips_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"module %s: dangerous R_MIPS_PC%u relocation\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"module %s: relocation overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i64*, i64, i32, i32)* @apply_r_mips_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_mips_pc(%struct.module* %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = sub i32 %15, 1
  %17 = call i64 @GENMASK(i32 %16, i32 0)
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = srem i32 %18, 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.module*, %struct.module** %7, align 8
  %23 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @ENOEXEC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %90

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %12, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sub i32 %34, 1
  %36 = call i64 @BIT(i32 %35)
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i64, i64* %12, align 8
  %41 = xor i64 %40, -1
  br label %43

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i64 [ %41, %39 ], [ 0, %42 ]
  %45 = load i64, i64* %14, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %14, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %8, align 8
  %50 = ptrtoint i64* %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = ashr i64 %51, 2
  %53 = load i64, i64* %14, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sub i32 %56, 1
  %58 = call i64 @BIT(i32 %57)
  %59 = and i64 %55, %58
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i64 -1, i64 0
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %12, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = xor i64 %68, -1
  %70 = and i64 %67, %69
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %43
  %73 = load %struct.module*, %struct.module** %7, align 8
  %74 = getelementptr inbounds %struct.module, %struct.module* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ENOEXEC, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %90

79:                                               ; preds = %43
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = xor i64 %82, -1
  %84 = and i64 %81, %83
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %12, align 8
  %87 = and i64 %85, %86
  %88 = or i64 %84, %87
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %79, %72, %21
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
