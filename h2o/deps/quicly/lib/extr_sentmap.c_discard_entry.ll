; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_sentmap.c_discard_entry.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_sentmap.c_discard_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, %struct.st_quicly_sent_block_t** }
%struct.TYPE_4__ = type { i32* }
%struct.st_quicly_sent_block_t = type { i64, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @discard_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_entry(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.st_quicly_sent_block_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.st_quicly_sent_block_t**, %struct.st_quicly_sent_block_t*** %19, align 8
  %21 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %20, align 8
  store %struct.st_quicly_sent_block_t* %21, %struct.st_quicly_sent_block_t** %5, align 8
  %22 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %5, align 8
  %23 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.st_quicly_sent_block_t**, %struct.st_quicly_sent_block_t*** %30, align 8
  %32 = call %struct.st_quicly_sent_block_t** @free_block(i32* %28, %struct.st_quicly_sent_block_t** %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store %struct.st_quicly_sent_block_t** %32, %struct.st_quicly_sent_block_t*** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.st_quicly_sent_block_t**, %struct.st_quicly_sent_block_t*** %36, align 8
  %38 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %37, align 8
  store %struct.st_quicly_sent_block_t* %38, %struct.st_quicly_sent_block_t** %5, align 8
  %39 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %5, align 8
  %40 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 -1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %5, align 8
  %46 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.st_quicly_sent_block_t** @free_block(i32*, %struct.st_quicly_sent_block_t**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
