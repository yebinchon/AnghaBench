; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_newListItem.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_newListItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.nlmsghdr*, i32* }
%struct.nlmsghdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.nlmsghdr*, i32)* @newListItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @newListItem(%struct.nlmsghdr* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_4__* @uv__malloc(i32 24)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %3, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %22
}

declare dso_local %struct.TYPE_4__* @uv__malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
