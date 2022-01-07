; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_hvapi.c_sun4v_hvapi_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_hvapi.c_sun4v_hvapi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.api_info = type { i64, i64, i32, i64 }

@hvapi_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@HV_EBADTRAP = common dso_local global i64 0, align 8
@HV_ENOTSUPPORTED = common dso_local global i64 0, align 8
@FLAG_PRE_API = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4v_hvapi_register(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.api_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @hvapi_lock, i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.api_info* @__get_info(i64 %14)
  store %struct.api_info* %15, %struct.api_info** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.api_info*, %struct.api_info** %7, align 8
  %19 = icmp ne %struct.api_info* %18, null
  br i1 %19, label %20, label %94

20:                                               ; preds = %3
  %21 = load %struct.api_info*, %struct.api_info** %7, align 8
  %22 = getelementptr inbounds %struct.api_info, %struct.api_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.api_info*, %struct.api_info** %7, align 8
  %29 = getelementptr inbounds %struct.api_info, %struct.api_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.api_info*, %struct.api_info** %7, align 8
  %35 = getelementptr inbounds %struct.api_info, %struct.api_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %25
  br label %87

39:                                               ; preds = %20
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @sun4v_set_version(i64 %40, i64 %41, i64 %43, i64* %10)
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @HV_EOK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.api_info*, %struct.api_info** %7, align 8
  %55 = getelementptr inbounds %struct.api_info, %struct.api_info* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.api_info*, %struct.api_info** %7, align 8
  %58 = getelementptr inbounds %struct.api_info, %struct.api_info* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %9, align 4
  br label %86

59:                                               ; preds = %39
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @HV_EBADTRAP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @HV_ENOTSUPPORTED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63, %59
  %68 = load %struct.api_info*, %struct.api_info** %7, align 8
  %69 = getelementptr inbounds %struct.api_info, %struct.api_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FLAG_PRE_API, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i64, i64* %5, align 8
  %76 = icmp eq i64 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.api_info*, %struct.api_info** %7, align 8
  %79 = getelementptr inbounds %struct.api_info, %struct.api_info* %78, i32 0, i32 0
  store i64 1, i64* %79, align 8
  %80 = load %struct.api_info*, %struct.api_info** %7, align 8
  %81 = getelementptr inbounds %struct.api_info, %struct.api_info* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 0, i64* %82, align 8
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %74
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %50
  br label %87

87:                                               ; preds = %86, %38
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.api_info*, %struct.api_info** %7, align 8
  %92 = call i32 @__get_ref(%struct.api_info* %91)
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %3
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* @hvapi_lock, i64 %95)
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.api_info* @__get_info(i64) #1

declare dso_local i64 @sun4v_set_version(i64, i64, i64, i64*) #1

declare dso_local i32 @__get_ref(%struct.api_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
