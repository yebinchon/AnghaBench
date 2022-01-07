; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_check_scale_change.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_check_scale_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iolatency_grp = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.child_latency_info }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.child_latency_info = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@DEFAULT_SCALE_COOKIE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iolatency_grp*)* @check_scale_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_scale_change(%struct.iolatency_grp* %0) #0 {
  %2 = alloca %struct.iolatency_grp*, align 8
  %3 = alloca %struct.iolatency_grp*, align 8
  %4 = alloca %struct.child_latency_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.iolatency_grp* %0, %struct.iolatency_grp** %2, align 8
  %11 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %12 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %11, i32 0, i32 4
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %15 = call %struct.TYPE_8__* @lat_to_blkg(%struct.iolatency_grp* %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %129

20:                                               ; preds = %1
  %21 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %22 = call %struct.TYPE_8__* @lat_to_blkg(%struct.iolatency_grp* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call %struct.iolatency_grp* @blkg_to_lat(i32* %24)
  store %struct.iolatency_grp* %25, %struct.iolatency_grp** %3, align 8
  %26 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %27 = icmp ne %struct.iolatency_grp* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %129

29:                                               ; preds = %20
  %30 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %31 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %30, i32 0, i32 5
  store %struct.child_latency_info* %31, %struct.child_latency_info** %4, align 8
  %32 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %33 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %32, i32 0, i32 2
  %34 = call i32 @atomic_read(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %36 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @READ_ONCE(i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 -1, i32* %9, align 4
  br label %50

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %49

48:                                               ; preds = %43
  br label %129

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %42
  %51 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %52 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %51, i32 0, i32 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @atomic_cmpxchg(i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %129

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %65 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %73 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %68
  br label %129

78:                                               ; preds = %71
  %79 = load %struct.child_latency_info*, %struct.child_latency_info** %4, align 8
  %80 = getelementptr inbounds %struct.child_latency_info, %struct.child_latency_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 5
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @div64_u64(i64 %84, i32 100)
  %86 = call i64 @max(i64 1, i32 %85)
  store i64 %86, i64* %10, align 8
  %87 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %88 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %129

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %63, %60
  %95 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %96 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %105 = call %struct.TYPE_8__* @lat_to_blkg(%struct.iolatency_grp* %104)
  %106 = call i32 @blkcg_use_delay(%struct.TYPE_8__* %105)
  br label %129

107:                                              ; preds = %100, %94
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @DEFAULT_SCALE_COOKIE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %113 = call %struct.TYPE_8__* @lat_to_blkg(%struct.iolatency_grp* %112)
  %114 = call i32 @blkcg_clear_delay(%struct.TYPE_8__* %113)
  %115 = load i32, i32* @UINT_MAX, align 4
  %116 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %117 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  %119 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %120 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = call i32 @wake_up_all(i32* %121)
  br label %129

123:                                              ; preds = %107
  %124 = load %struct.iolatency_grp*, %struct.iolatency_grp** %2, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp sgt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @scale_change(%struct.iolatency_grp* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %111, %103, %92, %77, %59, %48, %28, %19
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_8__* @lat_to_blkg(%struct.iolatency_grp*) #1

declare dso_local %struct.iolatency_grp* @blkg_to_lat(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @div64_u64(i64, i32) #1

declare dso_local i32 @blkcg_use_delay(%struct.TYPE_8__*) #1

declare dso_local i32 @blkcg_clear_delay(%struct.TYPE_8__*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @scale_change(%struct.iolatency_grp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
