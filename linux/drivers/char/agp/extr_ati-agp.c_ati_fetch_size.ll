; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_ati-agp.c_ati_fetch_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_ati-agp.c_ati_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aper_size_info_lvl2 = type { i32, i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@ATI_RS100_APSIZE = common dso_local global i32 0, align 4
@ATI_RS300_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ati_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aper_size_info_lvl2*, align 8
  %5 = call i64 (...) @is_r200()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ATI_RS100_APSIZE, align 4
  %12 = call i32 @pci_read_config_dword(i32 %10, i32 %11, i32* %3)
  br label %19

13:                                               ; preds = %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATI_RS300_APSIZE, align 4
  %18 = call i32 @pci_read_config_dword(i32 %16, i32 %17, i32* %3)
  br label %19

19:                                               ; preds = %13, %7
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 14
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.aper_size_info_lvl2* @A_SIZE_LVL2(i32 %26)
  store %struct.aper_size_info_lvl2* %27, %struct.aper_size_info_lvl2** %4, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %65, %19
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %4, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %38, i64 %40
  %42 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %36
  %46 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %4, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %46, i64 %48
  %50 = bitcast %struct.aper_size_info_lvl2* %49 to i8*
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* %2, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %4, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %58, i64 %60
  %62 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %1, align 4
  br label %69

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %28

68:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i64 @is_r200(...) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local %struct.aper_size_info_lvl2* @A_SIZE_LVL2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
