; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_set_video.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_set_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ASK_VGA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Undefined video mode number: %x\0A\00", align 1
@do_restore = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_video() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 8
  store i64 %2, i64* %1, align 8
  %3 = call i32 (...) @RESET_HEAP()
  %4 = call i32 (...) @store_mode_params()
  %5 = call i32 (...) @save_screen()
  %6 = call i32 @probe_cards(i32 0)
  br label %7

7:                                                ; preds = %18, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @ASK_VGA, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i64 (...) @mode_menu()
  store i64 %12, i64* %1, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @set_mode(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %22

18:                                               ; preds = %13
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* @ASK_VGA, align 8
  store i64 %21, i64* %1, align 8
  br label %7

22:                                               ; preds = %17
  %23 = load i64, i64* %1, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 8
  %24 = call i32 (...) @vesa_store_edid()
  %25 = call i32 (...) @store_mode_params()
  %26 = load i64, i64* @do_restore, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @restore_screen()
  br label %30

30:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @RESET_HEAP(...) #1

declare dso_local i32 @store_mode_params(...) #1

declare dso_local i32 @save_screen(...) #1

declare dso_local i32 @probe_cards(i32) #1

declare dso_local i64 @mode_menu(...) #1

declare dso_local i32 @set_mode(i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @vesa_store_edid(...) #1

declare dso_local i32 @restore_screen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
