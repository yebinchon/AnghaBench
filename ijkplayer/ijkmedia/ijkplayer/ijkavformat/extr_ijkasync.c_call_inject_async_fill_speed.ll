; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkasync.c_call_inject_async_fill_speed.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkasync.c_call_inject_async_fill_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32)* @call_inject_async_fill_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_inject_async_fill_speed(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sdiv i32 %15, 1000
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 20, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 20, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @av_application_on_async_read_speed(i64 %38, %struct.TYPE_8__* %11)
  br label %40

40:                                               ; preds = %27, %24, %21, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_application_on_async_read_speed(i64, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
