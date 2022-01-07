; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c___intel_8xx_fetch_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c___intel_8xx_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aper_size_info_8 = type { i64, i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__intel_8xx_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_8xx_fetch_size(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aper_size_info_8*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %10)
  store %struct.aper_size_info_8* %11, %struct.aper_size_info_8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %49, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %22, i64 %24
  %26 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %20
  %30 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %30, i64 %32
  %34 = bitcast %struct.aper_size_info_8* %33 to i8*
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %42, i64 %44
  %46 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %2, align 4
  br label %53

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %12

52:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
