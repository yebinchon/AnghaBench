; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_update_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_event_update_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @event_update_str(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %4, align 8
  br label %41

13:                                               ; preds = %3
  %14 = call i32 (...) @tmp_mem_init()
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @event_dump_init(%struct.TYPE_6__* %8, i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @event_dump_from_str(%struct.TYPE_6__* %8, i8* %17, i32 %18, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32* null, i32** %4, align 8
  br label %41

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @event_dump_from_event(%struct.TYPE_6__* %8, i32* %28, i32 %29, i32* null)
  %31 = icmp sgt i32 %30, -1
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i32* @create_event(%struct.TYPE_6__* %8)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %27, %23
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %39, %22, %11
  %42 = load i32*, i32** %4, align 8
  ret i32* %42
}

declare dso_local i32 @tmp_mem_init(...) #1

declare dso_local i32 @event_dump_init(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @event_dump_from_str(%struct.TYPE_6__*, i8*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @event_dump_from_event(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i32* @create_event(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
