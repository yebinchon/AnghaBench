; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_sentmap.c_num_blocks.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_sentmap.c_num_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.st_quicly_sent_block_t* }
%struct.st_quicly_sent_block_t = type { %struct.st_quicly_sent_block_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @num_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @num_blocks(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.st_quicly_sent_block_t*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %6, align 8
  store %struct.st_quicly_sent_block_t* %7, %struct.st_quicly_sent_block_t** %3, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %3, align 8
  %10 = icmp ne %struct.st_quicly_sent_block_t* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %11
  %15 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %3, align 8
  %16 = getelementptr inbounds %struct.st_quicly_sent_block_t, %struct.st_quicly_sent_block_t* %15, i32 0, i32 0
  %17 = load %struct.st_quicly_sent_block_t*, %struct.st_quicly_sent_block_t** %16, align 8
  store %struct.st_quicly_sent_block_t* %17, %struct.st_quicly_sent_block_t** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load i64, i64* %4, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
