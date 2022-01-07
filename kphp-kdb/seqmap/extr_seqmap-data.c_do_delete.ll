; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_do_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_do_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }
%struct.lev_seq_delete = type { i32 }

@LEV_SEQ_DELETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.item*, align 8
  %9 = alloca %struct.lev_seq_delete*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.item* @preload_key(i32 %10, i32* %11, i32 %12)
  store %struct.item* %13, %struct.item** %8, align 8
  %14 = load %struct.item*, %struct.item** %8, align 8
  %15 = getelementptr inbounds %struct.item, %struct.item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -2
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 255
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* @LEV_SEQ_DELETE, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = add i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.lev_seq_delete* @alloc_log_event(i64 %32, i32 %37, i32 0)
  store %struct.lev_seq_delete* %38, %struct.lev_seq_delete** %9, align 8
  %39 = load %struct.lev_seq_delete*, %struct.lev_seq_delete** %9, align 8
  %40 = getelementptr inbounds %struct.lev_seq_delete, %struct.lev_seq_delete* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 4, %43
  %45 = call i32 @memcpy(i32 %41, i32* %42, i32 %44)
  %46 = load %struct.lev_seq_delete*, %struct.lev_seq_delete** %9, align 8
  %47 = call i32 @delete_lev(%struct.lev_seq_delete* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %25, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.item* @preload_key(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.lev_seq_delete* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @delete_lev(%struct.lev_seq_delete*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
