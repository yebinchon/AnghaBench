; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_depths.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_depths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i8*** }
%struct.sbitmap_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_data*, %struct.sbitmap_queue*)* @bfq_update_depths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_update_depths(%struct.bfq_data* %0, %struct.sbitmap_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.sbitmap_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.sbitmap_queue* %1, %struct.sbitmap_queue** %4, align 8
  %8 = load i32, i32* @UINT_MAX, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %10 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = lshr i32 %13, 1
  %15 = call i8* @max(i32 %14, i32 1)
  %16 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %17 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %16, i32 0, i32 0
  %18 = load i8***, i8**** %17, align 8
  %19 = getelementptr inbounds i8**, i8*** %18, i64 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %15, i8** %21, align 8
  %22 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %23 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = mul i32 %26, 3
  %28 = lshr i32 %27, 2
  %29 = call i8* @max(i32 %28, i32 1)
  %30 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %31 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %30, i32 0, i32 0
  %32 = load i8***, i8**** %31, align 8
  %33 = getelementptr inbounds i8**, i8*** %32, i64 0
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %29, i8** %35, align 8
  %36 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %37 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = mul i32 %40, 3
  %42 = lshr i32 %41, 4
  %43 = call i8* @max(i32 %42, i32 1)
  %44 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %45 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %44, i32 0, i32 0
  %46 = load i8***, i8**** %45, align 8
  %47 = getelementptr inbounds i8**, i8*** %46, i64 1
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %43, i8** %49, align 8
  %50 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %51 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 1, %53
  %55 = mul i32 %54, 6
  %56 = lshr i32 %55, 4
  %57 = call i8* @max(i32 %56, i32 1)
  %58 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %59 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %58, i32 0, i32 0
  %60 = load i8***, i8**** %59, align 8
  %61 = getelementptr inbounds i8**, i8*** %60, i64 1
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %57, i8** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %89, %2
  %65 = load i32, i32* %5, align 4
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %74 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %73, i32 0, i32 0
  %75 = load i8***, i8**** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8**, i8*** %75, i64 %77
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @min(i32 %72, i8* %83)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %6, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %68

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %64

92:                                               ; preds = %64
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
