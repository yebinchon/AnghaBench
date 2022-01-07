; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_alloc_map_data.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_alloc_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_map_data = type { i32, %struct.iov_iter }
%struct.iov_iter = type { i32, i32 }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@iov = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio_map_data* (%struct.iov_iter*, i32)* @bio_alloc_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio_map_data* @bio_alloc_map_data(%struct.iov_iter* %0, i32 %1) #0 {
  %3 = alloca %struct.bio_map_data*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_map_data*, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %8 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UIO_MAXIOV, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.bio_map_data* null, %struct.bio_map_data** %3, align 8
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %15 = load i32, i32* @iov, align 4
  %16 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %17 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @struct_size(%struct.bio_map_data* %14, i32 %15, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.bio_map_data* @kmalloc(i32 %19, i32 %20)
  store %struct.bio_map_data* %21, %struct.bio_map_data** %6, align 8
  %22 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %23 = icmp ne %struct.bio_map_data* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  store %struct.bio_map_data* null, %struct.bio_map_data** %3, align 8
  br label %51

25:                                               ; preds = %13
  %26 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %27 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %33 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i32 %28, i32 %31, i32 %37)
  %39 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %40 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %39, i32 0, i32 1
  %41 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %42 = bitcast %struct.iov_iter* %40 to i8*
  %43 = bitcast %struct.iov_iter* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %45 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %48 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  store %struct.bio_map_data* %50, %struct.bio_map_data** %3, align 8
  br label %51

51:                                               ; preds = %25, %24, %12
  %52 = load %struct.bio_map_data*, %struct.bio_map_data** %3, align 8
  ret %struct.bio_map_data* %52
}

declare dso_local %struct.bio_map_data* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.bio_map_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
