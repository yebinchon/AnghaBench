; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_start_new_slice_with_credit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_start_new_slice_with_credit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64*, i64*, i32, %struct.TYPE_2__*, i64*, i64* }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"[%c] new slice with credit start=%lu end=%lu jiffies=%lu\00", align 1
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*, i32, i64)* @throtl_start_new_slice_with_credit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_start_new_slice_with_credit(%struct.throtl_grp* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %8 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %7, i32 0, i32 5
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64 0, i64* %12, align 8
  %13 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %14 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %13, i32 0, i32 4
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %21 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @time_after_eq(i64 %19, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %32 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %3
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %40 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %38, %43
  %45 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %46 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %44, i64* %50, align 8
  %51 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %52 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %51, i32 0, i32 2
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @READ, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 82, i32 87
  %58 = trunc i32 %57 to i8
  %59 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %60 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %67 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @jiffies, align 8
  %74 = call i32 @throtl_log(i32* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8 signext %58, i64 %65, i64 %72, i64 %73)
  ret void
}

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @throtl_log(i32*, i8*, i8 signext, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
