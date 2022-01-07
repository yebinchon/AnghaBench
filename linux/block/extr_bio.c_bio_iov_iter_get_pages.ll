; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_iov_iter_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_iov_iter_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64 }
%struct.iov_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BIO_NO_PAGE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_iov_iter_get_pages(%struct.bio* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %8 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %9 = call i32 @iov_iter_is_bvec(%struct.iov_iter* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @WARN_ON_ONCE(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %25 = call i32 @__bio_iov_bvec_add_pages(%struct.bio* %23, %struct.iov_iter* %24)
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %29 = call i32 @__bio_iov_iter_get_pages(%struct.bio* %27, %struct.iov_iter* %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %36 = call i64 @iov_iter_count(%struct.iov_iter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = call i32 @bio_full(%struct.bio* %39, i32 0)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %38, %34, %31
  %44 = phi i1 [ false, %34 ], [ false, %31 ], [ %42, %38 ]
  br i1 %44, label %19, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = load i32, i32* @BIO_NO_PAGE_REF, align 4
  %51 = call i32 @bio_set_flag(%struct.bio* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @iov_iter_is_bvec(%struct.iov_iter*) #1

declare dso_local i64 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @__bio_iov_bvec_add_pages(%struct.bio*, %struct.iov_iter*) #1

declare dso_local i32 @__bio_iov_iter_get_pages(%struct.bio*, %struct.iov_iter*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @bio_full(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
