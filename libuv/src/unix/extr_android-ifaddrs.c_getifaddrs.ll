; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_getifaddrs.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_getifaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }

@RTM_GETLINK = common dso_local global i32 0, align 4
@RTM_GETADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getifaddrs(%struct.ifaddrs** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifaddrs**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.ifaddrs** %0, %struct.ifaddrs*** %3, align 8
  %10 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  %11 = icmp ne %struct.ifaddrs** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  store %struct.ifaddrs* null, %struct.ifaddrs** %14, align 8
  %15 = call i32 @netlink_socket(i32* %7)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %66

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @RTM_GETLINK, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32* @getResultList(i32 %20, i32 %21, i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @close(i32 %27)
  store i32 -1, i32* %2, align 4
  br label %66

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RTM_GETADDR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32* @getResultList(i32 %30, i32 %31, i32 %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @freeResultList(i32* %39)
  store i32 -1, i32* %2, align 4
  br label %66

41:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  %46 = call i32 @interpretLinks(i32 %42, i32 %43, i32* %44, %struct.ifaddrs** %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @interpretAddrs(i32 %50, i32 %51, i32* %52, %struct.ifaddrs** %53, i32 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %41
  store i32 -1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @freeResultList(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @freeResultList(i32* %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %58, %36, %26, %18, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @netlink_socket(i32*) #1

declare dso_local i32* @getResultList(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeResultList(i32*) #1

declare dso_local i32 @interpretLinks(i32, i32, i32*, %struct.ifaddrs**) #1

declare dso_local i32 @interpretAddrs(i32, i32, i32*, %struct.ifaddrs**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
