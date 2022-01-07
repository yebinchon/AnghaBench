; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_text_le_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_text_le_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i64, i32, i32, i32, i32, i32* }

@TEXT_SCHEMA_V1 = common dso_local global i64 0, align 8
@split_mod = common dso_local global i32 0, align 4
@split_min = common dso_local global i32 0, align 4
@split_max = common dso_local global i32 0, align 4
@extra_mask = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_start*)* @text_le_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @text_le_start(%struct.lev_start* %0) #0 {
  %2 = alloca %struct.lev_start*, align 8
  store %struct.lev_start* %0, %struct.lev_start** %2, align 8
  %3 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %4 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TEXT_SCHEMA_V1, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @split_mod, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %14 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @split_mod, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %20 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @split_mod, align 4
  %23 = srem i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @split_min, align 4
  %27 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %28 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @split_mod, align 4
  %31 = srem i32 %29, %30
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %35 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %38 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %36, %40
  br label %42

42:                                               ; preds = %33, %25, %18, %12
  %43 = phi i1 [ false, %25 ], [ false, %18 ], [ false, %12 ], [ %41, %33 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %42, %1
  %47 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %48 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @split_min, align 4
  %50 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %51 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* @split_max, align 4
  %53 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %54 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* @split_mod, align 4
  %56 = load i32, i32* @split_mod, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %46
  %59 = load i32, i32* @split_min, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* @split_min, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @split_max, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @split_max, align 4
  %68 = load i32, i32* @split_mod, align 4
  %69 = icmp sle i32 %67, %68
  br label %70

70:                                               ; preds = %66, %61, %58, %46
  %71 = phi i1 [ false, %61 ], [ false, %58 ], [ false, %46 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  store i16 0, i16* @extra_mask, align 2
  %74 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %75 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 3
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  %79 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %80 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %87 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = bitcast i32* %89 to i16*
  %91 = load i16, i16* %90, align 2
  store i16 %91, i16* @extra_mask, align 2
  br label %92

92:                                               ; preds = %85, %78, %70
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
