; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_birthday.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_birthday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_birthday = type { i32, i32, i32 }

@LEV_TARG_BIRTHDAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_birthday(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_birthday*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 31
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 12
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 1900
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 2008
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @get_user(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %28, %25, %19, %16, %13, %4
  store i32 0, i32* %5, align 4
  br label %51

36:                                               ; preds = %31
  %37 = load i32, i32* @LEV_TARG_BIRTHDAY, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.lev_birthday* @alloc_log_event(i32 %37, i32 12, i32 %38)
  store %struct.lev_birthday* %39, %struct.lev_birthday** %10, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.lev_birthday*, %struct.lev_birthday** %10, align 8
  %42 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.lev_birthday*, %struct.lev_birthday** %10, align 8
  %45 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.lev_birthday*, %struct.lev_birthday** %10, align 8
  %48 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.lev_birthday*, %struct.lev_birthday** %10, align 8
  %50 = call i32 @set_birthday(%struct.lev_birthday* %49)
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %36, %35
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @get_user(i32) #1

declare dso_local %struct.lev_birthday* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_birthday(%struct.lev_birthday*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
