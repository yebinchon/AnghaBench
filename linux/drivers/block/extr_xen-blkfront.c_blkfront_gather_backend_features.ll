; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_gather_backend_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_gather_backend_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"feature-barrier\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"feature-flush-cache\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"feature-discard\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"feature-persistent\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"feature-max-indirect-segments\00", align 1
@xen_blkif_max_segments = common dso_local global i32 0, align 4
@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@blkfront_mutex = common dso_local global i32 0, align 4
@blkfront_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*)* @blkfront_gather_backend_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkfront_gather_backend_features(%struct.blkfront_info* %0) #0 {
  %2 = alloca %struct.blkfront_info*, align 8
  %3 = alloca i32, align 4
  store %struct.blkfront_info* %0, %struct.blkfront_info** %2, align 8
  %4 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %5 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %7 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %6, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %9 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xenbus_read_unsigned(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %17 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %19 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %22 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xenbus_read_unsigned(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %30 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %32 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %35 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xenbus_read_unsigned(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %43 = call i32 @blkfront_setup_discard(%struct.blkfront_info* %42)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %46 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xenbus_read_unsigned(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %56 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %58 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xenbus_read_unsigned(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @xen_blkif_max_segments, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %44
  %67 = load i32, i32* @xen_blkif_max_segments, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %44
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %71 = icmp ule i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %76 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %78 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = call i32 @mutex_lock(i32* @blkfront_mutex)
  %83 = load i32, i32* @HZ, align 4
  %84 = mul nsw i32 %83, 10
  %85 = call i32 @schedule_delayed_work(i32* @blkfront_work, i32 %84)
  %86 = call i32 @mutex_unlock(i32* @blkfront_mutex)
  br label %87

87:                                               ; preds = %81, %73
  ret void
}

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @blkfront_setup_discard(%struct.blkfront_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
