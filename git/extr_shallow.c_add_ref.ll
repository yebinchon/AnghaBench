; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_add_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_add_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit_array = type { i32, i64*, i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @add_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.commit_array*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.commit_array*
  store %struct.commit_array* %11, %struct.commit_array** %9, align 8
  %12 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %13 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %16 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %20 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ALLOC_GROW(i64* %14, i32 %18, i32 %21)
  %23 = load i32, i32* @the_repository, align 4
  %24 = load %struct.object_id*, %struct.object_id** %6, align 8
  %25 = call i64 @lookup_commit_reference_gently(i32 %23, %struct.object_id* %24, i32 1)
  %26 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %27 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %30 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  store i64 %25, i64* %33, align 8
  %34 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %35 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %38 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load %struct.commit_array*, %struct.commit_array** %9, align 8
  %46 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %4
  ret i32 0
}

declare dso_local i32 @ALLOC_GROW(i64*, i32, i32) #1

declare dso_local i64 @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
