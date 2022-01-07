; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ce_compare_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ce_compare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32 }
%struct.stat = type { i32 }
%struct.object_id = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*, %struct.stat*)* @ce_compare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_compare_data(%struct.index_state* %0, %struct.cache_entry* %1, %struct.stat* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store %struct.stat* %2, %struct.stat** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %11 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @git_open_cloexec(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load %struct.index_state*, %struct.index_state** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.stat*, %struct.stat** %6, align 8
  %21 = load i32, i32* @OBJ_BLOB, align 4
  %22 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @index_fd(%struct.index_state* %18, %struct.object_id* %9, i32 %19, %struct.stat* %20, i32 %21, i32 %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %17
  %28 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 0
  %30 = call i32 @oideq(%struct.object_id* %9, i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %27, %17
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @git_open_cloexec(i32, i32) #1

declare dso_local i32 @index_fd(%struct.index_state*, %struct.object_id*, i32, %struct.stat*, i32, i32, i32) #1

declare dso_local i32 @oideq(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
