; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_store_mode_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_store_mode_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@graphic_mode = common dso_local global i64 0, align 8
@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@video_segment = common dso_local global i32 0, align 4
@adapter = common dso_local global i64 0, align 8
@ADAPTER_CGA = common dso_local global i64 0, align 8
@force_x = common dso_local global i32 0, align 4
@force_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @store_mode_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_mode_params() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @graphic_mode, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %41

7:                                                ; preds = %0
  %8 = call i32 (...) @store_cursor_position()
  %9 = call i32 (...) @store_video_mode()
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 8
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 45056, i32* @video_segment, align 4
  br label %14

13:                                               ; preds = %7
  store i32 47104, i32* @video_segment, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = call i32 @set_fs(i32 0)
  %16 = call i8* @rdfs16(i32 1157)
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 3), align 8
  %18 = call i8* @rdfs16(i32 1098)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %2, align 4
  %20 = load i64, i64* @adapter, align 8
  %21 = load i64, i64* @ADAPTER_CGA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %27

24:                                               ; preds = %14
  %25 = call i32 @rdfs8(i32 1156)
  %26 = add nsw i32 %25, 1
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 25, %23 ], [ %26, %24 ]
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @force_x, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @force_x, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* @force_y, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @force_y, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 1), align 4
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 2), align 8
  br label %41

41:                                               ; preds = %38, %6
  ret void
}

declare dso_local i32 @store_cursor_position(...) #1

declare dso_local i32 @store_video_mode(...) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i8* @rdfs16(i32) #1

declare dso_local i32 @rdfs8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
