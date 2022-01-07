; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_fake_configure_notify.c_fake_configure_notify.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_fake_configure_notify.c_fake_configure_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@XCB_CONFIGURE_NOTIFY = common dso_local global i32 0, align 4
@XCB_NONE = common dso_local global i32 0, align 4
@XCB_EVENT_MASK_STRUCTURE_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fake_configure_notify(i32* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = bitcast %struct.TYPE_4__* %6 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %2, i64* %14, align 4
  store i32* %0, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 %4, i32* %9, align 4
  %15 = call i8* @scalloc(i32 32, i32 1)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 9
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 8
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @XCB_CONFIGURE_NOTIFY, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @XCB_NONE, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @XCB_EVENT_MASK_STRUCTURE_NOTIFY, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = bitcast %struct.TYPE_5__* %54 to i8*
  %56 = call i32 @xcb_send_event(i32* %51, i32 0, i8* %52, i32 %53, i8* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @xcb_flush(i32* %57)
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @free(i8* %59)
  ret void
}

declare dso_local i8* @scalloc(i32, i32) #1

declare dso_local i32 @xcb_send_event(i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @xcb_flush(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
