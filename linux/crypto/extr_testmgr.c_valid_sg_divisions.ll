; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_valid_sg_divisions.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_valid_sg_divisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_sg_division = type { i64, i64, i64 }

@TEST_SG_TOTAL = common dso_local global i32 0, align 4
@FLUSH_TYPE_NONE = common dso_local global i64 0, align 8
@SGDIVS_HAVE_FLUSHES = common dso_local global i32 0, align 4
@SGDIVS_HAVE_NOSIMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_sg_division*, i32, i32*)* @valid_sg_divisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_sg_divisions(%struct.test_sg_division* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_sg_division*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.test_sg_division* %0, %struct.test_sg_division** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %79, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @TEST_SG_TOTAL, align 4
  %17 = icmp ne i32 %15, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %82

20:                                               ; preds = %18
  %21 = load %struct.test_sg_division*, %struct.test_sg_division** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %21, i64 %23
  %25 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %20
  %29 = load %struct.test_sg_division*, %struct.test_sg_division** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %29, i64 %31
  %33 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @TEST_SG_TOTAL, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = icmp sgt i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28, %20
  store i32 0, i32* %4, align 4
  br label %102

41:                                               ; preds = %28
  %42 = load %struct.test_sg_division*, %struct.test_sg_division** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %42, i64 %44
  %46 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load %struct.test_sg_division*, %struct.test_sg_division** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %52, i64 %54
  %56 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FLUSH_TYPE_NONE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load i32, i32* @SGDIVS_HAVE_FLUSHES, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %41
  %66 = load %struct.test_sg_division*, %struct.test_sg_division** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %66, i64 %68
  %70 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i32, i32* @SGDIVS_HAVE_NOSIMD, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %10

82:                                               ; preds = %18
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @TEST_SG_TOTAL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.test_sg_division*, %struct.test_sg_division** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.test_sg_division, %struct.test_sg_division* %87, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 24
  %96 = trunc i64 %95 to i32
  %97 = call i32* @memchr_inv(%struct.test_sg_division* %90, i32 0, i32 %96)
  %98 = icmp eq i32* %97, null
  br label %99

99:                                               ; preds = %86, %82
  %100 = phi i1 [ false, %82 ], [ %98, %86 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %40
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32* @memchr_inv(%struct.test_sg_division*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
