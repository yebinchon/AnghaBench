; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c_window_supports_protocol.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c_window_supports_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64* }

@conn = common dso_local global i32 0, align 4
@A_WM_PROTOCOLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @window_supports_protocol(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @conn, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @A_WM_PROTOCOLS, align 4
  %13 = call i32 @xcb_icccm_get_wm_protocols(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @conn, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @xcb_icccm_get_wm_protocols_reply(i32 %14, i32 %15, %struct.TYPE_4__* %7, i32* null)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %20

38:                                               ; preds = %20
  %39 = call i32 @xcb_icccm_get_wm_protocols_reply_wipe(%struct.TYPE_4__* %7)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @xcb_icccm_get_wm_protocols(i32, i32, i32) #1

declare dso_local i32 @xcb_icccm_get_wm_protocols_reply(i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @xcb_icccm_get_wm_protocols_reply_wipe(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
