; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-order.c_diffcore_order.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-order.c_diffcore_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, i32* }
%struct.obj_order = type { i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@pair_pathtwo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diffcore_order(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.diff_queue_struct*, align 8
  %4 = alloca %struct.obj_order*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %3, align 8
  %6 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %7 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %72

11:                                               ; preds = %1
  %12 = load %struct.obj_order*, %struct.obj_order** %4, align 8
  %13 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %14 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ALLOC_ARRAY(%struct.obj_order* %12, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %36, %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %20 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %25 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.obj_order*, %struct.obj_order** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %31, i64 %33
  %35 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* @pair_pathtwo, align 4
  %42 = load %struct.obj_order*, %struct.obj_order** %4, align 8
  %43 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %44 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @order_objects(i8* %40, i32 %41, %struct.obj_order* %42, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %66, %39
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %50 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.obj_order*, %struct.obj_order** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %54, i64 %56
  %58 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %61 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %47

69:                                               ; preds = %47
  %70 = load %struct.obj_order*, %struct.obj_order** %4, align 8
  %71 = call i32 @free(%struct.obj_order* %70)
  br label %72

72:                                               ; preds = %69, %10
  ret void
}

declare dso_local i32 @ALLOC_ARRAY(%struct.obj_order*, i32) #1

declare dso_local i32 @order_objects(i8*, i32, %struct.obj_order*, i32) #1

declare dso_local i32 @free(%struct.obj_order*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
