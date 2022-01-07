; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_sentmap.c_quicly_sentmap__new_block.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_sentmap.c_quicly_sentmap__new_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_sent_block_t = type { %struct.st_quicly_sent_block_t*, i64, i64 }
%struct.TYPE_3__ = type { %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.st_quicly_sent_block_t* @quicly_sentmap__new_block(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.st_quicly_sent_block_t*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.st_quicly_sent_block_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = call %struct.st_quicly_sent_block_t* @malloc(i32 24)
  store %struct.st_quicly_sent_block_t* %5, %struct.st_quicly_sent_block_t** %4, align 8
  %6 = icmp eq %struct.st_quicly_sent_block_t* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.st_quicly_sent_block_t* null, %struct.st_quicly_sent_block_t** %2, align 8
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %4, align 8
  %10 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %9, i32 0, i32 0
  store %struct.st_quicly_sent_block_t* null, %struct.st_quicly_sent_block_t** %10, align 8
  %11 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %4, align 8
  %12 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %4, align 8
  %14 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %16, align 8
  %18 = icmp ne %struct.st_quicly_sent_block_t* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %8
  %20 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %22, align 8
  %24 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %23, i32 0, i32 0
  store %struct.st_quicly_sent_block_t* %20, %struct.st_quicly_sent_block_t** %24, align 8
  %25 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.st_quicly_sent_block_t* %25, %struct.st_quicly_sent_block_t** %27, align 8
  br label %34

28:                                               ; preds = %8
  %29 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.st_quicly_sent_block_t* %29, %struct.st_quicly_sent_block_t** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.st_quicly_sent_block_t* %29, %struct.st_quicly_sent_block_t** %33, align 8
  br label %34

34:                                               ; preds = %28, %19
  %35 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %4, align 8
  store %struct.st_quicly_sent_block_t* %35, %struct.st_quicly_sent_block_t** %2, align 8
  br label %36

36:                                               ; preds = %34, %7
  %37 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %2, align 8
  ret %struct.st_quicly_sent_block_t* %37
}

declare dso_local %struct.st_quicly_sent_block_t* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
