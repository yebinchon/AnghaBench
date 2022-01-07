; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getaddrinfo.c_getaddrinfo_cuncurrent_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getaddrinfo.c_getaddrinfo_cuncurrent_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.addrinfo = type { i32 }

@CONCURRENT_COUNT = common dso_local global i32 0, align 4
@getaddrinfo_handles = common dso_local global %struct.TYPE_4__* null, align 8
@callback_counts = common dso_local global i32* null, align 8
@getaddrinfo_cbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, %struct.addrinfo*)* @getaddrinfo_cuncurrent_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getaddrinfo_cuncurrent_cb(%struct.TYPE_4__* %0, i32 %1, %struct.addrinfo* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.addrinfo* %2, %struct.addrinfo** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @CONCURRENT_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @getaddrinfo_handles, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = icmp eq %struct.TYPE_4__* %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32*, i32** @callback_counts, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %41

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %13

41:                                               ; preds = %24, %13
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @CONCURRENT_COUNT, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %50 = call i32 @uv_freeaddrinfo(%struct.addrinfo* %49)
  %51 = load i32, i32* @getaddrinfo_cbs, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @getaddrinfo_cbs, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @uv_freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
