; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_frame.c_test_ack_encode.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_frame.c_test_ack_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ack_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ack_encode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = call i32 @quicly_ranges_init(i32* %1)
  %7 = call i32 @quicly_ranges_add(i32* %1, i32 18, i32 20)
  %8 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %10 = getelementptr inbounds i32, i32* %9, i64 1024
  %11 = call i32* @quicly_encode_ack_frame(i32* %8, i32* %10, i32* %1, i32 63)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %14 = ptrtoint i32* %12 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = icmp eq i64 %17, 5
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19)
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @quicly_decode_ack_frame(i32** %4, i32* %23, %struct.TYPE_3__* %5, i32 0)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = icmp eq i32* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 63
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 19
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53)
  %55 = call i32 @quicly_ranges_add(i32* %1, i32 16, i32 17)
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %58 = getelementptr inbounds i32, i32* %57, i64 1024
  %59 = call i32* @quicly_encode_ack_frame(i32* %56, i32* %58, i32* %1, i32 63)
  store i32* %59, i32** %3, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = icmp eq i64 %65, 7
  %67 = zext i1 %66 to i32
  %68 = call i32 @ok(i32 %67)
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32* %70, i32** %4, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = call i64 @quicly_decode_ack_frame(i32** %4, i32* %71, %struct.TYPE_3__* %5, i32 0)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @ok(i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = icmp eq i32* %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ok(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 63
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 19
  %94 = zext i1 %93 to i32
  %95 = call i32 @ok(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  %108 = zext i1 %107 to i32
  %109 = call i32 @ok(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = call i32 @ok(i32 %115)
  %117 = call i32 @quicly_ranges_clear(i32* %1)
  ret void
}

declare dso_local i32 @quicly_ranges_init(i32*) #1

declare dso_local i32 @quicly_ranges_add(i32*, i32, i32) #1

declare dso_local i32* @quicly_encode_ack_frame(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @quicly_decode_ack_frame(i32**, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @quicly_ranges_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
