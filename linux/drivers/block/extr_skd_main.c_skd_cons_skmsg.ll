; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_skmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_skmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, %struct.TYPE_2__*, %struct.skd_fitmsg_context* }
%struct.TYPE_2__ = type { i32 }
%struct.skd_fitmsg_context = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [53 x i8] c"skmsg_table kcalloc, struct %lu, count %u total %lu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKD_ID_FIT_MSG = common dso_local global i64 0, align 8
@SKD_N_FITMSG_BYTES = common dso_local global i32 0, align 4
@FIT_QCMD_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"not aligned: msg_buf %p mb_dma_address %pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_cons_skmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_cons_skmsg(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.skd_fitmsg_context*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %7 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %11 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %14 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 24, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 24, i32 %12, i32 %18)
  %20 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %21 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.skd_fitmsg_context* @kcalloc(i32 %22, i32 24, i32 %23)
  %25 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %26 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %25, i32 0, i32 2
  store %struct.skd_fitmsg_context* %24, %struct.skd_fitmsg_context** %26, align 8
  %27 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %28 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %27, i32 0, i32 2
  %29 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %28, align 8
  %30 = icmp eq %struct.skd_fitmsg_context* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %94

34:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %90, %34
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %38 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %35
  %43 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %44 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %43, i32 0, i32 2
  %45 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %45, i64 %46
  store %struct.skd_fitmsg_context* %47, %struct.skd_fitmsg_context** %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @SKD_ID_FIT_MSG, align 8
  %50 = add i64 %48, %49
  %51 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %52 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %54 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* @SKD_N_FITMSG_BYTES, align 4
  %58 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %59 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %58, i32 0, i32 0
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @dma_alloc_coherent(i32* %56, i32 %57, i64* %59, i32 %60)
  %62 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %63 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %65 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %42
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %42
  %72 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %73 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = ptrtoint i32* %74 to i64
  %76 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %77 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %75, %78
  %80 = load i32, i32* @FIT_QCMD_ALIGN, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = and i64 %79, %82
  %84 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %85 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.skd_fitmsg_context*, %struct.skd_fitmsg_context** %5, align 8
  %88 = getelementptr inbounds %struct.skd_fitmsg_context, %struct.skd_fitmsg_context* %87, i32 0, i32 0
  %89 = call i32 @WARN(i64 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %86, i64* %88)
  br label %90

90:                                               ; preds = %71
  %91 = load i64, i64* %4, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %4, align 8
  br label %35

93:                                               ; preds = %35
  br label %94

94:                                               ; preds = %93, %68, %31
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.skd_fitmsg_context* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @WARN(i64, i8*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
