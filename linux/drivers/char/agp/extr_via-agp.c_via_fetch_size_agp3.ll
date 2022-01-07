; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_via-agp.c_via_fetch_size_agp3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_via-agp.c_via_fetch_size_agp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aper_size_info_16 = type { i32, i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@VIA_AGP3_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @via_fetch_size_agp3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_fetch_size_agp3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aper_size_info_16*, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.aper_size_info_16* @A_SIZE_16(i32 %9)
  store %struct.aper_size_info_16* %10, %struct.aper_size_info_16** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VIA_AGP3_APSIZE, align 4
  %15 = call i32 @pci_read_config_word(i32 %13, i32 %14, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 4095
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %55, %0
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %4, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %28, i64 %30
  %32 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %26
  %36 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %4, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %36, i64 %38
  %40 = bitcast %struct.aper_size_info_16* %39 to i8*
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %4, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %48, i64 %50
  %52 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %1, align 4
  br label %59

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %18

58:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local %struct.aper_size_info_16* @A_SIZE_16(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
