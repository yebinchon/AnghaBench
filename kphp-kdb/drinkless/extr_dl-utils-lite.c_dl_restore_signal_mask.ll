; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_dl_restore_signal_mask.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_dl_restore_signal_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@old_mask_inited = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"old_mask in not inited\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@old_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to restore signal mask\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_restore_signal_mask() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @old_mask_inited, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @dl_assert(i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @SIG_SETMASK, align 4
  %7 = call i32 @sigprocmask(i32 %6, i32* @old_mask, i32* null)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i32 @dl_passert(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dl_assert(i32, i8*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @dl_passert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
