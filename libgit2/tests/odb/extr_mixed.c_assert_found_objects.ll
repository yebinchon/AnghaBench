; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_assert_found_objects.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_assert_found_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@expand_id_test_data = common dso_local global %struct.TYPE_12__* null, align 8
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @assert_found_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_found_objects(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @expand_id_test_data, align 8
  %9 = call i64 @ARRAY_SIZE(%struct.TYPE_12__* %8)
  store i64 %9, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %55, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @expand_id_test_data, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @expand_id_test_data, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @git_oid_fromstr(%struct.TYPE_10__* %5, i64 %27)
  %29 = load i64, i64* @GIT_OID_HEXSZ, align 8
  store i64 %29, i64* %6, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** @expand_id_test_data, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %22, %14
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = call i32 @cl_assert_equal_oid(%struct.TYPE_10__* %5, i32* %39)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i64 %41, i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_i(i64 %48, i32 %53)
  br label %55

55:                                               ; preds = %35
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %10

58:                                               ; preds = %10
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @git_oid_fromstr(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @cl_assert_equal_oid(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
