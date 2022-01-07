; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_ssid.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@PARAM_MODE = common dso_local global i32 0, align 4
@GET = common dso_local global i32 0, align 4
@interface = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@vif = common dso_local global i64 0, align 8
@WLC_GET_SSID = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@WLC_SET_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_ssid(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PARAM_MODE, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @GET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load i32, i32* @interface, align 4
  %19 = load i64, i64* @vif, align 8
  %20 = call i32 @wl_bssiovar_get(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %19, %struct.TYPE_5__* %10, i32 16)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @interface, align 4
  %25 = load i32, i32* @WLC_GET_SSID, align 4
  %26 = call i32 @wl_ioctl(i32 %24, i32 %25, %struct.TYPE_5__* %10, i32 16)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @memcpy(i8* %31, i32 %33, i64 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %30, %27
  br label %80

42:                                               ; preds = %3
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PARAM_MODE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SET, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strncpy(i32 %50, i8* %51, i32 32)
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %57, 32
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 32, i64* %60, align 8
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i64, i64* @vif, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @interface, align 4
  %66 = load i32, i32* @WLC_SET_SSID, align 4
  %67 = call i32 @wl_ioctl(i32 %65, i32 %66, %struct.TYPE_5__* %10, i32 16)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* @interface, align 4
  %70 = load i64, i64* @vif, align 8
  %71 = call i32 @wl_bssiovar_set(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %70, %struct.TYPE_5__* %10, i32 16)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 0, %74 ], [ %76, %75 ]
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %42
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @wl_bssiovar_get(i32, i8*, i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @wl_ioctl(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @wl_bssiovar_set(i32, i8*, i64, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
