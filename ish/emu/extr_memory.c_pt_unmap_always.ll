; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_unmap_always.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_pt_unmap_always.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32 }
%struct.pt_entry = type { %struct.data* }
%struct.data = type { i64, i64, i32*, i32 }

@vdso_data = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"munmap(%p, %lu) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_unmap_always(%struct.mem* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_entry*, align 8
  %9 = alloca %struct.data*, align 8
  %10 = alloca i32, align 4
  store %struct.mem* %0, %struct.mem** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %78, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %14, %15
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %12
  %19 = load %struct.mem*, %struct.mem** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.pt_entry* @mem_pt(%struct.mem* %19, i64 %20)
  store %struct.pt_entry* %21, %struct.pt_entry** %8, align 8
  %22 = load %struct.pt_entry*, %struct.pt_entry** %8, align 8
  %23 = icmp eq %struct.pt_entry* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %78

25:                                               ; preds = %18
  %26 = load %struct.pt_entry*, %struct.pt_entry** %8, align 8
  %27 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %26, i32 0, i32 0
  %28 = load %struct.data*, %struct.data** %27, align 8
  store %struct.data* %28, %struct.data** %9, align 8
  %29 = load %struct.mem*, %struct.mem** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @mem_pt_del(%struct.mem* %29, i64 %30)
  %32 = load %struct.data*, %struct.data** %9, align 8
  %33 = getelementptr inbounds %struct.data, %struct.data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %25
  %38 = load %struct.data*, %struct.data** %9, align 8
  %39 = getelementptr inbounds %struct.data, %struct.data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @vdso_data, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.data*, %struct.data** %9, align 8
  %45 = getelementptr inbounds %struct.data, %struct.data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.data*, %struct.data** %9, align 8
  %48 = getelementptr inbounds %struct.data, %struct.data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @munmap(i64 %46, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.data*, %struct.data** %9, align 8
  %55 = getelementptr inbounds %struct.data, %struct.data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.data*, %struct.data** %9, align 8
  %58 = getelementptr inbounds %struct.data, %struct.data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %53, %43
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.data*, %struct.data** %9, align 8
  %66 = getelementptr inbounds %struct.data, %struct.data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.data*, %struct.data** %9, align 8
  %71 = getelementptr inbounds %struct.data, %struct.data* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @fd_close(i32* %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.data*, %struct.data** %9, align 8
  %76 = call i32 @free(%struct.data* %75)
  br label %77

77:                                               ; preds = %74, %25
  br label %78

78:                                               ; preds = %77, %24
  %79 = load %struct.mem*, %struct.mem** %4, align 8
  %80 = call i32 @mem_next_page(%struct.mem* %79, i64* %7)
  br label %12

81:                                               ; preds = %12
  %82 = load %struct.mem*, %struct.mem** %4, align 8
  %83 = call i32 @mem_changed(%struct.mem* %82)
  ret i32 0
}

declare dso_local %struct.pt_entry* @mem_pt(%struct.mem*, i64) #1

declare dso_local i32 @mem_pt_del(%struct.mem*, i64) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @die(i8*, i64, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fd_close(i32*) #1

declare dso_local i32 @free(%struct.data*) #1

declare dso_local i32 @mem_next_page(%struct.mem*, i64*) #1

declare dso_local i32 @mem_changed(%struct.mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
