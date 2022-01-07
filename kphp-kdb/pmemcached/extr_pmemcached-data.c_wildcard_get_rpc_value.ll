; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_get_rpc_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_get_rpc_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.wildcard_entry = type { i32, i64 }

@wildcard_rpc_cache_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wildcard_get_rpc_value(%struct.data* noalias sret %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.wildcard_entry*, align 8
  store i8* %1, i8** %4, align 8
  store i32 %2, i32* %5, align 4
  %8 = load i32, i32* @wildcard_rpc_cache_tree, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_3__* @tree_lookup(i32 %8, i8* %9, i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.data, %struct.data* %0, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.data, %struct.data* %0, i32 0, i32 3
  store i64 0, i64* %16, align 8
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.wildcard_entry*
  store %struct.wildcard_entry* %21, %struct.wildcard_entry** %7, align 8
  %22 = load %struct.wildcard_entry*, %struct.wildcard_entry** %7, align 8
  %23 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.data, %struct.data* %0, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.data, %struct.data* %0, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.data, %struct.data* %0, i32 0, i32 2
  store i32 -1, i32* %27, align 8
  %28 = load %struct.wildcard_entry*, %struct.wildcard_entry** %7, align 8
  %29 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.data, %struct.data* %0, i32 0, i32 3
  store i64 %30, i64* %31, align 8
  %32 = load %struct.wildcard_entry*, %struct.wildcard_entry** %7, align 8
  %33 = call i32 @wildcard_update_use(%struct.wildcard_entry* %32)
  br label %34

34:                                               ; preds = %17, %14
  ret void
}

declare dso_local %struct.TYPE_3__* @tree_lookup(i32, i8*, i32) #1

declare dso_local i32 @wildcard_update_use(%struct.wildcard_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
