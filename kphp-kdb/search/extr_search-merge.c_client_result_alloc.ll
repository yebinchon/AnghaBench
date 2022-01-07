; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_result_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_result_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_entry = type { i32, i32, %struct.gather_chunk*, %struct.gather_chunk* }
%struct.gather_chunk = type { i64, %struct.gather_chunk* }

@CHUNK_INTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gather_entry*, i8**)* @client_result_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_result_alloc(i32 %0, %struct.gather_entry* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gather_entry*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gather_chunk*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.gather_entry* %1, %struct.gather_entry** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %12 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %19 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %17, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8**, i8*** %7, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %29 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %88

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 4
  %36 = load i32, i32* @CHUNK_INTS, align 4
  %37 = mul nsw i32 4, %36
  %38 = srem i32 %35, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %43 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %42, i32 0, i32 2
  %44 = load %struct.gather_chunk*, %struct.gather_chunk** %43, align 8
  %45 = getelementptr inbounds %struct.gather_chunk, %struct.gather_chunk* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @CHUNK_INTS, align 4
  %53 = mul nsw i32 4, %52
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %4, align 4
  br label %88

56:                                               ; preds = %33
  %57 = load i32, i32* %5, align 4
  %58 = call %struct.gather_chunk* @nbr_alloc(i32 %57, i32 16)
  store %struct.gather_chunk* %58, %struct.gather_chunk** %10, align 8
  %59 = load %struct.gather_chunk*, %struct.gather_chunk** %10, align 8
  %60 = getelementptr inbounds %struct.gather_chunk, %struct.gather_chunk* %59, i32 0, i32 1
  store %struct.gather_chunk* null, %struct.gather_chunk** %60, align 8
  %61 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %62 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %61, i32 0, i32 3
  %63 = load %struct.gather_chunk*, %struct.gather_chunk** %62, align 8
  %64 = icmp ne %struct.gather_chunk* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.gather_chunk*, %struct.gather_chunk** %10, align 8
  %67 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %68 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %67, i32 0, i32 2
  store %struct.gather_chunk* %66, %struct.gather_chunk** %68, align 8
  %69 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %70 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %69, i32 0, i32 3
  store %struct.gather_chunk* %66, %struct.gather_chunk** %70, align 8
  br label %80

71:                                               ; preds = %56
  %72 = load %struct.gather_chunk*, %struct.gather_chunk** %10, align 8
  %73 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %74 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %73, i32 0, i32 2
  %75 = load %struct.gather_chunk*, %struct.gather_chunk** %74, align 8
  %76 = getelementptr inbounds %struct.gather_chunk, %struct.gather_chunk* %75, i32 0, i32 1
  store %struct.gather_chunk* %72, %struct.gather_chunk** %76, align 8
  %77 = load %struct.gather_chunk*, %struct.gather_chunk** %10, align 8
  %78 = load %struct.gather_entry*, %struct.gather_entry** %6, align 8
  %79 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %78, i32 0, i32 2
  store %struct.gather_chunk* %77, %struct.gather_chunk** %79, align 8
  br label %80

80:                                               ; preds = %71, %65
  %81 = load %struct.gather_chunk*, %struct.gather_chunk** %10, align 8
  %82 = getelementptr inbounds %struct.gather_chunk, %struct.gather_chunk* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load i8**, i8*** %7, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @CHUNK_INTS, align 4
  %87 = mul nsw i32 4, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %41, %32
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.gather_chunk* @nbr_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
