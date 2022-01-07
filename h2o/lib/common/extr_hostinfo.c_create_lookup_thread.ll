; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_hostinfo.c_create_lookup_thread.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_hostinfo.c_create_lookup_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@lookup_thread_main = common dso_local global i32 0, align 4
@queue = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"failed to start first thread for getaddrinfo: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"pthread_create(for getaddrinfo): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_lookup_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_lookup_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = call i32 @pthread_attr_init(i32* %2)
  %6 = call i32 @pthread_attr_setdetachstate(i32* %2, i32 1)
  %7 = call i32 @pthread_attr_setstacksize(i32* %2, i32 102400)
  %8 = load i32, i32* @lookup_thread_main, align 4
  %9 = call i32 @pthread_create(i32* %1, i32* null, i32 %8, i32* null)
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %0
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @queue, i32 0, i32 0), align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %17 = call i32 @h2o_strerror_r(i32 %15, i8* %16, i32 128)
  %18 = call i32 @h2o_fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %22 = call i32 @h2o_strerror_r(i32 %20, i8* %21, i32 128)
  %23 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  br label %30

25:                                               ; preds = %0
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @queue, i32 0, i32 0), align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @queue, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @queue, i32 0, i32 1), align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @queue, i32 0, i32 1), align 8
  br label %30

30:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @h2o_fatal(i8*, i32) #1

declare dso_local i32 @h2o_strerror_r(i32, i8*, i32) #1

declare dso_local i32 @h2o_error_printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
