; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_dfs_check.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_dfs_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_table = type { i32, %struct.fwd_entry* }
%struct.fwd_entry = type { i64, %struct.db_table*, %struct.fwd_entry* }

@FE_TABLEREF = common dso_local global i64 0, align 8
@MAX_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfs_check(%struct.db_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.db_table*, align 8
  %4 = alloca %struct.fwd_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.db_table* %0, %struct.db_table** %3, align 8
  %7 = load %struct.db_table*, %struct.db_table** %3, align 8
  %8 = getelementptr inbounds %struct.db_table, %struct.db_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1000
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.db_table*, %struct.db_table** %3, align 8
  %13 = getelementptr inbounds %struct.db_table, %struct.db_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.db_table*, %struct.db_table** %3, align 8
  %17 = getelementptr inbounds %struct.db_table, %struct.db_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  store i32 0, i32* %5, align 4
  %20 = load %struct.db_table*, %struct.db_table** %3, align 8
  %21 = getelementptr inbounds %struct.db_table, %struct.db_table* %20, i32 0, i32 1
  %22 = load %struct.fwd_entry*, %struct.fwd_entry** %21, align 8
  store %struct.fwd_entry* %22, %struct.fwd_entry** %4, align 8
  br label %23

23:                                               ; preds = %49, %15
  %24 = load %struct.fwd_entry*, %struct.fwd_entry** %4, align 8
  %25 = icmp ne %struct.fwd_entry* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load %struct.fwd_entry*, %struct.fwd_entry** %4, align 8
  %28 = getelementptr inbounds %struct.fwd_entry, %struct.fwd_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FE_TABLEREF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.fwd_entry*, %struct.fwd_entry** %4, align 8
  %34 = getelementptr inbounds %struct.fwd_entry, %struct.fwd_entry* %33, i32 0, i32 1
  %35 = load %struct.db_table*, %struct.db_table** %34, align 8
  %36 = call i32 @dfs_check(%struct.db_table* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAX_HEIGHT, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %53

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.fwd_entry*, %struct.fwd_entry** %4, align 8
  %51 = getelementptr inbounds %struct.fwd_entry, %struct.fwd_entry* %50, i32 0, i32 2
  %52 = load %struct.fwd_entry*, %struct.fwd_entry** %51, align 8
  store %struct.fwd_entry* %52, %struct.fwd_entry** %4, align 8
  br label %23

53:                                               ; preds = %46, %23
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 999
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.db_table*, %struct.db_table** %3, align 8
  %62 = getelementptr inbounds %struct.db_table, %struct.db_table* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 %60, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
