; ModuleID = '/home/carl/AnghaBench/i3/src/extr_startup.c_startup_sequence_delete_by_window.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_startup.c_startup_sequence_delete_by_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.Startup_Sequence = type { i32 }

@conn = common dso_local global i32 0, align 4
@A__NET_STARTUP_ID = common dso_local global i32 0, align 4
@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startup_sequence_delete_by_window(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.Startup_Sequence*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load i32, i32* @conn, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @A__NET_STARTUP_ID, align 4
  %11 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %12 = call i32 @xcb_get_property(i32 %6, i32 0, i32 %9, i32 %10, i32 %11, i32 0, i32 512)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @conn, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32* @xcb_get_property_reply(i32 %13, i32 %14, i32* null)
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.Startup_Sequence* @startup_sequence_get(%struct.TYPE_4__* %16, i32* %17, i32 1)
  store %struct.Startup_Sequence* %18, %struct.Startup_Sequence** %3, align 8
  %19 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %3, align 8
  %20 = icmp ne %struct.Startup_Sequence* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %3, align 8
  %23 = call i32 @startup_sequence_delete(%struct.Startup_Sequence* %22)
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @xcb_get_property(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @xcb_get_property_reply(i32, i32, i32*) #1

declare dso_local %struct.Startup_Sequence* @startup_sequence_get(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @startup_sequence_delete(%struct.Startup_Sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
