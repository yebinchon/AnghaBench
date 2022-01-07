; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_entropy_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_jitterentropy.c_jent_entropy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_data = type { i64, i32 }

@JENT_ENOTIME = common dso_local global i32 0, align 4
@JENT_ECOARSETIME = common dso_local global i32 0, align 4
@JENT_ENOMONOTONIC = common dso_local global i32 0, align 4
@JENT_EVARVAR = common dso_local global i32 0, align 4
@JENT_ESTUCK = common dso_local global i32 0, align 4
@CLEARCACHE = common dso_local global i32 0, align 4
@TESTLOOPCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jent_entropy_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rand_data, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = bitcast %struct.rand_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %88, %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 400, %16
  br i1 %17, label %18, label %91

18:                                               ; preds = %15
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %19 = call i32 @jent_get_nstime(i64* %9)
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.rand_data, %struct.rand_data* %8, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @jent_lfsr_time(%struct.rand_data* %8, i64 %22, i32 0)
  %24 = call i32 @jent_get_nstime(i64* %10)
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* @JENT_ENOTIME, align 4
  store i32 %31, i32* %1, align 4
  br label %112

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @JENT_ECOARSETIME, align 4
  store i32 %39, i32* %1, align 4
  br label %112

40:                                               ; preds = %32
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @jent_stuck(%struct.rand_data* %8, i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp sgt i32 100, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %88

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = urem i32 %64, 100
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %4, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load i64, i64* %3, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %3, align 8
  br label %86

80:                                               ; preds = %70
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* %11, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load i64, i64* %3, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %86, %45
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %2, align 4
  br label %15

91:                                               ; preds = %15
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 3, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @JENT_ENOMONOTONIC, align 4
  store i32 %95, i32* %1, align 4
  br label %112

96:                                               ; preds = %91
  %97 = load i64, i64* %3, align 8
  %98 = icmp sle i64 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @JENT_EVARVAR, align 4
  store i32 %100, i32* %1, align 4
  br label %112

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 270, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @JENT_ECOARSETIME, align 4
  store i32 %105, i32* %1, align 4
  br label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 270, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @JENT_ESTUCK, align 4
  store i32 %110, i32* %1, align 4
  br label %112

111:                                              ; preds = %106
  store i32 0, i32* %1, align 4
  br label %112

112:                                              ; preds = %111, %109, %104, %99, %94, %38, %30
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @jent_get_nstime(i64*) #2

declare dso_local i32 @jent_lfsr_time(%struct.rand_data*, i64, i32) #2

declare dso_local i32 @jent_stuck(%struct.rand_data*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
