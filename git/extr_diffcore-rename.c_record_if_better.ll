; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_record_if_better.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_record_if_better.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_score = type { i32 }

@NUM_CANDIDATE_PER_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_score*, %struct.diff_score*)* @record_if_better to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_if_better(%struct.diff_score* %0, %struct.diff_score* %1) #0 {
  %3 = alloca %struct.diff_score*, align 8
  %4 = alloca %struct.diff_score*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.diff_score* %0, %struct.diff_score** %3, align 8
  store %struct.diff_score* %1, %struct.diff_score** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NUM_CANDIDATE_PER_DST, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.diff_score*, %struct.diff_score** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %12, i64 %14
  %16 = load %struct.diff_score*, %struct.diff_score** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %16, i64 %18
  %20 = call i64 @score_compare(%struct.diff_score* %15, %struct.diff_score* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.diff_score*, %struct.diff_score** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %29, i64 %31
  %33 = load %struct.diff_score*, %struct.diff_score** %4, align 8
  %34 = call i64 @score_compare(%struct.diff_score* %32, %struct.diff_score* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.diff_score*, %struct.diff_score** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.diff_score, %struct.diff_score* %37, i64 %39
  %41 = load %struct.diff_score*, %struct.diff_score** %4, align 8
  %42 = bitcast %struct.diff_score* %40 to i8*
  %43 = bitcast %struct.diff_score* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %36, %28
  ret void
}

declare dso_local i64 @score_compare(%struct.diff_score*, %struct.diff_score*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
