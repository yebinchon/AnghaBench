; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_string_list_remove_duplicates.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_string_list_remove_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__*, i64, i32 (i32, i32)* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_list_remove_duplicates(%struct.string_list* %0, i32 %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32)*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.string_list*, %struct.string_list** %3, align 8
  %9 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %104

12:                                               ; preds = %2
  %13 = load %struct.string_list*, %struct.string_list** %3, align 8
  %14 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 3
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = icmp ne i32 (i32, i32)* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.string_list*, %struct.string_list** %3, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 3
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  br label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 (i32, i32)* [ %20, %17 ], [ @strcmp, %21 ]
  store i32 (i32, i32)* %23, i32 (i32, i32)** %7, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %97, %22
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.string_list*, %struct.string_list** %3, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %24
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %32 = load %struct.string_list*, %struct.string_list** %3, align 8
  %33 = getelementptr inbounds %struct.string_list, %struct.string_list* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.string_list*, %struct.string_list** %3, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %31(i32 %40, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %30
  %52 = load %struct.string_list*, %struct.string_list** %3, align 8
  %53 = getelementptr inbounds %struct.string_list, %struct.string_list* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.string_list*, %struct.string_list** %3, align 8
  %58 = getelementptr inbounds %struct.string_list, %struct.string_list* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @free(i32 %64)
  br label %66

66:                                               ; preds = %56, %51
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.string_list*, %struct.string_list** %3, align 8
  %71 = getelementptr inbounds %struct.string_list, %struct.string_list* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @free(i32 %77)
  br label %79

79:                                               ; preds = %69, %66
  br label %96

80:                                               ; preds = %30
  %81 = load %struct.string_list*, %struct.string_list** %3, align 8
  %82 = getelementptr inbounds %struct.string_list, %struct.string_list* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %86
  %88 = load %struct.string_list*, %struct.string_list** %3, align 8
  %89 = getelementptr inbounds %struct.string_list, %struct.string_list* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = bitcast %struct.TYPE_2__* %87 to i8*
  %95 = bitcast %struct.TYPE_2__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 8, i1 false)
  br label %96

96:                                               ; preds = %80, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %24

100:                                              ; preds = %24
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.string_list*, %struct.string_list** %3, align 8
  %103 = getelementptr inbounds %struct.string_list, %struct.string_list* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %2
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
