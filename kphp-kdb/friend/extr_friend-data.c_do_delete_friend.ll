; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_delete_friend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_delete_friend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_del_friend = type { i32 }
%struct.lev_generic = type { i32 }

@LEV_FR_DEL_FRIEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_friend(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_del_friend*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @conv_uid(i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %24

14:                                               ; preds = %10
  %15 = load i32, i32* @LEV_FR_DEL_FRIEND, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.lev_del_friend* @alloc_log_event(i32 %15, i32 12, i32 %16)
  store %struct.lev_del_friend* %17, %struct.lev_del_friend** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.lev_del_friend*, %struct.lev_del_friend** %6, align 8
  %20 = getelementptr inbounds %struct.lev_del_friend, %struct.lev_del_friend* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.lev_del_friend*, %struct.lev_del_friend** %6, align 8
  %22 = bitcast %struct.lev_del_friend* %21 to %struct.lev_generic*
  %23 = call i32 @change_friend_logevent(%struct.lev_generic* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.lev_del_friend* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @change_friend_logevent(%struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
