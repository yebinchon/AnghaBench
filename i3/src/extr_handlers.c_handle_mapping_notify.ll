; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_mapping_notify.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_mapping_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@XCB_MAPPING_KEYBOARD = common dso_local global i64 0, align 8
@XCB_MAPPING_MODIFIER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"Received mapping_notify for keyboard or modifier mapping, re-grabbing keys\0A\00", align 1
@keysyms = common dso_local global i32 0, align 4
@XCB_NUM_LOCK = common dso_local global i32 0, align 4
@xcb_numlock_mask = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @handle_mapping_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_mapping_notify(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @XCB_MAPPING_KEYBOARD, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XCB_MAPPING_MODIFIER, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %28

15:                                               ; preds = %8, %1
  %16 = call i32 @DLOG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @keysyms, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32 @xcb_refresh_keyboard_mapping(i32 %17, %struct.TYPE_4__* %18)
  %20 = load i32, i32* @XCB_NUM_LOCK, align 4
  %21 = load i32, i32* @keysyms, align 4
  %22 = call i32 @aio_get_mod_mask_for(i32 %20, i32 %21)
  store i32 %22, i32* @xcb_numlock_mask, align 4
  %23 = load i32, i32* @conn, align 4
  %24 = call i32 @ungrab_all_keys(i32 %23)
  %25 = call i32 (...) @translate_keysyms()
  %26 = load i32, i32* @conn, align 4
  %27 = call i32 @grab_all_keys(i32 %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @xcb_refresh_keyboard_mapping(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @aio_get_mod_mask_for(i32, i32) #1

declare dso_local i32 @ungrab_all_keys(i32) #1

declare dso_local i32 @translate_keysyms(...) #1

declare dso_local i32 @grab_all_keys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
