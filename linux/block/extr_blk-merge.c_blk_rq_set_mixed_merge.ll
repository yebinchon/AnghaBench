; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_rq_set_mixed_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_rq_set_mixed_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, %struct.bio* }
%struct.bio = type { i32, %struct.bio* }

@REQ_FAILFAST_MASK = common dso_local global i32 0, align 4
@RQF_MIXED_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_rq_set_mixed_merge(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RQF_MIXED_MERGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.request*, %struct.request** %2, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 2
  %20 = load %struct.bio*, %struct.bio** %19, align 8
  store %struct.bio* %20, %struct.bio** %4, align 8
  br label %21

21:                                               ; preds = %48, %17
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = icmp ne %struct.bio* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %36, %37
  br label %39

39:                                               ; preds = %31, %24
  %40 = phi i1 [ false, %24 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON_ONCE(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  %51 = load %struct.bio*, %struct.bio** %50, align 8
  store %struct.bio* %51, %struct.bio** %4, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load i32, i32* @RQF_MIXED_MERGE, align 4
  %54 = load %struct.request*, %struct.request** %2, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %16
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
