; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_ptr.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_memory.c_mem_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i32 }
%struct.pt_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@MEM_PAGES = common dso_local global i64 0, align 8
@P_GROWSDOWN = common dso_local global i32 0, align 4
@P_WRITE = common dso_local global i32 0, align 4
@MEM_WRITE = common dso_local global i32 0, align 4
@P_COW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mem_ptr(%struct.mem* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.pt_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.mem* %0, %struct.mem** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @PAGE(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.mem*, %struct.mem** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call %struct.pt_entry* @mem_pt(%struct.mem* %15, i64 %16)
  store %struct.pt_entry* %17, %struct.pt_entry** %9, align 8
  %18 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %19 = icmp eq %struct.pt_entry* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %34, %20
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @MEM_PAGES, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.mem*, %struct.mem** %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call %struct.pt_entry* @mem_pt(%struct.mem* %28, i64 %29)
  %31 = icmp eq %struct.pt_entry* %30, null
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %23

37:                                               ; preds = %32
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @MEM_PAGES, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %137

42:                                               ; preds = %37
  %43 = load %struct.mem*, %struct.mem** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call %struct.pt_entry* @mem_pt(%struct.mem* %43, i64 %44)
  %46 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @P_GROWSDOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i8* null, i8** %4, align 8
  br label %137

52:                                               ; preds = %42
  %53 = load %struct.mem*, %struct.mem** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @P_WRITE, align 4
  %56 = load i32, i32* @P_GROWSDOWN, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @pt_map_nothing(%struct.mem* %53, i64 %54, i32 1, i32 %57)
  %59 = load %struct.mem*, %struct.mem** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call %struct.pt_entry* @mem_pt(%struct.mem* %59, i64 %60)
  store %struct.pt_entry* %61, %struct.pt_entry** %9, align 8
  br label %62

62:                                               ; preds = %52, %3
  %63 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %64 = icmp ne %struct.pt_entry* %63, null
  br i1 %64, label %65, label %118

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MEM_WRITE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %71 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @P_WRITE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i8* null, i8** %4, align 8
  br label %137

77:                                               ; preds = %69
  %78 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %79 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @P_COW, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %77
  %85 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %86 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %91 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  store i8* %94, i8** %11, align 8
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load i32, i32* @PROT_READ, align 4
  %97 = load i32, i32* @PROT_WRITE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @MAP_PRIVATE, align 4
  %100 = load i32, i32* @MAP_ANONYMOUS, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @mmap(i32* null, i32 %95, i32 %98, i32 %101, i32 0, i32 0)
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = call i32 @memcpy(i8* %103, i8* %104, i32 %105)
  %107 = load %struct.mem*, %struct.mem** %5, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %111 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @P_COW, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = call i32 @pt_map(%struct.mem* %107, i64 %108, i32 1, i8* %109, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %84, %77
  br label %118

118:                                              ; preds = %117, %65, %62
  %119 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %120 = icmp eq %struct.pt_entry* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i8* null, i8** %4, align 8
  br label %137

122:                                              ; preds = %118
  %123 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %124 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.pt_entry*, %struct.pt_entry** %9, align 8
  %129 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %127, i64 %131
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @PGOFFSET(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = getelementptr i8, i8* %132, i64 %135
  store i8* %136, i8** %4, align 8
  br label %137

137:                                              ; preds = %122, %121, %76, %51, %41
  %138 = load i8*, i8** %4, align 8
  ret i8* %138
}

declare dso_local i64 @PAGE(i32) #1

declare dso_local %struct.pt_entry* @mem_pt(%struct.mem*, i64) #1

declare dso_local i32 @pt_map_nothing(%struct.mem*, i64, i32, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pt_map(%struct.mem*, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @PGOFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
