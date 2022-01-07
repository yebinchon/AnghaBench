; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bioset_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bioset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_set = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BIO_INLINE_VECS = common dso_local global i32 0, align 4
@bio_alloc_rescue = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4
@BIOSET_NEED_RESCUER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bioset\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bioset_init(%struct.bio_set* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bio_set* %0, %struct.bio_set** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @BIO_INLINE_VECS, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %17 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %19 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %18, i32 0, i32 7
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %22 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %21, i32 0, i32 6
  %23 = call i32 @bio_list_init(i32* %22)
  %24 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %25 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %24, i32 0, i32 5
  %26 = load i32, i32* @bio_alloc_rescue, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %28, %29
  %31 = call i32 @bio_find_or_create_slab(i32 %30)
  %32 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %33 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %35 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %85

41:                                               ; preds = %4
  %42 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %43 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %42, i32 0, i32 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %46 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @mempool_init_slab_pool(i32* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %80

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %58 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %57, i32 0, i32 2
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @biovec_init_pool(i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %80

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @BIOSET_NEED_RESCUER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %85

69:                                               ; preds = %63
  %70 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %71 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %70, i32 0)
  %72 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %73 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %75 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %80

79:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %85

80:                                               ; preds = %78, %62, %50
  %81 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  %82 = call i32 @bioset_exit(%struct.bio_set* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %79, %68, %38
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @bio_find_or_create_slab(i32) #1

declare dso_local i64 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i64 @biovec_init_pool(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @bioset_exit(%struct.bio_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
