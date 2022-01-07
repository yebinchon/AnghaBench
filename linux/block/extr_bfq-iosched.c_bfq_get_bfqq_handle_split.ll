; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_get_bfqq_handle_split.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_get_bfqq_handle_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i32, i32 }
%struct.bfq_data = type { i32, i64, %struct.bfq_queue }
%struct.bfq_io_cq = type { i64, i64 }
%struct.bio = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue* (%struct.bfq_data*, %struct.bfq_io_cq*, %struct.bio*, i32, i32, i32*)* @bfq_get_bfqq_handle_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue* @bfq_get_bfqq_handle_split(%struct.bfq_data* %0, %struct.bfq_io_cq* %1, %struct.bio* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.bfq_queue*, align 8
  %8 = alloca %struct.bfq_data*, align 8
  %9 = alloca %struct.bfq_io_cq*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %8, align 8
  store %struct.bfq_io_cq* %1, %struct.bfq_io_cq** %9, align 8
  store %struct.bio* %2, %struct.bio** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %9, align 8
  %16 = load i32, i32* %12, align 4
  %17 = call %struct.bfq_queue* @bic_to_bfqq(%struct.bfq_io_cq* %15, i32 %16)
  store %struct.bfq_queue* %17, %struct.bfq_queue** %14, align 8
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %19 = icmp ne %struct.bfq_queue* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %22 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %23 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %22, i32 0, i32 2
  %24 = icmp ne %struct.bfq_queue* %21, %23
  br label %25

25:                                               ; preds = %20, %6
  %26 = phi i1 [ false, %6 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  store %struct.bfq_queue* %31, %struct.bfq_queue** %7, align 8
  br label %96

32:                                               ; preds = %25
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32*, i32** %13, align 8
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %39 = icmp ne %struct.bfq_queue* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %42 = call i32 @bfq_put_queue(%struct.bfq_queue* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %45 = load %struct.bio*, %struct.bio** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %9, align 8
  %48 = call %struct.bfq_queue* @bfq_get_queue(%struct.bfq_data* %44, %struct.bio* %45, i32 %46, %struct.bfq_io_cq* %47)
  store %struct.bfq_queue* %48, %struct.bfq_queue** %14, align 8
  %49 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %9, align 8
  %50 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @bic_set_bfqq(%struct.bfq_io_cq* %49, %struct.bfq_queue* %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %55
  %59 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %9, align 8
  %60 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %65 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %9, align 8
  %70 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %63
  %74 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %75 = call i32 @bfq_mark_bfqq_in_large_burst(%struct.bfq_queue* %74)
  br label %90

76:                                               ; preds = %68
  %77 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %78 = call i32 @bfq_clear_bfqq_in_large_burst(%struct.bfq_queue* %77)
  %79 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %9, align 8
  %80 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %85 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %84, i32 0, i32 1
  %86 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %87 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %86, i32 0, i32 0
  %88 = call i32 @hlist_add_head(i32* %85, i32* %87)
  br label %89

89:                                               ; preds = %83, %76
  br label %90

90:                                               ; preds = %89, %73
  %91 = load i32, i32* @jiffies, align 4
  %92 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  %93 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %55, %43
  %95 = load %struct.bfq_queue*, %struct.bfq_queue** %14, align 8
  store %struct.bfq_queue* %95, %struct.bfq_queue** %7, align 8
  br label %96

96:                                               ; preds = %94, %30
  %97 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  ret %struct.bfq_queue* %97
}

declare dso_local %struct.bfq_queue* @bic_to_bfqq(%struct.bfq_io_cq*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bfq_put_queue(%struct.bfq_queue*) #1

declare dso_local %struct.bfq_queue* @bfq_get_queue(%struct.bfq_data*, %struct.bio*, i32, %struct.bfq_io_cq*) #1

declare dso_local i32 @bic_set_bfqq(%struct.bfq_io_cq*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_mark_bfqq_in_large_burst(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_clear_bfqq_in_large_burst(%struct.bfq_queue*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
