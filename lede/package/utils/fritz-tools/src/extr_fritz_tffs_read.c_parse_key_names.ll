; ModuleID = '/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_parse_key_names.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_parse_key_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_entry = type { i32*, i32 }
%struct.tffs_key_name_table = type { i64, %struct.tffs_name_table_entry* }
%struct.tffs_name_table_entry = type { i64*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tffs_entry*, %struct.tffs_key_name_table*)* @parse_key_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_key_names(%struct.tffs_entry* %0, %struct.tffs_key_name_table* %1) #0 {
  %3 = alloca %struct.tffs_entry*, align 8
  %4 = alloca %struct.tffs_key_name_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tffs_name_table_entry*, align 8
  store %struct.tffs_entry* %0, %struct.tffs_entry** %3, align 8
  store %struct.tffs_key_name_table* %1, %struct.tffs_key_name_table** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = call %struct.tffs_name_table_entry* @calloc(i32 16, i32 1)
  %9 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %10 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %9, i32 0, i32 1
  store %struct.tffs_name_table_entry* %8, %struct.tffs_name_table_entry** %10, align 8
  br label %11

11:                                               ; preds = %55, %2
  %12 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %13 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %12, i32 0, i32 1
  %14 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %14, i64 %15
  store %struct.tffs_name_table_entry* %16, %struct.tffs_name_table_entry** %7, align 8
  %17 = load %struct.tffs_entry*, %struct.tffs_entry** %3, align 8
  %18 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = bitcast i32* %21 to i64*
  %23 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %7, align 8
  %24 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %23, i32 0, i32 0
  store i64* %22, i64** %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.tffs_entry*, %struct.tffs_entry** %3, align 8
  %28 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = bitcast i32* %31 to i8*
  %33 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %7, align 8
  %34 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %7, align 8
  %36 = getelementptr inbounds %struct.tffs_name_table_entry, %struct.tffs_name_table_entry* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 1
  %40 = call i64 @get_walk_size(i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  %45 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %46 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %45, i32 0, i32 1
  %47 = load %struct.tffs_name_table_entry*, %struct.tffs_name_table_entry** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  %50 = mul i64 16, %49
  %51 = trunc i64 %50 to i32
  %52 = call %struct.tffs_name_table_entry* @realloc(%struct.tffs_name_table_entry* %47, i32 %51)
  %53 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %54 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %53, i32 0, i32 1
  store %struct.tffs_name_table_entry* %52, %struct.tffs_name_table_entry** %54, align 8
  br label %55

55:                                               ; preds = %11
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.tffs_entry*, %struct.tffs_entry** %3, align 8
  %58 = getelementptr inbounds %struct.tffs_entry, %struct.tffs_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @get_header_len(i32 %59)
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %11, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.tffs_key_name_table*, %struct.tffs_key_name_table** %4, align 8
  %65 = getelementptr inbounds %struct.tffs_key_name_table, %struct.tffs_key_name_table* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  ret void
}

declare dso_local %struct.tffs_name_table_entry* @calloc(i32, i32) #1

declare dso_local i64 @get_walk_size(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.tffs_name_table_entry* @realloc(%struct.tffs_name_table_entry*, i32) #1

declare dso_local i64 @get_header_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
