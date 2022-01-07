; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_module_emit_plt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_module_emit_plt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.plt_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @module_emit_plt_entry(%struct.module* %0, %struct.TYPE_10__* %1, i8* %2, %struct.TYPE_11__* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.mod_plt_sec*, align 8
  %13 = alloca %struct.plt_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.plt_entry, align 4
  store %struct.module* %0, %struct.module** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %18 = load %struct.module*, %struct.module** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @in_init(%struct.module* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load %struct.module*, %struct.module** %7, align 8
  %24 = getelementptr inbounds %struct.module, %struct.module* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  br label %30

26:                                               ; preds = %5
  %27 = load %struct.module*, %struct.module** %7, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi %struct.mod_plt_sec* [ %25, %22 ], [ %29, %26 ]
  store %struct.mod_plt_sec* %31, %struct.mod_plt_sec** %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = load %struct.mod_plt_sec*, %struct.mod_plt_sec** %12, align 8
  %34 = getelementptr inbounds %struct.mod_plt_sec, %struct.mod_plt_sec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.plt_entry*
  store %struct.plt_entry* %39, %struct.plt_entry** %13, align 8
  %40 = load %struct.mod_plt_sec*, %struct.mod_plt_sec** %12, align 8
  %41 = getelementptr inbounds %struct.mod_plt_sec, %struct.mod_plt_sec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* %16, align 8
  %52 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %52, i64 %54
  %56 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %55, i32 0, i32 0
  %57 = call i64 @is_forbidden_offset_for_adrp(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %30
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %59, %30
  %63 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %63, i64 %65
  %67 = load i64, i64* %16, align 8
  %68 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %68, i64 %70
  %72 = call i32 @get_plt_entry(i64 %67, %struct.plt_entry* %71)
  %73 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %17, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = bitcast %struct.plt_entry* %66 to i8*
  %75 = bitcast %struct.plt_entry* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  %76 = load i32, i32* %15, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %62
  %79 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %79, i64 %81
  %83 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %83, i64 %85
  %87 = call i64 @plt_entries_equal(%struct.plt_entry* %82, %struct.plt_entry* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %90, i64 %92
  %94 = ptrtoint %struct.plt_entry* %93 to i64
  store i64 %94, i64* %6, align 8
  br label %120

95:                                               ; preds = %78, %62
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load %struct.mod_plt_sec*, %struct.mod_plt_sec** %12, align 8
  %100 = getelementptr inbounds %struct.mod_plt_sec, %struct.mod_plt_sec* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.mod_plt_sec*, %struct.mod_plt_sec** %12, align 8
  %104 = getelementptr inbounds %struct.mod_plt_sec, %struct.mod_plt_sec* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mod_plt_sec*, %struct.mod_plt_sec** %12, align 8
  %107 = getelementptr inbounds %struct.mod_plt_sec, %struct.mod_plt_sec* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %105, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @WARN_ON(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  store i64 0, i64* %6, align 8
  br label %120

114:                                              ; preds = %95
  %115 = load %struct.plt_entry*, %struct.plt_entry** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %115, i64 %117
  %119 = ptrtoint %struct.plt_entry* %118 to i64
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %114, %113, %89
  %121 = load i64, i64* %6, align 8
  ret i64 %121
}

declare dso_local i32 @in_init(%struct.module*, i8*) #1

declare dso_local i64 @is_forbidden_offset_for_adrp(i32*) #1

declare dso_local i32 @get_plt_entry(i64, %struct.plt_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @plt_entries_equal(%struct.plt_entry*, %struct.plt_entry*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
