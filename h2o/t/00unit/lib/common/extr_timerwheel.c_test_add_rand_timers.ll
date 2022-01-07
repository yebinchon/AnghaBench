; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_add_rand_timers.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_add_rand_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = common dso_local global i32 0, align 4
@my_callback = common dso_local global i32 0, align 4
@invokes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_add_rand_timers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32* @h2o_timerwheel_create(i32 6, i32 %8)
  store i32* %9, i32** %2, align 8
  %10 = load i32, i32* @N, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %35, %0
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @N, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = call i32 (...) @lcg_rand()
  %21 = load i32, i32* @N, align 4
  %22 = srem i32 %20, %21
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %13, i64 %25
  %27 = load i32, i32* @my_callback, align 4
  %28 = call i32 @h2o_timerwheel_init_entry(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %13, i64 %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @h2o_timerwheel_link_abs(i32* %29, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* @invokes, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @N, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @h2o_timerwheel_run(i32* %40, i32 %44)
  %46 = load i32, i32* @N, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48)
  %50 = load i32, i32* @invokes, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* @N, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @DUMP_WHEEL(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @h2o_timerwheel_destroy(i32* %59)
  %61 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

declare dso_local i32* @h2o_timerwheel_create(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lcg_rand(...) #1

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
