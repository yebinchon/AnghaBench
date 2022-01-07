; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-hashmap.c_alloc_test_entry.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-hashmap.c_alloc_test_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_entry = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.test_entry* (i32, i8*, i8*)* @alloc_test_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.test_entry* @alloc_test_entry(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.test_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @st_add4(i32 16, i64 %14, i64 %15, i32 2)
  %17 = call %struct.test_entry* @xmalloc(i32 %16)
  store %struct.test_entry* %17, %struct.test_entry** %9, align 8
  %18 = load %struct.test_entry*, %struct.test_entry** %9, align 8
  %19 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @hashmap_entry_init(i32* %19, i32 %20)
  %22 = load %struct.test_entry*, %struct.test_entry** %9, align 8
  %23 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  %28 = call i32 @memcpy(i64 %24, i8* %25, i64 %27)
  %29 = load %struct.test_entry*, %struct.test_entry** %9, align 8
  %30 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %31, %32
  %34 = add i64 %33, 1
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  %38 = call i32 @memcpy(i64 %34, i8* %35, i64 %37)
  %39 = load %struct.test_entry*, %struct.test_entry** %9, align 8
  ret %struct.test_entry* %39
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.test_entry* @xmalloc(i32) #1

declare dso_local i32 @st_add4(i32, i64, i64, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
