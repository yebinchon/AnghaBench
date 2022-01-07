; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp3_generic_fetch_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp3_generic_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aper_size_info_16 = type { i64, i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@AGPAPSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp3_generic_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.aper_size_info_16*, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AGPAPSIZE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @pci_read_config_word(i32 %7, i64 %12, i64* %2)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.aper_size_info_16* @A_SIZE_16(i32 %18)
  store %struct.aper_size_info_16* %19, %struct.aper_size_info_16** %4, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %57, %0
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %20
  %29 = load i64, i64* %2, align 8
  %30 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %30, i64 %32
  %34 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %28
  %38 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %38, i64 %40
  %42 = bitcast %struct.aper_size_info_16* %41 to i8*
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %50, i64 %52
  %54 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %1, align 4
  br label %61

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %20

60:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @pci_read_config_word(i32, i64, i64*) #1

declare dso_local %struct.aper_size_info_16* @A_SIZE_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
