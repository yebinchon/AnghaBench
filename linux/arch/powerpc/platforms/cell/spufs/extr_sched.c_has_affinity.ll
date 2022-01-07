; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_has_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_has_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.spu_gang*, i32 }
%struct.spu_gang = type { i32, i32*, i32 }

@AFF_MERGED = common dso_local global i32 0, align 4
@AFF_OFFSETS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*)* @has_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_affinity(%struct.spu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca %struct.spu_gang*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  %5 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %6 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %5, i32 0, i32 0
  %7 = load %struct.spu_gang*, %struct.spu_gang** %6, align 8
  store %struct.spu_gang* %7, %struct.spu_gang** %4, align 8
  %8 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %9 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %8, i32 0, i32 1
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %15 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %14, i32 0, i32 0
  %16 = load %struct.spu_gang*, %struct.spu_gang** %15, align 8
  %17 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %16, i32 0, i32 2
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %22 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %21, i32 0, i32 0
  %23 = load %struct.spu_gang*, %struct.spu_gang** %22, align 8
  %24 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.spu_gang*, %struct.spu_gang** %4, align 8
  %27 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %25
  %31 = load %struct.spu_gang*, %struct.spu_gang** %4, align 8
  %32 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AFF_MERGED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load %struct.spu_gang*, %struct.spu_gang** %4, align 8
  %39 = call i32 @aff_merge_remaining_ctxs(%struct.spu_gang* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.spu_gang*, %struct.spu_gang** %4, align 8
  %42 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AFF_OFFSETS_SET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load %struct.spu_gang*, %struct.spu_gang** %4, align 8
  %49 = call i32 @aff_set_offsets(%struct.spu_gang* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.spu_gang*, %struct.spu_gang** %4, align 8
  %52 = call i32 @aff_set_ref_point_location(%struct.spu_gang* %51)
  br label %53

53:                                               ; preds = %50, %25
  %54 = load %struct.spu_gang*, %struct.spu_gang** %4, align 8
  %55 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @aff_merge_remaining_ctxs(%struct.spu_gang*) #1

declare dso_local i32 @aff_set_offsets(%struct.spu_gang*) #1

declare dso_local i32 @aff_set_ref_point_location(%struct.spu_gang*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
