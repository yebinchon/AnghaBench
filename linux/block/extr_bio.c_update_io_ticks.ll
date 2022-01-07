; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_update_io_ticks.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_update_io_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.hd_struct }

@io_ticks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_io_ticks(%struct.hd_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.hd_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hd_struct* %0, %struct.hd_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %38, %2
  %7 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %8 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @READ_ONCE(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %6
  %18 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %19 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @cmpxchg(i32* %19, i64 %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %30 = load i32, i32* @io_ticks, align 4
  %31 = call i32 @__part_stat_add(%struct.hd_struct* %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %28, %17
  br label %33

33:                                               ; preds = %32, %6
  %34 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %35 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %40 = call %struct.TYPE_2__* @part_to_disk(%struct.hd_struct* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.hd_struct* %41, %struct.hd_struct** %3, align 8
  br label %6

42:                                               ; preds = %33
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @__part_stat_add(%struct.hd_struct*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @part_to_disk(%struct.hd_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
