; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd64_fetch_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_amd64_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.aper_size_info_32 = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.pci_dev* }

@AMD64_GARTAPERTURECTL = common dso_local global i32 0, align 4
@amd64_aperture_sizes = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @amd64_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.aper_size_info_32*, align 8
  %6 = call %struct.TYPE_5__* @node_to_amd_nb(i32 0)
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = icmp eq %struct.pci_dev* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %61

12:                                               ; preds = %0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = load i32, i32* @AMD64_GARTAPERTURECTL, align 4
  %15 = call i32 @pci_read_config_dword(%struct.pci_dev* %13, i32 %14, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 14
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @amd64_aperture_sizes, align 4
  %19 = call %struct.aper_size_info_32* @A_SIZE_32(i32 %18)
  store %struct.aper_size_info_32* %19, %struct.aper_size_info_32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %57, %12
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %30, i64 %32
  %34 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %29, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %28
  %38 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %5, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %38, i64 %40
  %42 = bitcast %struct.aper_size_info_32* %41 to i8*
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %5, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %50, i64 %52
  %54 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
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

61:                                               ; preds = %60, %37, %11
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_5__* @node_to_amd_nb(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.aper_size_info_32* @A_SIZE_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
