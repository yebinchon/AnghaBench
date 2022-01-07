; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_object_array_remove_duplicates.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_object_array_remove_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @object_array_remove_duplicates(%struct.object_array* %0) #0 {
  %2 = alloca %struct.object_array*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_array_entry*, align 8
  store %struct.object_array* %0, %struct.object_array** %2, align 8
  %6 = load %struct.object_array*, %struct.object_array** %2, align 8
  %7 = getelementptr inbounds %struct.object_array, %struct.object_array* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.object_array*, %struct.object_array** %2, align 8
  %10 = getelementptr inbounds %struct.object_array, %struct.object_array* %9, i32 0, i32 1
  %11 = load %struct.object_array_entry*, %struct.object_array_entry** %10, align 8
  store %struct.object_array_entry* %11, %struct.object_array_entry** %5, align 8
  %12 = load %struct.object_array*, %struct.object_array** %2, align 8
  %13 = getelementptr inbounds %struct.object_array, %struct.object_array* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %59, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load %struct.object_array*, %struct.object_array** %2, align 8
  %20 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %20, i64 %22
  %24 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @contains_name(%struct.object_array* %19, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.object_array*, %struct.object_array** %2, align 8
  %31 = getelementptr inbounds %struct.object_array, %struct.object_array* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %36 = load %struct.object_array*, %struct.object_array** %2, align 8
  %37 = getelementptr inbounds %struct.object_array, %struct.object_array* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %35, i64 %39
  %41 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %41, i64 %43
  %45 = bitcast %struct.object_array_entry* %40 to i8*
  %46 = bitcast %struct.object_array_entry* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %34, %28
  %48 = load %struct.object_array*, %struct.object_array** %2, align 8
  %49 = getelementptr inbounds %struct.object_array, %struct.object_array* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %58

52:                                               ; preds = %18
  %53 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %53, i64 %55
  %57 = call i32 @object_array_release_entry(%struct.object_array_entry* %56)
  br label %58

58:                                               ; preds = %52, %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %14

62:                                               ; preds = %14
  ret void
}

declare dso_local i32 @contains_name(%struct.object_array*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @object_array_release_entry(%struct.object_array_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
