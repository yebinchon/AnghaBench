; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_pickaxe.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_pickaxe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32 }
%struct.diff_options = type { i32 }

@DIFF_PICKAXE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_queue_struct*, %struct.diff_options*, i32*, i32, i32)* @pickaxe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pickaxe(%struct.diff_queue_struct* %0, %struct.diff_options* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.diff_queue_struct*, align 8
  %7 = alloca %struct.diff_options*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.diff_queue_struct, align 8
  %13 = alloca %struct.diff_filepair*, align 8
  %14 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %6, align 8
  store %struct.diff_options* %1, %struct.diff_options** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = call i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct* %12)
  %16 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %17 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DIFF_PICKAXE_ALL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %26 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %31 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %30, i32 0, i32 1
  %32 = load %struct.diff_filepair**, %struct.diff_filepair*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %32, i64 %34
  %36 = load %struct.diff_filepair*, %struct.diff_filepair** %35, align 8
  store %struct.diff_filepair* %36, %struct.diff_filepair** %13, align 8
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %13, align 8
  %38 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @pickaxe_match(%struct.diff_filepair* %37, %struct.diff_options* %38, i32* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %110

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %23

49:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %53 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %58 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %57, i32 0, i32 1
  %59 = load %struct.diff_filepair**, %struct.diff_filepair*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %59, i64 %61
  %63 = load %struct.diff_filepair*, %struct.diff_filepair** %62, align 8
  %64 = call i32 @diff_free_filepair(%struct.diff_filepair* %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %50

68:                                               ; preds = %50
  br label %102

69:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %98, %69
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %73 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %78 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %77, i32 0, i32 1
  %79 = load %struct.diff_filepair**, %struct.diff_filepair*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %79, i64 %81
  %83 = load %struct.diff_filepair*, %struct.diff_filepair** %82, align 8
  store %struct.diff_filepair* %83, %struct.diff_filepair** %14, align 8
  %84 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %85 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @pickaxe_match(%struct.diff_filepair* %84, %struct.diff_options* %85, i32* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %93 = call i32 @diff_q(%struct.diff_queue_struct* %12, %struct.diff_filepair* %92)
  br label %97

94:                                               ; preds = %76
  %95 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %96 = call i32 @diff_free_filepair(%struct.diff_filepair* %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %70

101:                                              ; preds = %70
  br label %102

102:                                              ; preds = %101, %68
  %103 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %104 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %103, i32 0, i32 1
  %105 = load %struct.diff_filepair**, %struct.diff_filepair*** %104, align 8
  %106 = call i32 @free(%struct.diff_filepair** %105)
  %107 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %108 = bitcast %struct.diff_queue_struct* %107 to i8*
  %109 = bitcast %struct.diff_queue_struct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  br label %110

110:                                              ; preds = %102, %44
  ret void
}

declare dso_local i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct*) #1

declare dso_local i64 @pickaxe_match(%struct.diff_filepair*, %struct.diff_options*, i32*, i32, i32) #1

declare dso_local i32 @diff_free_filepair(%struct.diff_filepair*) #1

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
