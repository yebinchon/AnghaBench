; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_add_friend_request.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_add_friend_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_friend = type { i32, i32 }

@LEV_FR_NEW_FRIENDREQ = common dso_local global i32 0, align 4
@LEV_FR_ADD_FRIENDREQ = common dso_local global i32 0, align 4
@LEV_FR_REPLACE_FRIENDREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_friend_request(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lev_add_friend*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @conv_uid(i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp ugt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %4
  store i32 -1, i32* %5, align 4
  br label %64

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @LEV_FR_NEW_FRIENDREQ, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @LEV_FR_ADD_FRIENDREQ, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @LEV_FR_REPLACE_FRIENDREQ, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.lev_add_friend* @alloc_log_event(i32 %40, i32 16, i32 %41)
  store %struct.lev_add_friend* %42, %struct.lev_add_friend** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.lev_add_friend*, %struct.lev_add_friend** %11, align 8
  %45 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.lev_add_friend*, %struct.lev_add_friend** %11, align 8
  %48 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = call i32* @get_user_f(i32 %52)
  br label %57

54:                                               ; preds = %39
  %55 = load i32, i32* %6, align 4
  %56 = call i32* @get_user(i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32* [ %53, %51 ], [ %56, %54 ]
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @add_friend_request(i32* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %24
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.lev_add_friend* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32* @get_user_f(i32) #1

declare dso_local i32* @get_user(i32) #1

declare dso_local i32 @add_friend_request(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
