; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_getResultList.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_getResultList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.nlmsghdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, i32)* @getResultList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @getResultList(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @netlink_send(i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %55

19:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.nlmsghdr* @getNetlinkResponse(i32 %25, i32 %26, i32* %8, i32* %9)
  store %struct.nlmsghdr* %27, %struct.nlmsghdr** %13, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %29 = icmp ne %struct.nlmsghdr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = call i32 @freeResultList(%struct.TYPE_5__* %31)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %55

33:                                               ; preds = %24
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.TYPE_5__* @newListItem(%struct.nlmsghdr* %34, i32 %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = call i32 @freeResultList(%struct.TYPE_5__* %40)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %10, align 8
  br label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  br label %51

51:                                               ; preds = %47, %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %11, align 8
  br label %20

53:                                               ; preds = %20
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %4, align 8
  br label %55

55:                                               ; preds = %53, %39, %30, %18
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %56
}

declare dso_local i64 @netlink_send(i32, i32) #1

declare dso_local %struct.nlmsghdr* @getNetlinkResponse(i32, i32, i32*, i32*) #1

declare dso_local i32 @freeResultList(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @newListItem(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
