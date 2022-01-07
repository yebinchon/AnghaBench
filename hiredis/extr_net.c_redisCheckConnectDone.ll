; ModuleID = '/home/carl/AnghaBench/hiredis/extr_net.c_redisCheckConnectDone.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_net.c_redisCheckConnectDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.sockaddr = type { i32 }

@REDIS_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisCheckConnectDone(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.sockaddr*
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @connect(i32 %9, %struct.sockaddr* %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @REDIS_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @errno, align 4
  switch i32 %24, label %31 [
    i32 129, label %25
    i32 131, label %28
    i32 130, label %28
    i32 128, label %28
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %5, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @REDIS_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %23, %23, %23
  %29 = load i32*, i32** %5, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @REDIS_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @REDIS_ERR, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28, %25, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
