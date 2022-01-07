; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_insert_file_table.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_insert_file_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.hashmap = type { i32 }
%struct.diff_filespec = type { i32 }
%struct.file_similarity = type { i32, i32, %struct.diff_filespec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.hashmap*, i32, %struct.diff_filespec*)* @insert_file_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_file_table(%struct.repository* %0, %struct.hashmap* %1, i32 %2, %struct.diff_filespec* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.hashmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca %struct.file_similarity*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.hashmap* %1, %struct.hashmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.diff_filespec* %3, %struct.diff_filespec** %8, align 8
  %10 = call %struct.file_similarity* @xmalloc(i32 16)
  store %struct.file_similarity* %10, %struct.file_similarity** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.file_similarity*, %struct.file_similarity** %9, align 8
  %13 = getelementptr inbounds %struct.file_similarity, %struct.file_similarity* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %15 = load %struct.file_similarity*, %struct.file_similarity** %9, align 8
  %16 = getelementptr inbounds %struct.file_similarity, %struct.file_similarity* %15, i32 0, i32 2
  store %struct.diff_filespec* %14, %struct.diff_filespec** %16, align 8
  %17 = load %struct.file_similarity*, %struct.file_similarity** %9, align 8
  %18 = getelementptr inbounds %struct.file_similarity, %struct.file_similarity* %17, i32 0, i32 1
  %19 = load %struct.repository*, %struct.repository** %5, align 8
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %21 = call i32 @hash_filespec(%struct.repository* %19, %struct.diff_filespec* %20)
  %22 = call i32 @hashmap_entry_init(i32* %18, i32 %21)
  %23 = load %struct.hashmap*, %struct.hashmap** %6, align 8
  %24 = load %struct.file_similarity*, %struct.file_similarity** %9, align 8
  %25 = getelementptr inbounds %struct.file_similarity, %struct.file_similarity* %24, i32 0, i32 1
  %26 = call i32 @hashmap_add(%struct.hashmap* %23, i32* %25)
  ret void
}

declare dso_local %struct.file_similarity* @xmalloc(i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @hash_filespec(%struct.repository*, %struct.diff_filespec*) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
