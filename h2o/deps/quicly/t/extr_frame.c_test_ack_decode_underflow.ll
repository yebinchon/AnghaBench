; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_frame.c_test_ack_decode_underflow.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_frame.c_test_ack_decode_underflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i64 }

@__const.test_ack_decode_underflow.pat = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 1], align 16
@__const.test_ack_decode_underflow.pat.1 = private unnamed_addr constant [6 x i32] [i32 2, i32 0, i32 1, i32 0, i32 0, i32 0], align 16
@__const.test_ack_decode_underflow.pat.2 = private unnamed_addr constant [6 x i32] [i32 2, i32 0, i32 1, i32 0, i32 0, i32 1], align 16
@__const.test_ack_decode_underflow.pat.3 = private unnamed_addr constant [6 x i32] [i32 2, i32 0, i32 1, i32 0, i32 3, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ack_decode_underflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ack_decode_underflow() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32* %13, i32** %3, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %15 = getelementptr inbounds i32, i32* %14, i64 16
  %16 = call i64 @quicly_decode_ack_frame(i32** %3, i32* %15, %struct.TYPE_3__* %1, i32 0)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %22 = getelementptr inbounds i32, i32* %21, i64 16
  %23 = icmp eq i32* %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46)
  %48 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %48, i8* align 16 bitcast ([4 x i32]* @__const.test_ack_decode_underflow.pat to i8*), i64 16, i1 false)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32* %49, i32** %5, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = call i64 @quicly_decode_ack_frame(i32** %5, i32* %51, %struct.TYPE_3__* %1, i32 0)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54)
  %56 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %56, i8* align 16 bitcast ([6 x i32]* @__const.test_ack_decode_underflow.pat.1 to i8*), i64 24, i1 false)
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32* %57, i32** %7, align 8
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 24
  %60 = call i64 @quicly_decode_ack_frame(i32** %7, i32* %59, %struct.TYPE_3__* %1, i32 0)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @ok(i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %66 = getelementptr inbounds i32, i32* %65, i64 24
  %67 = icmp eq i32* %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @ok(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ok(i32 %97)
  %99 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %99, i8* align 16 bitcast ([6 x i32]* @__const.test_ack_decode_underflow.pat.2 to i8*), i64 24, i1 false)
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32* %100, i32** %9, align 8
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %102 = getelementptr inbounds i32, i32* %101, i64 24
  %103 = call i64 @quicly_decode_ack_frame(i32** %9, i32* %102, %struct.TYPE_3__* %1, i32 0)
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %107, i8* align 16 bitcast ([6 x i32]* @__const.test_ack_decode_underflow.pat.3 to i8*), i64 24, i1 false)
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32* %108, i32** %11, align 8
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %110 = getelementptr inbounds i32, i32* %109, i64 24
  %111 = call i64 @quicly_decode_ack_frame(i32** %11, i32* %110, %struct.TYPE_3__* %1, i32 0)
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @ok(i32 %113)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ok(i32) #2

declare dso_local i64 @quicly_decode_ack_frame(i32**, i32*, %struct.TYPE_3__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
