; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_cond_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_cond_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cond_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call i32 @pthread_condattr_init(i32* %4)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @UV__ERR(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %14 = call i32 @pthread_condattr_setclock(i32* %4, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %33

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @pthread_cond_init(i32* %19, i32* %4)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %33

24:                                               ; preds = %18
  %25 = call i32 @pthread_condattr_destroy(i32* %4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %37

30:                                               ; preds = %28
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pthread_cond_destroy(i32* %31)
  br label %33

33:                                               ; preds = %30, %23, %17
  %34 = call i32 @pthread_condattr_destroy(i32* %4)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @UV__ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %29, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @pthread_condattr_init(i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @pthread_condattr_setclock(i32*, i32) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_condattr_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
