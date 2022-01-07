; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_conv_uid_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_conv_uid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@import_dump_mode = common dso_local global i64 0, align 8
@users = common dso_local global i32* null, align 8
@h_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @conv_uid_get(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %30

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @dl_abs(i32 %9)
  %11 = load i32, i32* @log_split_mod, align 4
  %12 = srem i32 %10, %11
  %13 = load i32, i32* @log_split_min, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %30

16:                                               ; preds = %8
  %17 = load i64, i64* @import_dump_mode, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** @users, align 8
  store i32* %20, i32** %2, align 8
  br label %30

21:                                               ; preds = %16
  %22 = call i64 @set_intp_get(i32* @h_users, i32* %3)
  %23 = inttoptr i64 %22 to i32**
  store i32** %23, i32*** %4, align 8
  %24 = load i32**, i32*** %4, align 8
  %25 = icmp eq i32** %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %30

27:                                               ; preds = %21
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %2, align 8
  br label %30

30:                                               ; preds = %27, %26, %19, %15, %7
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i32 @dl_abs(i32) #1

declare dso_local i64 @set_intp_get(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
