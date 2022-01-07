; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_persist_active_timeout_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_persist_active_timeout_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persist_active_timeout_called = type { i32, i16*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @persist_active_timeout_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persist_active_timeout_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.persist_active_timeout_called*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.persist_active_timeout_called*
  store %struct.persist_active_timeout_called* %9, %struct.persist_active_timeout_called** %7, align 8
  %10 = load %struct.persist_active_timeout_called*, %struct.persist_active_timeout_called** %7, align 8
  %11 = getelementptr inbounds %struct.persist_active_timeout_called, %struct.persist_active_timeout_called* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 15
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load i16, i16* %5, align 2
  %16 = load %struct.persist_active_timeout_called*, %struct.persist_active_timeout_called** %7, align 8
  %17 = getelementptr inbounds %struct.persist_active_timeout_called, %struct.persist_active_timeout_called* %16, i32 0, i32 1
  %18 = load i16*, i16** %17, align 8
  %19 = load %struct.persist_active_timeout_called*, %struct.persist_active_timeout_called** %7, align 8
  %20 = getelementptr inbounds %struct.persist_active_timeout_called, %struct.persist_active_timeout_called* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %18, i64 %22
  store i16 %15, i16* %23, align 2
  %24 = load %struct.persist_active_timeout_called*, %struct.persist_active_timeout_called** %7, align 8
  %25 = getelementptr inbounds %struct.persist_active_timeout_called, %struct.persist_active_timeout_called* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.persist_active_timeout_called*, %struct.persist_active_timeout_called** %7, align 8
  %28 = getelementptr inbounds %struct.persist_active_timeout_called, %struct.persist_active_timeout_called* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = call i32 @evutil_gettimeofday(i32* %31, i32* null)
  %33 = load %struct.persist_active_timeout_called*, %struct.persist_active_timeout_called** %7, align 8
  %34 = getelementptr inbounds %struct.persist_active_timeout_called, %struct.persist_active_timeout_called* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
