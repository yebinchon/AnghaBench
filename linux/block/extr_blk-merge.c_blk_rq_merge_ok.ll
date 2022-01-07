; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_rq_merge_ok.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_rq_merge_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i64, i64, i32, i32 }
%struct.bio = type { i64, i64 }

@REQ_OP_WRITE_SAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_merge_ok(%struct.request* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i32 @rq_mergeable(%struct.request* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = call i32 @bio_mergeable(%struct.bio* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %77

14:                                               ; preds = %9
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i64 @req_op(%struct.request* %15)
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = call i64 @bio_op(%struct.bio* %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %77

21:                                               ; preds = %14
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = call i64 @bio_data_dir(%struct.bio* %22)
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = call i64 @rq_data_dir(%struct.request* %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %77

28:                                               ; preds = %21
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %77

37:                                               ; preds = %28
  %38 = load %struct.request*, %struct.request** %4, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = call i32 @blk_integrity_merge_bio(i32 %40, %struct.request* %41, %struct.bio* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %77

46:                                               ; preds = %37
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = call i64 @req_op(%struct.request* %47)
  %49 = load i64, i64* @REQ_OP_WRITE_SAME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.request*, %struct.request** %4, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bio*, %struct.bio** %5, align 8
  %56 = call i32 @blk_write_same_mergeable(i32 %54, %struct.bio* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %77

59:                                               ; preds = %51, %46
  %60 = load %struct.request*, %struct.request** %4, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %77

68:                                               ; preds = %59
  %69 = load %struct.request*, %struct.request** %4, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = call i64 @bio_prio(%struct.bio* %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75, %67, %58, %45, %36, %27, %20, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @rq_mergeable(%struct.request*) #1

declare dso_local i32 @bio_mergeable(%struct.bio*) #1

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_integrity_merge_bio(i32, %struct.request*, %struct.bio*) #1

declare dso_local i32 @blk_write_same_mergeable(i32, %struct.bio*) #1

declare dso_local i64 @bio_prio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
