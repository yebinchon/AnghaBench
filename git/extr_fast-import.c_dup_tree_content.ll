; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_dup_tree_content.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_dup_tree_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_content = type { i32, i32, %struct.tree_entry** }
%struct.tree_entry = type { %struct.tree_content*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree_content* (%struct.tree_content*)* @dup_tree_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree_content* @dup_tree_content(%struct.tree_content* %0) #0 {
  %2 = alloca %struct.tree_content*, align 8
  %3 = alloca %struct.tree_content*, align 8
  %4 = alloca %struct.tree_content*, align 8
  %5 = alloca %struct.tree_entry*, align 8
  %6 = alloca %struct.tree_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.tree_content* %0, %struct.tree_content** %3, align 8
  %8 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %9 = icmp ne %struct.tree_content* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.tree_content* null, %struct.tree_content** %2, align 8
  br label %79

11:                                               ; preds = %1
  %12 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %13 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.tree_content* @new_tree_content(i32 %14)
  store %struct.tree_content* %15, %struct.tree_content** %4, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %64, %11
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %19 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %16
  %23 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %24 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %23, i32 0, i32 2
  %25 = load %struct.tree_entry**, %struct.tree_entry*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %25, i64 %27
  %29 = load %struct.tree_entry*, %struct.tree_entry** %28, align 8
  store %struct.tree_entry* %29, %struct.tree_entry** %5, align 8
  %30 = call %struct.tree_entry* (...) @new_tree_entry()
  store %struct.tree_entry* %30, %struct.tree_entry** %6, align 8
  %31 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %32 = load %struct.tree_entry*, %struct.tree_entry** %5, align 8
  %33 = call i32 @memcpy(%struct.tree_entry* %31, %struct.tree_entry* %32, i32 16)
  %34 = load %struct.tree_entry*, %struct.tree_entry** %5, align 8
  %35 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %34, i32 0, i32 0
  %36 = load %struct.tree_content*, %struct.tree_content** %35, align 8
  %37 = icmp ne %struct.tree_content* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %22
  %39 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %40 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i64 @is_null_oid(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.tree_entry*, %struct.tree_entry** %5, align 8
  %48 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %47, i32 0, i32 0
  %49 = load %struct.tree_content*, %struct.tree_content** %48, align 8
  %50 = call %struct.tree_content* @dup_tree_content(%struct.tree_content* %49)
  %51 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %52 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %51, i32 0, i32 0
  store %struct.tree_content* %50, %struct.tree_content** %52, align 8
  br label %56

53:                                               ; preds = %38, %22
  %54 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %55 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %54, i32 0, i32 0
  store %struct.tree_content* null, %struct.tree_content** %55, align 8
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %58 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %59 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %58, i32 0, i32 2
  %60 = load %struct.tree_entry**, %struct.tree_entry*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %60, i64 %62
  store %struct.tree_entry* %57, %struct.tree_entry** %63, align 8
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %16

67:                                               ; preds = %16
  %68 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %69 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %72 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %74 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  %77 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tree_content*, %struct.tree_content** %4, align 8
  store %struct.tree_content* %78, %struct.tree_content** %2, align 8
  br label %79

79:                                               ; preds = %67, %10
  %80 = load %struct.tree_content*, %struct.tree_content** %2, align 8
  ret %struct.tree_content* %80
}

declare dso_local %struct.tree_content* @new_tree_content(i32) #1

declare dso_local %struct.tree_entry* @new_tree_entry(...) #1

declare dso_local i32 @memcpy(%struct.tree_entry*, %struct.tree_entry*, i32) #1

declare dso_local i64 @is_null_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
