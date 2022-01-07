; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_find_renames.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_find_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_rename_dst = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.diff_score = type { i64, i32, i64 }

@NUM_CANDIDATE_PER_DST = common dso_local global i32 0, align 4
@rename_dst = common dso_local global %struct.diff_rename_dst* null, align 8
@rename_src = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_score*, i32, i32, i32)* @find_renames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_renames(%struct.diff_score* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.diff_score*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.diff_rename_dst*, align 8
  store %struct.diff_score* %0, %struct.diff_score** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %92, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NUM_CANDIDATE_PER_DST, align 4
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %12
  %19 = load %struct.diff_score*, %struct.diff_score** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %19, i64 %21
  %23 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = load %struct.diff_score*, %struct.diff_score** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %27, i64 %29
  %31 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %18
  br label %95

36:                                               ; preds = %26
  %37 = load %struct.diff_rename_dst*, %struct.diff_rename_dst** @rename_dst, align 8
  %38 = load %struct.diff_score*, %struct.diff_score** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %38, i64 %40
  %42 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.diff_rename_dst, %struct.diff_rename_dst* %37, i64 %43
  store %struct.diff_rename_dst* %44, %struct.diff_rename_dst** %11, align 8
  %45 = load %struct.diff_rename_dst*, %struct.diff_rename_dst** %11, align 8
  %46 = getelementptr inbounds %struct.diff_rename_dst, %struct.diff_rename_dst* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %92

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rename_src, align 8
  %55 = load %struct.diff_score*, %struct.diff_score** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %55, i64 %57
  %59 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %92

70:                                               ; preds = %53, %50
  %71 = load %struct.diff_score*, %struct.diff_score** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %71, i64 %73
  %75 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.diff_score*, %struct.diff_score** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %77, i64 %79
  %81 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.diff_score*, %struct.diff_score** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %83, i64 %85
  %87 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @record_rename_pair(i64 %76, i64 %82, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %70, %69, %49
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %12

95:                                               ; preds = %35, %12
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @record_rename_pair(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
