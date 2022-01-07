; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_end_wr_async_queues.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_end_wr_async_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_group = type { i64, i64** }

@IOPRIO_BE_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfq_end_wr_async_queues(%struct.bfq_data* %0, %struct.bfq_group* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_group* %1, %struct.bfq_group** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %42, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IOPRIO_BE_NR, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load %struct.bfq_group*, %struct.bfq_group** %4, align 8
  %17 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %16, i32 0, i32 1
  %18 = load i64**, i64*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64*, i64** %18, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %15
  %29 = load %struct.bfq_group*, %struct.bfq_group** %4, align 8
  %30 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %29, i32 0, i32 1
  %31 = load i64**, i64*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bfq_bfqq_end_wr(i64 %39)
  br label %41

41:                                               ; preds = %28, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %11

45:                                               ; preds = %11
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %7

49:                                               ; preds = %7
  %50 = load %struct.bfq_group*, %struct.bfq_group** %4, align 8
  %51 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.bfq_group*, %struct.bfq_group** %4, align 8
  %56 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @bfq_bfqq_end_wr(i64 %57)
  br label %59

59:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @bfq_bfqq_end_wr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
