; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c___xts_paes_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c___xts_paes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_pxts_ctx = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PKEY_KEYTYPE_AES_128 = common dso_local global i64 0, align 8
@CPACF_KM_PXTS_128 = common dso_local global i64 0, align 8
@PKEY_KEYTYPE_AES_256 = common dso_local global i64 0, align 8
@CPACF_KM_PXTS_256 = common dso_local global i64 0, align 8
@km_functions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s390_pxts_ctx*)* @__xts_paes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xts_paes_set_key(%struct.s390_pxts_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s390_pxts_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.s390_pxts_ctx* %0, %struct.s390_pxts_ctx** %3, align 8
  %5 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = call i64 @__paes_convert_key(i32* %8, %struct.TYPE_2__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 1
  %24 = call i64 @__paes_convert_key(i32* %19, %struct.TYPE_2__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15, %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %96

29:                                               ; preds = %15
  %30 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %35, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %96

46:                                               ; preds = %29
  %47 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PKEY_KEYTYPE_AES_128, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i64, i64* @CPACF_KM_PXTS_128, align 8
  br label %71

57:                                               ; preds = %46
  %58 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PKEY_KEYTYPE_AES_256, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @CPACF_KM_PXTS_256, align 8
  br label %69

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i64 [ %67, %66 ], [ 0, %68 ]
  br label %71

71:                                               ; preds = %69, %55
  %72 = phi i64 [ %56, %55 ], [ %70, %69 ]
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @cpacf_test_func(i32* @km_functions, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* %4, align 8
  br label %82

81:                                               ; preds = %75, %71
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i64 [ %80, %79 ], [ 0, %81 ]
  %84 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.s390_pxts_ctx*, %struct.s390_pxts_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.s390_pxts_ctx, %struct.s390_pxts_ctx* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %91, %90
  %95 = phi i32 [ 0, %90 ], [ %93, %91 ]
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %43, %26
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @__paes_convert_key(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @cpacf_test_func(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
