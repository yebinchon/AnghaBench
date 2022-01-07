; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_list_copy_data.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_list_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bvec_iter, %struct.bio* }
%struct.bvec_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_list_copy_data(%struct.bio* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bvec_iter, align 4
  %6 = alloca %struct.bvec_iter, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = bitcast %struct.bvec_iter* %5 to i8*
  %10 = bitcast %struct.bvec_iter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 8 %10, i64 4, i1 false)
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = bitcast %struct.bvec_iter* %6 to i8*
  %14 = bitcast %struct.bvec_iter* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 8 %14, i64 4, i1 false)
  br label %15

15:                                               ; preds = %2, %47
  %16 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  store %struct.bio* %22, %struct.bio** %4, align 8
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = icmp ne %struct.bio* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %51

26:                                               ; preds = %19
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = bitcast %struct.bvec_iter* %5 to i8*
  %30 = bitcast %struct.bvec_iter* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 8 %30, i64 4, i1 false)
  br label %31

31:                                               ; preds = %26, %15
  %32 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load %struct.bio*, %struct.bio** %3, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  %38 = load %struct.bio*, %struct.bio** %37, align 8
  store %struct.bio* %38, %struct.bio** %3, align 8
  %39 = load %struct.bio*, %struct.bio** %3, align 8
  %40 = icmp ne %struct.bio* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %51

42:                                               ; preds = %35
  %43 = load %struct.bio*, %struct.bio** %3, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = bitcast %struct.bvec_iter* %6 to i8*
  %46 = bitcast %struct.bvec_iter* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 8 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %42, %31
  %48 = load %struct.bio*, %struct.bio** %3, align 8
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = call i32 @bio_copy_data_iter(%struct.bio* %48, %struct.bvec_iter* %6, %struct.bio* %49, %struct.bvec_iter* %5)
  br label %15

51:                                               ; preds = %41, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bio_copy_data_iter(%struct.bio*, %struct.bvec_iter*, %struct.bio*, %struct.bvec_iter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
