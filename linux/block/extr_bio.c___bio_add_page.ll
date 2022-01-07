; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c___bio_add_page.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c___bio_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_2__, %struct.bio_vec* }
%struct.TYPE_2__ = type { i32 }
%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@BIO_CLONED = common dso_local global i32 0, align 4
@BIO_WORKINGSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bio_add_page(%struct.bio* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio_vec*, align 8
  store %struct.bio* %0, %struct.bio** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  %12 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i64 %15
  store %struct.bio_vec* %16, %struct.bio_vec** %9, align 8
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = load i32, i32* @BIO_CLONED, align 4
  %19 = call i32 @bio_flagged(%struct.bio* %17, i32 %18)
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bio_full(%struct.bio* %21, i32 %22)
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %27 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %26, i32 0, i32 2
  store %struct.page* %25, %struct.page** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %30 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %33 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.bio*, %struct.bio** %5, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, %34
  store i32 %39, i32* %37, align 8
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = load i32, i32* @BIO_WORKINGSET, align 4
  %46 = call i32 @bio_flagged(%struct.bio* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %4
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @PageWorkingset(%struct.page* %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = load i32, i32* @BIO_WORKINGSET, align 4
  %56 = call i32 @bio_set_flag(%struct.bio* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48, %4
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_full(%struct.bio*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageWorkingset(%struct.page*) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
