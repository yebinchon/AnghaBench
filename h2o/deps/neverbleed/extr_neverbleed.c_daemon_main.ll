; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_daemon_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_daemon_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_OPEN_MAX = common dso_local global i32 0, align 4
@daemon_close_notify_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pthread_create failed\00", align 1
@daemon_conn_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @daemon_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @daemon_main(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @_SC_OPEN_MAX, align 4
  %12 = call i64 @sysconf(i32 %11)
  %13 = trunc i64 %12 to i32
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @close(i32 %28)
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %10, align 4
  br label %15

33:                                               ; preds = %15
  %34 = call i32 @pthread_attr_init(i32* %8)
  %35 = call i32 @pthread_attr_setdetachstate(i32* %8, i32 1)
  %36 = load i32, i32* @daemon_close_notify_thread, align 4
  %37 = load i32, i32* %5, align 4
  %38 = inttoptr i32 %37 to i8*
  %39 = call i64 @pthread_create(i32* %7, i32* %8, i32 %36, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @dief(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %33
  br label %44

44:                                               ; preds = %43, %58
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @accept(i32 %46, i32* null, i32* null)
  store i32 %47, i32* %9, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %45

50:                                               ; preds = %45
  %51 = load i32, i32* @daemon_conn_thread, align 4
  %52 = load i32, i32* %9, align 4
  %53 = inttoptr i32 %52 to i8*
  %54 = call i64 @pthread_create(i32* %7, i32* %8, i32 %51, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @dief(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  br label %44
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @dief(i8*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
