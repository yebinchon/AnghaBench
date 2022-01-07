; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_store_inf.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_store_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_seq_store_inf = type { i32, i32, i64 }

@LEV_SEQ_STORE_INF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store_inf(%struct.lev_seq_store_inf* %0) #0 {
  %2 = alloca %struct.lev_seq_store_inf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lev_seq_store_inf* %0, %struct.lev_seq_store_inf** %2, align 8
  %5 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %2, align 8
  %6 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LEV_SEQ_STORE_INF, align 4
  %9 = sub nsw i32 %7, %8
  %10 = and i32 %9, 255
  store i32 %10, i32* %3, align 4
  %11 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %2, align 8
  %12 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LEV_SEQ_STORE_INF, align 4
  %15 = sub nsw i32 %13, %14
  %16 = and i32 %15, 768
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = add i64 16, %20
  %22 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %2, align 8
  %23 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %21, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %2, align 8
  %32 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %2, align 8
  %35 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lev_seq_store_inf*, %struct.lev_seq_store_inf** %2, align 8
  %38 = getelementptr inbounds %struct.lev_seq_store_inf, %struct.lev_seq_store_inf* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @store(i32 %28, %struct.lev_seq_store_inf* %29, i32 %30, i64 %33, i32 %36, i64 %42, i32 0, i32 %43)
  ret i32 %44
}

declare dso_local i32 @store(i32, %struct.lev_seq_store_inf*, i32, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
