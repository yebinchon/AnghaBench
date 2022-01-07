; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_valid_testvec_config.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_valid_testvec_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testvec_config = type { i64, i64, i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }

@MAX_ALGAPI_ALIGNMASK = common dso_local global i64 0, align 8
@SGDIVS_HAVE_FLUSHES = common dso_local global i32 0, align 4
@SGDIVS_HAVE_NOSIMD = common dso_local global i32 0, align 4
@FINALIZATION_TYPE_DIGEST = common dso_local global i64 0, align 8
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testvec_config*)* @valid_testvec_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_testvec_config(%struct.testvec_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.testvec_config*, align 8
  %4 = alloca i32, align 4
  store %struct.testvec_config* %0, %struct.testvec_config** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %6 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %5, i32 0, i32 7
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

10:                                               ; preds = %1
  %11 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %12 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %15 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %14, i32 0, i32 6
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %16)
  %18 = call i32 @valid_sg_divisions(%struct.TYPE_4__* %13, i32 %17, i32* %4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %100

21:                                               ; preds = %10
  %22 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %23 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %31 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %34 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %35)
  %37 = call i32 @valid_sg_divisions(%struct.TYPE_4__* %32, i32 %36, i32* %4)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %100

40:                                               ; preds = %29
  br label %49

41:                                               ; preds = %21
  %42 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %43 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i64 @memchr_inv(%struct.TYPE_4__* %44, i32 0, i32 8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %100

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %51 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %54 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i64, i64* @MAX_ALGAPI_ALIGNMASK, align 8
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i64 [ %58, %57 ], [ 0, %59 ]
  %62 = add nsw i64 %52, %61
  %63 = load i64, i64* @MAX_ALGAPI_ALIGNMASK, align 8
  %64 = add nsw i64 %63, 1
  %65 = icmp sgt i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %100

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SGDIVS_HAVE_FLUSHES, align 4
  %70 = load i32, i32* @SGDIVS_HAVE_NOSIMD, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %76 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FINALIZATION_TYPE_DIGEST, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %100

81:                                               ; preds = %74, %67
  %82 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %83 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @SGDIVS_HAVE_NOSIMD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86, %81
  %92 = load %struct.testvec_config*, %struct.testvec_config** %3, align 8
  %93 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %100

99:                                               ; preds = %91, %86
  store i32 1, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %98, %80, %66, %47, %39, %20, %9
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @valid_sg_divisions(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i64 @memchr_inv(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
