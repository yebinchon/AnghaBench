; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_total_memory_used.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_total_memory_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treespace_header = type { i64 }

@dyn_cur = common dso_local global i64 0, align 8
@dyn_first = common dso_local global i64 0, align 8
@dyn_last = common dso_local global i64 0, align 8
@dyn_top = common dso_local global i64 0, align 8
@AdSpace = common dso_local global i64 0, align 8
@WordSpace = common dso_local global i64 0, align 8
@tot_userlists_size = common dso_local global i64 0, align 8
@allocated_metafile_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @total_memory_used() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @dyn_cur, align 8
  %3 = load i64, i64* @dyn_first, align 8
  %4 = sub nsw i64 %2, %3
  %5 = load i64, i64* @dyn_last, align 8
  %6 = add nsw i64 %4, %5
  %7 = load i64, i64* @dyn_top, align 8
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* @AdSpace, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i64, i64* @AdSpace, align 8
  %13 = inttoptr i64 %12 to %struct.treespace_header*
  %14 = getelementptr inbounds %struct.treespace_header, %struct.treespace_header* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  br label %17

16:                                               ; preds = %0
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i64 [ %15, %11 ], [ 0, %16 ]
  %19 = mul nsw i64 %18, 4
  %20 = load i64, i64* %1, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* @WordSpace, align 8
  %23 = inttoptr i64 %22 to %struct.treespace_header*
  %24 = getelementptr inbounds %struct.treespace_header, %struct.treespace_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = mul nsw i64 %25, 4
  %27 = load i64, i64* %1, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* @tot_userlists_size, align 8
  %30 = load i64, i64* %1, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* @allocated_metafile_bytes, align 8
  %33 = load i64, i64* %1, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
