; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_compute_collisions.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_compute_collisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dir_rename_entry = type { i32 }
%struct.collision_entry = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, %struct.hashmap*, %struct.diff_queue_struct*)* @compute_collisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_collisions(%struct.hashmap* %0, %struct.hashmap* %1, %struct.diff_queue_struct* %2) #0 {
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca %struct.diff_queue_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dir_rename_entry*, align 8
  %9 = alloca %struct.collision_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.diff_filepair*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %4, align 8
  store %struct.hashmap* %1, %struct.hashmap** %5, align 8
  store %struct.diff_queue_struct* %2, %struct.diff_queue_struct** %6, align 8
  %12 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %13 = call i32 @collision_init(%struct.hashmap* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %94, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %17 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %97

20:                                               ; preds = %14
  %21 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %22 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %21, i32 0, i32 1
  %23 = load %struct.diff_filepair**, %struct.diff_filepair*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %23, i64 %25
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %26, align 8
  store %struct.diff_filepair* %27, %struct.diff_filepair** %11, align 8
  %28 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %29 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 65
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %35 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 82
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %94

40:                                               ; preds = %33, %20
  %41 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %42 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %47 = call %struct.dir_rename_entry* @check_dir_renamed(i32 %45, %struct.hashmap* %46)
  store %struct.dir_rename_entry* %47, %struct.dir_rename_entry** %8, align 8
  %48 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %8, align 8
  %49 = icmp ne %struct.dir_rename_entry* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %94

51:                                               ; preds = %40
  %52 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %8, align 8
  %53 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %54 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @apply_dir_rename(%struct.dir_rename_entry* %52, i32 %57)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %94

62:                                               ; preds = %51
  %63 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call %struct.collision_entry* @collision_find_entry(%struct.hashmap* %63, i8* %64)
  store %struct.collision_entry* %65, %struct.collision_entry** %9, align 8
  %66 = load %struct.collision_entry*, %struct.collision_entry** %9, align 8
  %67 = icmp ne %struct.collision_entry* %66, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %62
  %69 = call %struct.collision_entry* @xcalloc(i32 1, i32 16)
  store %struct.collision_entry* %69, %struct.collision_entry** %9, align 8
  %70 = load %struct.collision_entry*, %struct.collision_entry** %9, align 8
  %71 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %70, i32 0, i32 2
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @strhash(i8* %72)
  %74 = call i32 @hashmap_entry_init(i32* %71, i32 %73)
  %75 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %76 = load %struct.collision_entry*, %struct.collision_entry** %9, align 8
  %77 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %76, i32 0, i32 2
  %78 = call i32 @hashmap_put(%struct.hashmap* %75, i32* %77)
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.collision_entry*, %struct.collision_entry** %9, align 8
  %81 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %85

82:                                               ; preds = %62
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %68
  %86 = load %struct.collision_entry*, %struct.collision_entry** %9, align 8
  %87 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %86, i32 0, i32 1
  %88 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %89 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @string_list_insert(i32* %87, i32 %92)
  br label %94

94:                                               ; preds = %85, %61, %50, %39
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %14

97:                                               ; preds = %14
  ret void
}

declare dso_local i32 @collision_init(%struct.hashmap*) #1

declare dso_local %struct.dir_rename_entry* @check_dir_renamed(i32, %struct.hashmap*) #1

declare dso_local i8* @apply_dir_rename(%struct.dir_rename_entry*, i32) #1

declare dso_local %struct.collision_entry* @collision_find_entry(%struct.hashmap*, i8*) #1

declare dso_local %struct.collision_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i8*) #1

declare dso_local i32 @hashmap_put(%struct.hashmap*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
