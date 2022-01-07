; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_create_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_create_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry_pool = type { i32, %struct.object_entry*, %struct.object_entry_pool* }
%struct.object_entry = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pack_idx_entry = type { i32 }

@object_count = common dso_local global i32 0, align 4
@blocks = common dso_local global %struct.object_entry_pool* null, align 8
@pack_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"internal consistency error creating the index\00", align 1
@pack_idx_opts = common dso_local global i32 0, align 4
@pack_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @create_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_index() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.pack_idx_entry**, align 8
  %3 = alloca %struct.pack_idx_entry**, align 8
  %4 = alloca %struct.pack_idx_entry**, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca %struct.object_entry_pool*, align 8
  %7 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %2, align 8
  %8 = load i32, i32* @object_count, align 4
  %9 = call i32 @ALLOC_ARRAY(%struct.pack_idx_entry** %7, i32 %8)
  %10 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %2, align 8
  store %struct.pack_idx_entry** %10, %struct.pack_idx_entry*** %3, align 8
  %11 = load %struct.object_entry_pool*, %struct.object_entry_pool** @blocks, align 8
  store %struct.object_entry_pool* %11, %struct.object_entry_pool** %6, align 8
  br label %12

12:                                               ; preds = %42, %0
  %13 = load %struct.object_entry_pool*, %struct.object_entry_pool** %6, align 8
  %14 = icmp ne %struct.object_entry_pool* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %12
  %16 = load %struct.object_entry_pool*, %struct.object_entry_pool** %6, align 8
  %17 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %16, i32 0, i32 1
  %18 = load %struct.object_entry*, %struct.object_entry** %17, align 8
  store %struct.object_entry* %18, %struct.object_entry** %5, align 8
  br label %19

19:                                               ; preds = %40, %15
  %20 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 -1
  store %struct.object_entry* %21, %struct.object_entry** %5, align 8
  %22 = load %struct.object_entry_pool*, %struct.object_entry_pool** %6, align 8
  %23 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.object_entry*
  %27 = icmp ne %struct.object_entry* %20, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load i64, i64* @pack_id, align 8
  %30 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %31 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %36 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to %struct.pack_idx_entry*
  %38 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %3, align 8
  %39 = getelementptr inbounds %struct.pack_idx_entry*, %struct.pack_idx_entry** %38, i32 1
  store %struct.pack_idx_entry** %39, %struct.pack_idx_entry*** %3, align 8
  store %struct.pack_idx_entry* %37, %struct.pack_idx_entry** %38, align 8
  br label %40

40:                                               ; preds = %34, %28
  br label %19

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.object_entry_pool*, %struct.object_entry_pool** %6, align 8
  %44 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %43, i32 0, i32 2
  %45 = load %struct.object_entry_pool*, %struct.object_entry_pool** %44, align 8
  store %struct.object_entry_pool* %45, %struct.object_entry_pool** %6, align 8
  br label %12

46:                                               ; preds = %12
  %47 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %2, align 8
  %48 = load i32, i32* @object_count, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pack_idx_entry*, %struct.pack_idx_entry** %47, i64 %49
  store %struct.pack_idx_entry** %50, %struct.pack_idx_entry*** %4, align 8
  %51 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %3, align 8
  %52 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %4, align 8
  %53 = icmp ne %struct.pack_idx_entry** %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %46
  %57 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %2, align 8
  %58 = load i32, i32* @object_count, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pack_data, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @write_idx_file(i32* null, %struct.pack_idx_entry** %57, i32 %58, i32* @pack_idx_opts, i32 %61)
  store i8* %62, i8** %1, align 8
  %63 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %2, align 8
  %64 = call i32 @free(%struct.pack_idx_entry** %63)
  %65 = load i8*, i8** %1, align 8
  ret i8* %65
}

declare dso_local i32 @ALLOC_ARRAY(%struct.pack_idx_entry**, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i8* @write_idx_file(i32*, %struct.pack_idx_entry**, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.pack_idx_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
