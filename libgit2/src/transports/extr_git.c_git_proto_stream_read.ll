; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_git.c_git_proto_stream_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_git.c_git_proto_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64*)* @git_proto_stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_proto_stream_read(i32* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %11, align 8
  %15 = load i64*, i64** %9, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %22 = call i32 @send_command(%struct.TYPE_7__* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %41

26:                                               ; preds = %20, %4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @gitno_buffer_setup_fromstream(i32 %29, %struct.TYPE_6__* %12, i8* %30, i64 %31)
  %33 = call i32 @gitno_recv(%struct.TYPE_6__* %12)
  store i32 %33, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %35, %24
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @send_command(%struct.TYPE_7__*) #1

declare dso_local i32 @gitno_buffer_setup_fromstream(i32, %struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @gitno_recv(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
