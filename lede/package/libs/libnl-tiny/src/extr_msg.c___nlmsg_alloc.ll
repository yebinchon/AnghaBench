; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c___nlmsg_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c___nlmsg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"msg %p: Allocated new message, maxlen=%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nl_msg* (i64)* @__nlmsg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nl_msg* @__nlmsg_alloc(i64 %0) #0 {
  %2 = alloca %struct.nl_msg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nl_msg*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call %struct.nl_msg* @calloc(i32 1, i32 24)
  store %struct.nl_msg* %5, %struct.nl_msg** %4, align 8
  %6 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %7 = icmp ne %struct.nl_msg* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %11 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call %struct.TYPE_3__* @malloc(i64 %12)
  %14 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %15 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %14, i32 0, i32 3
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %17 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %40

21:                                               ; preds = %9
  %22 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %23 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @memset(%struct.TYPE_3__* %24, i32 0, i32 4)
  %26 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %27 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %30 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = call i32 @nlmsg_total_size(i32 0)
  %32 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %33 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @NL_DBG(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.nl_msg* %36, i64 %37)
  %39 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  store %struct.nl_msg* %39, %struct.nl_msg** %2, align 8
  br label %43

40:                                               ; preds = %20, %8
  %41 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %42 = call i32 @free(%struct.nl_msg* %41)
  store %struct.nl_msg* null, %struct.nl_msg** %2, align 8
  br label %43

43:                                               ; preds = %40, %21
  %44 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8
  ret %struct.nl_msg* %44
}

declare dso_local %struct.nl_msg* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_3__* @malloc(i64) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @nlmsg_total_size(i32) #1

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_msg*, i64) #1

declare dso_local i32 @free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
