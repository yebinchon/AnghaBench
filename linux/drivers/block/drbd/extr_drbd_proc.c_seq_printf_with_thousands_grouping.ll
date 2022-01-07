; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_proc.c_seq_printf_with_thousands_grouping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_proc.c_seq_printf_with_thousands_grouping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%ld,\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%03ld,%03ld\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%ld,%03ld\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i64)* @seq_printf_with_thousands_grouping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_printf_with_thousands_grouping(%struct.seq_file* %0, i64 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 1000000
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = sdiv i64 %12, 1000000
  %14 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = srem i64 %15, 1000000
  store i64 %16, i64* %4, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = sdiv i64 %18, 1000
  %20 = load i64, i64* %4, align 8
  %21 = srem i64 %20, 1000
  %22 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %21)
  br label %41

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = icmp sge i64 %24, 1000
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = sdiv i64 %31, 1000
  %33 = load i64, i64* %4, align 8
  %34 = srem i64 %33, 1000
  %35 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %32, i64 %34)
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
