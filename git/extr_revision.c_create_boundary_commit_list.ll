; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_create_boundary_commit_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_create_boundary_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32*, %struct.object_array }
%struct.object_array = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i64 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHILD_SHOWN = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@BOUNDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @create_boundary_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_boundary_commit_list(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.object_array*, align 8
  %6 = alloca %struct.object_array_entry*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %8 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 2
  store %struct.object_array* %8, %struct.object_array** %5, align 8
  %9 = load %struct.object_array*, %struct.object_array** %5, align 8
  %10 = getelementptr inbounds %struct.object_array, %struct.object_array* %9, i32 0, i32 1
  %11 = load %struct.object_array_entry*, %struct.object_array_entry** %10, align 8
  store %struct.object_array_entry* %11, %struct.object_array_entry** %6, align 8
  %12 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @free_commit_list(i32* %19)
  %21 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %22 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %72, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.object_array*, %struct.object_array** %5, align 8
  %27 = getelementptr inbounds %struct.object_array, %struct.object_array* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %24
  %31 = load %struct.object_array_entry*, %struct.object_array_entry** %6, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %31, i64 %33
  %35 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.commit*
  store %struct.commit* %37, %struct.commit** %4, align 8
  %38 = load %struct.commit*, %struct.commit** %4, align 8
  %39 = icmp ne %struct.commit* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %72

41:                                               ; preds = %30
  %42 = load %struct.commit*, %struct.commit** %4, align 8
  %43 = getelementptr inbounds %struct.commit, %struct.commit* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CHILD_SHOWN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %72

50:                                               ; preds = %41
  %51 = load %struct.commit*, %struct.commit** %4, align 8
  %52 = getelementptr inbounds %struct.commit, %struct.commit* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SHOWN, align 4
  %56 = load i32, i32* @BOUNDARY, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %72

61:                                               ; preds = %50
  %62 = load i32, i32* @BOUNDARY, align 4
  %63 = load %struct.commit*, %struct.commit** %4, align 8
  %64 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load %struct.commit*, %struct.commit** %4, align 8
  %69 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %70 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %69, i32 0, i32 1
  %71 = call i32 @commit_list_insert(%struct.commit* %68, i32** %70)
  br label %72

72:                                               ; preds = %61, %60, %49, %40
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %24

75:                                               ; preds = %24
  %76 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %77 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %76, i32 0, i32 1
  %78 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %79 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sort_in_topological_order(i32** %77, i32 %80)
  ret void
}

declare dso_local i32 @free_commit_list(i32*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, i32**) #1

declare dso_local i32 @sort_in_topological_order(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
