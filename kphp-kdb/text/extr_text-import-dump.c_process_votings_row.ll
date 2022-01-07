; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_votings_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_votings_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@I = common dso_local global i32* null, align 8
@vt_owner_id = common dso_local global i64 0, align 8
@vt_place_id = common dso_local global i64 0, align 8
@vt_id = common dso_local global i64 0, align 8
@vt_place_type = common dso_local global i64 0, align 8
@VN = common dso_local global i64 0, align 8
@MAX_VOTINGS = common dso_local global i64 0, align 8
@VD = common dso_local global %struct.TYPE_2__* null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_votings_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @I, align 8
  %5 = load i64, i64* @vt_owner_id, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32*, i32** @I, align 8
  %9 = load i64, i64* @vt_place_id, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  %12 = load i32*, i32** @I, align 8
  %13 = load i64, i64* @vt_id, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** @I, align 8
  %17 = load i64, i64* @vt_place_type, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %30, label %21

21:                                               ; preds = %0
  %22 = load i32, i32* %1, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21, %0
  br label %56

31:                                               ; preds = %27
  %32 = load i64, i64* @VN, align 8
  %33 = load i64, i64* @MAX_VOTINGS, align 8
  %34 = icmp ult i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VD, align 8
  %39 = load i64, i64* @VN, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %2, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VD, align 8
  %44 = load i64, i64* @VN, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VD, align 8
  %49 = load i64, i64* @VN, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = load i64, i64* @VN, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* @VN, align 8
  %54 = load i32, i32* @adj_rec, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @adj_rec, align 4
  br label %56

56:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
