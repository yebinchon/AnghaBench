; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c___bio_try_merge_page.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c___bio_try_merge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_2__, %struct.bio_vec* }
%struct.TYPE_2__ = type { i32 }
%struct.bio_vec = type { i32 }
%struct.page = type { i32 }

@BIO_CLONED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bio_try_merge_page(%struct.bio* %0, %struct.page* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bio_vec*, align 8
  store %struct.bio* %0, %struct.bio** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.bio*, %struct.bio** %7, align 8
  %14 = load i32, i32* @BIO_CLONED, align 4
  %15 = call i32 @bio_flagged(%struct.bio* %13, i32 %14)
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

19:                                               ; preds = %5
  %20 = load %struct.bio*, %struct.bio** %7, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  %27 = load %struct.bio_vec*, %struct.bio_vec** %26, align 8
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %27, i64 %32
  store %struct.bio_vec* %33, %struct.bio_vec** %12, align 8
  %34 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @page_is_mergeable(%struct.bio_vec* %34, %struct.page* %35, i32 %36, i32 %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %24
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %44 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.bio*, %struct.bio** %7, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, %47
  store i32 %52, i32* %50, align 4
  store i32 1, i32* %6, align 4
  br label %55

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %19
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %41, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i64 @page_is_mergeable(%struct.bio_vec*, %struct.page*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
