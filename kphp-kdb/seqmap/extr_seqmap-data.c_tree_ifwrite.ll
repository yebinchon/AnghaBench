; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_ifwrite.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_ifwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32, i32 }

@Rt = common dso_local global i64 0, align 8
@Rmax = common dso_local global i64 0, align 8
@RR = common dso_local global i64* null, align 8
@Rpos = common dso_local global i64 0, align 8
@Bsize = common dso_local global i32 0, align 4
@B = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_ifwrite(%struct.item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %3, align 8
  %4 = load i64, i64* @Rt, align 8
  %5 = load i64, i64* @Rmax, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %86

7:                                                ; preds = %1
  %8 = load i64*, i64** @RR, align 8
  %9 = load i64, i64* @Rt, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @Rpos, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %86

14:                                               ; preds = %7
  %15 = load i64, i64* @Rt, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* @Rt, align 8
  %17 = load i64, i64* @Rpos, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @Rpos, align 8
  %19 = load %struct.item*, %struct.item** %3, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 2, %21
  %23 = load %struct.item*, %struct.item** %3, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load i32, i32* @Bsize, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %84

29:                                               ; preds = %14
  %30 = load %struct.item*, %struct.item** %3, align 8
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @B, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** @B, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load %struct.item*, %struct.item** %3, align 8
  %38 = getelementptr inbounds %struct.item, %struct.item* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.item*, %struct.item** %3, align 8
  %41 = getelementptr inbounds %struct.item, %struct.item* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 4, %42
  %44 = call i32 @memcpy(i32* %36, i32 %39, i32 %43)
  %45 = load %struct.item*, %struct.item** %3, align 8
  %46 = getelementptr inbounds %struct.item, %struct.item* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 1, %47
  %49 = load i32*, i32** @B, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** @B, align 8
  %52 = load %struct.item*, %struct.item** %3, align 8
  %53 = getelementptr inbounds %struct.item, %struct.item* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @B, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** @B, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %struct.item*, %struct.item** %3, align 8
  %60 = getelementptr inbounds %struct.item, %struct.item* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.item*, %struct.item** %3, align 8
  %63 = getelementptr inbounds %struct.item, %struct.item* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 4, %64
  %66 = call i32 @memcpy(i32* %58, i32 %61, i32 %65)
  %67 = load %struct.item*, %struct.item** %3, align 8
  %68 = getelementptr inbounds %struct.item, %struct.item* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 1, %69
  %71 = load i32*, i32** @B, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** @B, align 8
  %74 = load %struct.item*, %struct.item** %3, align 8
  %75 = getelementptr inbounds %struct.item, %struct.item* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 2, %76
  %78 = load %struct.item*, %struct.item** %3, align 8
  %79 = getelementptr inbounds %struct.item, %struct.item* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = load i32, i32* @Bsize, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* @Bsize, align 4
  store i32 0, i32* %2, align 4
  br label %89

84:                                               ; preds = %14
  %85 = load i64, i64* @Rt, align 8
  store i64 %85, i64* @Rmax, align 8
  store i32 -1, i32* %2, align 4
  br label %89

86:                                               ; preds = %7, %1
  %87 = load i64, i64* @Rpos, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* @Rpos, align 8
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %84, %29
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
