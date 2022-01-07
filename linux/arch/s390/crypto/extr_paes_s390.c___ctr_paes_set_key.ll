; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c___ctr_paes_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c___ctr_paes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_paes_ctx = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PKEY_KEYTYPE_AES_128 = common dso_local global i64 0, align 8
@CPACF_KMCTR_PAES_128 = common dso_local global i64 0, align 8
@PKEY_KEYTYPE_AES_192 = common dso_local global i64 0, align 8
@CPACF_KMCTR_PAES_192 = common dso_local global i64 0, align 8
@PKEY_KEYTYPE_AES_256 = common dso_local global i64 0, align 8
@CPACF_KMCTR_PAES_256 = common dso_local global i64 0, align 8
@kmctr_functions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s390_paes_ctx*)* @__ctr_paes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctr_paes_set_key(%struct.s390_paes_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s390_paes_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.s390_paes_ctx* %0, %struct.s390_paes_ctx** %3, align 8
  %5 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %5, i32 0, i32 2
  %7 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %7, i32 0, i32 1
  %9 = call i64 @__paes_convert_key(i32* %6, %struct.TYPE_2__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PKEY_KEYTYPE_AES_128, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i64, i64* @CPACF_KMCTR_PAES_128, align 8
  br label %46

23:                                               ; preds = %14
  %24 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PKEY_KEYTYPE_AES_192, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @CPACF_KMCTR_PAES_192, align 8
  br label %44

32:                                               ; preds = %23
  %33 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PKEY_KEYTYPE_AES_256, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @CPACF_KMCTR_PAES_256, align 8
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %41 ]
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi i64 [ %31, %30 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %21
  %47 = phi i64 [ %22, %21 ], [ %45, %44 ]
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @cpacf_test_func(i32* @kmctr_functions, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  br label %57

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i64 [ %55, %54 ], [ 0, %56 ]
  %59 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 0, %65 ], [ %68, %66 ]
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @__paes_convert_key(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @cpacf_test_func(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
