; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_for_each_unique.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_for_each_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_array_for_each_unique(%struct.oid_array* %0, i32 (i64, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.oid_array*, align 8
  %6 = alloca i32 (i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.oid_array* %0, %struct.oid_array** %5, align 8
  store i32 (i64, i8*)* %1, i32 (i64, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %11 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %16 = call i32 @oid_array_sort(%struct.oid_array* %15)
  br label %17

17:                                               ; preds = %14, %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %21 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %29 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %35 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = sub nsw i64 %39, 1
  %41 = call i64 @oideq(i64 %33, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %59

44:                                               ; preds = %27, %24
  %45 = load i32 (i64, i8*)*, i32 (i64, i8*)** %6, align 8
  %46 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %47 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 %45(i64 %51, i8* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %18

62:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @oid_array_sort(%struct.oid_array*) #1

declare dso_local i64 @oideq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
