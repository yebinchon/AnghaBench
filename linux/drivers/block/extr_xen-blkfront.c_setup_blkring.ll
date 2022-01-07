; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_setup_blkring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_setup_blkring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.blkfront_ring_info = type { i32, i32, i32*, %struct.TYPE_2__, %struct.blkfront_info* }
%struct.TYPE_2__ = type { i32* }
%struct.blkfront_info = type { i64 }
%struct.blkif_sring = type { i32 }

@XEN_PAGE_SIZE = common dso_local global i64 0, align 8
@XENBUS_MAX_RING_GRANTS = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allocating shared ring\00", align 1
@blkif_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"blkif\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"bind_evtchn_to_irqhandler failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.blkfront_ring_info*)* @setup_blkring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_blkring(%struct.xenbus_device* %0, %struct.blkfront_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.blkfront_ring_info*, align 8
  %6 = alloca %struct.blkif_sring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkfront_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.blkfront_ring_info* %1, %struct.blkfront_ring_info** %5, align 8
  %14 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %15 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %14, i32 0, i32 4
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %15, align 8
  store %struct.blkfront_info* %16, %struct.blkfront_info** %9, align 8
  %17 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %18 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XEN_PAGE_SIZE, align 8
  %21 = mul i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* @XENBUS_MAX_RING_GRANTS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %41, %2
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %30 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32, i32* @GRANT_INVALID_REF, align 4
  %35 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %36 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* @GFP_NOIO, align 4
  %46 = load i32, i32* @__GFP_HIGH, align 4
  %47 = or i32 %45, %46
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @get_order(i64 %48)
  %50 = call i64 @__get_free_pages(i32 %47, i32 %49)
  %51 = inttoptr i64 %50 to %struct.blkif_sring*
  store %struct.blkif_sring* %51, %struct.blkif_sring** %6, align 8
  %52 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %53 = icmp ne %struct.blkif_sring* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %55, i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %141

61:                                               ; preds = %44
  %62 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %63 = call i32 @SHARED_RING_INIT(%struct.blkif_sring* %62)
  %64 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %65 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %64, i32 0, i32 3
  %66 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @FRONT_RING_INIT(%struct.TYPE_2__* %65, %struct.blkif_sring* %66, i64 %67)
  %69 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %70 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %71 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %75 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %69, i32* %73, i32 %77, i32* %25)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %61
  %82 = load %struct.blkif_sring*, %struct.blkif_sring** %6, align 8
  %83 = ptrtoint %struct.blkif_sring* %82 to i64
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @get_order(i64 %84)
  %86 = call i32 @free_pages(i64 %83, i32 %85)
  %87 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %88 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %137

90:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %95 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %25, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %104 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %114 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %115 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %114, i32 0, i32 1
  %116 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %113, i32* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %137

120:                                              ; preds = %112
  %121 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %122 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @blkif_interrupt, align 4
  %125 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %126 = call i32 @bind_evtchn_to_irqhandler(i32 %123, i32 %124, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.blkfront_ring_info* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %130, i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %137

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %5, align 8
  %136 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %141

137:                                              ; preds = %129, %119, %81
  %138 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %139 = call i32 @blkif_free(%struct.blkfront_info* %138, i32 0)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %141

141:                                              ; preds = %137, %133, %54
  %142 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @__get_free_pages(i32, i32) #2

declare dso_local i32 @get_order(i64) #2

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #2

declare dso_local i32 @SHARED_RING_INIT(%struct.blkif_sring*) #2

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_2__*, %struct.blkif_sring*, i64) #2

declare dso_local i32 @xenbus_grant_ring(%struct.xenbus_device*, i32*, i32, i32*) #2

declare dso_local i32 @free_pages(i64, i32) #2

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #2

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i8*, %struct.blkfront_ring_info*) #2

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
