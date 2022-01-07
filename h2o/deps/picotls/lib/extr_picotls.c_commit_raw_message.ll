; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_commit_raw_message.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_commit_raw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_ptls_raw_message_emitter_t = type { i64, i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64*, i64 }
%struct.TYPE_6__ = type { i64 }

@PTLS_HANDSHAKE_TYPE_CLIENT_HELLO = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @commit_raw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_raw_message(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_ptls_raw_message_emitter_t*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = bitcast i8* %6 to %struct.st_ptls_raw_message_emitter_t*
  store %struct.st_ptls_raw_message_emitter_t* %7, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %8 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %18 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PTLS_HANDSHAKE_TYPE_CLIENT_HELLO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %30, %16, %1
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %61, %31
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %35, 5
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %39 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %45 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %51 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %57 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %55, i64* %60, align 8
  br label %61

61:                                               ; preds = %37
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %34

64:                                               ; preds = %34
  %65 = load i64, i64* @SIZE_MAX, align 8
  %66 = load %struct.st_ptls_raw_message_emitter_t*, %struct.st_ptls_raw_message_emitter_t** %3, align 8
  %67 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
