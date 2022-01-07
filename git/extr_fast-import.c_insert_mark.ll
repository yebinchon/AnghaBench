; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_insert_mark.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_insert_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mark_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.object_entry**, %struct.mark_set** }
%struct.object_entry = type { i32 }

@marks = common dso_local global %struct.mark_set* null, align 8
@fi_mem_pool = common dso_local global i32 0, align 4
@marks_set_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.object_entry*)* @insert_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_mark(i32 %0, %struct.object_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_entry*, align 8
  %5 = alloca %struct.mark_set*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.object_entry* %1, %struct.object_entry** %4, align 8
  %7 = load %struct.mark_set*, %struct.mark_set** @marks, align 8
  store %struct.mark_set* %7, %struct.mark_set** %5, align 8
  br label %8

8:                                                ; preds = %15, %2
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %11 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %9, %12
  %14 = icmp sge i32 %13, 1024
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = call i8* @mem_pool_calloc(i32* @fi_mem_pool, i32 1, i32 24)
  %17 = bitcast i8* %16 to %struct.mark_set*
  store %struct.mark_set* %17, %struct.mark_set** %5, align 8
  %18 = load %struct.mark_set*, %struct.mark_set** @marks, align 8
  %19 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 10
  %22 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %23 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mark_set*, %struct.mark_set** @marks, align 8
  %25 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %26 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.mark_set**, %struct.mark_set*** %27, align 8
  %29 = getelementptr inbounds %struct.mark_set*, %struct.mark_set** %28, i64 0
  store %struct.mark_set* %24, %struct.mark_set** %29, align 8
  %30 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  store %struct.mark_set* %30, %struct.mark_set** @marks, align 8
  br label %8

31:                                               ; preds = %8
  br label %32

32:                                               ; preds = %82, %31
  %33 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %34 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %40 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %38, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %45 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %43, %46
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %51 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.mark_set**, %struct.mark_set*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mark_set*, %struct.mark_set** %53, i64 %55
  %57 = load %struct.mark_set*, %struct.mark_set** %56, align 8
  %58 = icmp ne %struct.mark_set* %57, null
  br i1 %58, label %82, label %59

59:                                               ; preds = %37
  %60 = call i8* @mem_pool_calloc(i32* @fi_mem_pool, i32 1, i32 24)
  %61 = bitcast i8* %60 to %struct.mark_set*
  %62 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %63 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.mark_set**, %struct.mark_set*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mark_set*, %struct.mark_set** %65, i64 %67
  store %struct.mark_set* %61, %struct.mark_set** %68, align 8
  %69 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %70 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 10
  %73 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %74 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.mark_set**, %struct.mark_set*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.mark_set*, %struct.mark_set** %76, i64 %78
  %80 = load %struct.mark_set*, %struct.mark_set** %79, align 8
  %81 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %80, i32 0, i32 0
  store i32 %72, i32* %81, align 8
  br label %82

82:                                               ; preds = %59, %37
  %83 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %84 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load %struct.mark_set**, %struct.mark_set*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mark_set*, %struct.mark_set** %86, i64 %88
  %90 = load %struct.mark_set*, %struct.mark_set** %89, align 8
  store %struct.mark_set* %90, %struct.mark_set** %5, align 8
  br label %32

91:                                               ; preds = %32
  %92 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %93 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.object_entry**, %struct.object_entry*** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %95, i64 %97
  %99 = load %struct.object_entry*, %struct.object_entry** %98, align 8
  %100 = icmp ne %struct.object_entry* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %91
  %102 = load i32, i32* @marks_set_count, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @marks_set_count, align 4
  br label %104

104:                                              ; preds = %101, %91
  %105 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %106 = load %struct.mark_set*, %struct.mark_set** %5, align 8
  %107 = getelementptr inbounds %struct.mark_set, %struct.mark_set* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.object_entry**, %struct.object_entry*** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %109, i64 %111
  store %struct.object_entry* %105, %struct.object_entry** %112, align 8
  ret void
}

declare dso_local i8* @mem_pool_calloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
