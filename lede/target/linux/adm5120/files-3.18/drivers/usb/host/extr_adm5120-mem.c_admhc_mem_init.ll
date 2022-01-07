; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-mem.c_admhc_mem_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-mem.c_admhc_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.admhcd = type { i32*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"admhc_td\00", align 1
@TD_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"admhc_ed\00", align 1
@ED_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.admhcd*)* @admhc_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @admhc_mem_init(%struct.admhcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.admhcd*, align 8
  store %struct.admhcd* %0, %struct.admhcd** %3, align 8
  %4 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %5 = call %struct.TYPE_4__* @admhcd_to_hcd(%struct.admhcd* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TD_ALIGN, align 4
  %10 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8, i32 4, i32 %9, i32 0)
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %13 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %15 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %21 = call %struct.TYPE_4__* @admhcd_to_hcd(%struct.admhcd* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ED_ALIGN, align 4
  %26 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 4, i32 %25, i32 0)
  %27 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %28 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %30 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %35

34:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %45

35:                                               ; preds = %33
  %36 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %37 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @dma_pool_destroy(i32* %38)
  %40 = load %struct.admhcd*, %struct.admhcd** %3, align 8
  %41 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %18
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @admhcd_to_hcd(%struct.admhcd*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
