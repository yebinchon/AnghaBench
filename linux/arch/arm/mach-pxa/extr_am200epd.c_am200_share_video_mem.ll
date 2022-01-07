; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_am200epd.c_am200_share_video_mem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_am200epd.c_am200_share_video_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.fb_info*, i32 }
%struct.fb_info = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@am200_fb_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@am200_board = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @am200_share_video_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am200_share_video_mem(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @am200_fb_info, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @am200_fb_info, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %38

22:                                               ; preds = %12
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @am200_board, i32 0, i32 1), align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  store %struct.fb_info* %26, %struct.fb_info** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @am200_board, i32 0, i32 0), align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @try_module_get(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %21
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
