; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_key_cmp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-disk.c_key_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i32, i32 }
%struct.index_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_cmp(%struct.hash_entry* %0, %struct.index_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hash_entry*, align 8
  %5 = alloca %struct.index_entry*, align 8
  store %struct.hash_entry* %0, %struct.hash_entry** %4, align 8
  store %struct.index_entry* %1, %struct.index_entry** %5, align 8
  %6 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %7 = icmp eq %struct.hash_entry* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

9:                                                ; preds = %2
  %10 = load %struct.index_entry*, %struct.index_entry** %5, align 8
  %11 = icmp eq %struct.index_entry* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %27

13:                                               ; preds = %9
  %14 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.index_entry*, %struct.index_entry** %5, align 8
  %21 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.index_entry*, %struct.index_entry** %5, align 8
  %24 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mystrcmp(i32 %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %13, %12, %8
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @mystrcmp(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
