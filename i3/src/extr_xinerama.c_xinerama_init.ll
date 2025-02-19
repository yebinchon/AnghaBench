; ModuleID = '/home/carl/AnghaBench/i3/src/extr_xinerama.c_xinerama_init.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_xinerama.c_xinerama_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@conn = common dso_local global i32 0, align 4
@xcb_xinerama_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Xinerama extension not found, using root output.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Xinerama is not active (in your X-Server), using root output.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xinerama_init() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @conn, align 4
  %3 = call %struct.TYPE_6__* @xcb_get_extension_data(i32 %2, i32* @xcb_xinerama_id)
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i32 @DLOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @conn, align 4
  %10 = call i32 @use_root_output(i32 %9)
  br label %33

11:                                               ; preds = %0
  %12 = load i32, i32* @conn, align 4
  %13 = load i32, i32* @conn, align 4
  %14 = call i32 @xcb_xinerama_is_active(i32 %13)
  %15 = call %struct.TYPE_5__* @xcb_xinerama_is_active_reply(i32 %12, i32 %14, i32* null)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %1, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %11
  %24 = call i32 @DLOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @conn, align 4
  %26 = call i32 @use_root_output(i32 %25)
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @conn, align 4
  %29 = call i32 @query_screens(i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %32 = call i32 @FREE(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %30, %7
  ret void
}

declare dso_local %struct.TYPE_6__* @xcb_get_extension_data(i32, i32*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @use_root_output(i32) #1

declare dso_local %struct.TYPE_5__* @xcb_xinerama_is_active_reply(i32, i32, i32*) #1

declare dso_local i32 @xcb_xinerama_is_active(i32) #1

declare dso_local i32 @query_screens(i32) #1

declare dso_local i32 @FREE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
