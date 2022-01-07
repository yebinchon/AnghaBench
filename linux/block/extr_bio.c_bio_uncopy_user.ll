; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_uncopy_user.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_uncopy_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bio = type { %struct.bio_map_data* }
%struct.bio_map_data = type { i64, i32 }

@BIO_NULL_MAPPED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINTR = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_uncopy_user(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio_map_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  store %struct.bio_map_data* %7, %struct.bio_map_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = load i32, i32* @BIO_NULL_MAPPED, align 4
  %10 = call i32 @bio_flagged(%struct.bio* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %12
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = call i64 @bio_data_dir(%struct.bio* %21)
  %23 = load i64, i64* @READ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %28 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bio_copy_to_iter(%struct.bio* %26, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %20
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %34 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = call i32 @bio_free_pages(%struct.bio* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  %43 = call i32 @kfree(%struct.bio_map_data* %42)
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = call i32 @bio_put(%struct.bio* %44)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_copy_to_iter(%struct.bio*, i32) #1

declare dso_local i32 @bio_free_pages(%struct.bio*) #1

declare dso_local i32 @kfree(%struct.bio_map_data*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
