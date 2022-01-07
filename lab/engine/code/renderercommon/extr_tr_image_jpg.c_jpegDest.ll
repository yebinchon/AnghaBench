; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_jpg.c_jpegDest.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_jpg.c_jpegDest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.jpeg_destination_mgr*, %struct.TYPE_7__* }
%struct.jpeg_destination_mgr = type { i32 }
%struct.TYPE_7__ = type { i64 (i32, i32, i32)* }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@JPOOL_PERMANENT = common dso_local global i32 0, align 4
@init_destination = common dso_local global i32 0, align 4
@empty_output_buffer = common dso_local global i32 0, align 4
@term_destination = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @jpegDest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpegDest(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %9, align 8
  %11 = icmp eq %struct.jpeg_destination_mgr* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = ptrtoint %struct.TYPE_9__* %18 to i32
  %20 = load i32, i32* @JPOOL_PERMANENT, align 4
  %21 = call i64 %17(i32 %19, i32 %20, i32 4)
  %22 = inttoptr i64 %21 to %struct.jpeg_destination_mgr*
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store %struct.jpeg_destination_mgr* %22, %struct.jpeg_destination_mgr** %24, align 8
  br label %25

25:                                               ; preds = %12, %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %27, align 8
  %29 = bitcast %struct.jpeg_destination_mgr* %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %7, align 8
  %30 = load i32, i32* @init_destination, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @empty_output_buffer, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @term_destination, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
