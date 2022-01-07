; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-break.c_diffcore_merge_broken.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-break.c_diffcore_merge_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diffcore_merge_broken() #0 {
  %1 = alloca %struct.diff_queue_struct*, align 8
  %2 = alloca %struct.diff_queue_struct, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff_filepair*, align 8
  %6 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %1, align 8
  %7 = call i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct* %2)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %113, %0
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %11 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %116

14:                                               ; preds = %8
  %15 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %16 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %15, i32 0, i32 1
  %17 = load %struct.diff_filepair**, %struct.diff_filepair*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %17, i64 %19
  %21 = load %struct.diff_filepair*, %struct.diff_filepair** %20, align 8
  store %struct.diff_filepair* %21, %struct.diff_filepair** %5, align 8
  %22 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %23 = icmp ne %struct.diff_filepair* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %113

25:                                               ; preds = %14
  %26 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %27 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %25
  %31 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %32 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %37 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i32 %35, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %107, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %101, %43
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %49 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %46
  %53 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %54 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %53, i32 0, i32 1
  %55 = load %struct.diff_filepair**, %struct.diff_filepair*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %55, i64 %57
  %59 = load %struct.diff_filepair*, %struct.diff_filepair** %58, align 8
  store %struct.diff_filepair* %59, %struct.diff_filepair** %6, align 8
  %60 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %61 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %52
  %65 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %66 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %71 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcmp(i32 %69, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %64
  %78 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %79 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %84 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @strcmp(i32 %82, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %77
  %91 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %92 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %93 = call i32 @merge_broken(%struct.diff_filepair* %91, %struct.diff_filepair* %92, %struct.diff_queue_struct* %2)
  %94 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %95 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %94, i32 0, i32 1
  %96 = load %struct.diff_filepair**, %struct.diff_filepair*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %96, i64 %98
  store %struct.diff_filepair* null, %struct.diff_filepair** %99, align 8
  br label %112

100:                                              ; preds = %77, %64, %52
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %46

104:                                              ; preds = %46
  %105 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %106 = call i32 @diff_q(%struct.diff_queue_struct* %2, %struct.diff_filepair* %105)
  br label %110

107:                                              ; preds = %30, %25
  %108 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %109 = call i32 @diff_q(%struct.diff_queue_struct* %2, %struct.diff_filepair* %108)
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111, %90
  br label %113

113:                                              ; preds = %112, %24
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %8

116:                                              ; preds = %8
  %117 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %118 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %117, i32 0, i32 1
  %119 = load %struct.diff_filepair**, %struct.diff_filepair*** %118, align 8
  %120 = call i32 @free(%struct.diff_filepair** %119)
  %121 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %1, align 8
  %122 = bitcast %struct.diff_queue_struct* %121 to i8*
  %123 = bitcast %struct.diff_queue_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  ret void
}

declare dso_local i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @merge_broken(%struct.diff_filepair*, %struct.diff_filepair*, %struct.diff_queue_struct*) #1

declare dso_local i32 @diff_q(%struct.diff_queue_struct*, %struct.diff_filepair*) #1

declare dso_local i32 @free(%struct.diff_filepair**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
