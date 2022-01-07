; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c___bio_clone_fast.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c___bio_clone_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@BIO_CLONED = common dso_local global i32 0, align 4
@BIO_THROTTLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bio_clone_fast(%struct.bio* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %3, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = call i64 @BVEC_POOL_IDX(%struct.bio* %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bio*, %struct.bio** %3, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bio*, %struct.bio** %3, align 8
  %28 = load i32, i32* @BIO_CLONED, align 4
  %29 = call i32 @bio_set_flag(%struct.bio* %27, i32 %28)
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = load i32, i32* @BIO_THROTTLED, align 4
  %32 = call i64 @bio_flagged(%struct.bio* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %13
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  %36 = load i32, i32* @BIO_THROTTLED, align 4
  %37 = call i32 @bio_set_flag(%struct.bio* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %13
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bio*, %struct.bio** %3, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bio*, %struct.bio** %3, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bio*, %struct.bio** %3, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bio*, %struct.bio** %3, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bio*, %struct.bio** %3, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bio*, %struct.bio** %3, align 8
  %65 = load %struct.bio*, %struct.bio** %4, align 8
  %66 = call i32 @bio_clone_blkg_association(%struct.bio* %64, %struct.bio* %65)
  %67 = load %struct.bio*, %struct.bio** %3, align 8
  %68 = call i32 @blkcg_bio_issue_init(%struct.bio* %67)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @BVEC_POOL_IDX(%struct.bio*) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

declare dso_local i64 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_clone_blkg_association(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @blkcg_bio_issue_init(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
