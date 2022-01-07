; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_change_album_order.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_change_album_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_only = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_change_album_order(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @write_only, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %27

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @user_loaded(i32* %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @user_get_album_data(i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @user_change_order(i32* %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp sgt i32 %24, -1
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(i32*) #1

declare dso_local i32* @user_get_album_data(i32*) #1

declare dso_local i32 @user_change_order(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
