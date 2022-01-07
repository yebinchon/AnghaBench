; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_add_fixed_timers.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_add_fixed_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = common dso_local global i32 0, align 4
@my_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_add_fixed_timers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32* @h2o_timerwheel_create(i32 6, i32 %7)
  store i32* %8, i32** %2, align 8
  %9 = load i32, i32* @N, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %33, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @N, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 5
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %12, i64 %23
  %25 = load i32, i32* @my_callback, align 4
  %26 = call i32 @h2o_timerwheel_init_entry(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %12, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @h2o_timerwheel_link_abs(i32* %27, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @h2o_timerwheel_run(i32* %37, i32 139)
  %39 = icmp eq i32 %38, 132
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @DUMP_WHEEL(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @h2o_timerwheel_destroy(i32* %44)
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

declare dso_local i32* @h2o_timerwheel_create(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @h2o_timerwheel_init_entry(i32*, i32) #1

declare dso_local i32 @h2o_timerwheel_link_abs(i32*, i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_timerwheel_run(i32*, i32) #1

declare dso_local i32 @DUMP_WHEEL(i32*) #1

declare dso_local i32 @h2o_timerwheel_destroy(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
