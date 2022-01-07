; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_heap-inl.h_heap_node_swap.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_heap-inl.h_heap_node_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap = type { %struct.heap_node* }
%struct.heap_node = type { %struct.heap_node*, %struct.heap_node*, %struct.heap_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.heap*, %struct.heap_node*, %struct.heap_node*)* @heap_node_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_node_swap(%struct.heap* %0, %struct.heap_node* %1, %struct.heap_node* %2) #0 {
  %4 = alloca %struct.heap*, align 8
  %5 = alloca %struct.heap_node*, align 8
  %6 = alloca %struct.heap_node*, align 8
  %7 = alloca %struct.heap_node*, align 8
  %8 = alloca %struct.heap_node, align 8
  store %struct.heap* %0, %struct.heap** %4, align 8
  store %struct.heap_node* %1, %struct.heap_node** %5, align 8
  store %struct.heap_node* %2, %struct.heap_node** %6, align 8
  %9 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %10 = bitcast %struct.heap_node* %8 to i8*
  %11 = bitcast %struct.heap_node* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %13 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %14 = bitcast %struct.heap_node* %12 to i8*
  %15 = bitcast %struct.heap_node* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %17 = bitcast %struct.heap_node* %16 to i8*
  %18 = bitcast %struct.heap_node* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %20 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %21 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %20, i32 0, i32 1
  store %struct.heap_node* %19, %struct.heap_node** %21, align 8
  %22 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %23 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %22, i32 0, i32 2
  %24 = load %struct.heap_node*, %struct.heap_node** %23, align 8
  %25 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %26 = icmp eq %struct.heap_node* %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %29 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %30 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %29, i32 0, i32 2
  store %struct.heap_node* %28, %struct.heap_node** %30, align 8
  %31 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %32 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %31, i32 0, i32 0
  %33 = load %struct.heap_node*, %struct.heap_node** %32, align 8
  store %struct.heap_node* %33, %struct.heap_node** %7, align 8
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %36 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %37 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %36, i32 0, i32 0
  store %struct.heap_node* %35, %struct.heap_node** %37, align 8
  %38 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %39 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %38, i32 0, i32 2
  %40 = load %struct.heap_node*, %struct.heap_node** %39, align 8
  store %struct.heap_node* %40, %struct.heap_node** %7, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.heap_node*, %struct.heap_node** %7, align 8
  %43 = icmp ne %struct.heap_node* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %46 = load %struct.heap_node*, %struct.heap_node** %7, align 8
  %47 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %46, i32 0, i32 1
  store %struct.heap_node* %45, %struct.heap_node** %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %50 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %49, i32 0, i32 2
  %51 = load %struct.heap_node*, %struct.heap_node** %50, align 8
  %52 = icmp ne %struct.heap_node* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %55 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %56 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %55, i32 0, i32 2
  %57 = load %struct.heap_node*, %struct.heap_node** %56, align 8
  %58 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %57, i32 0, i32 1
  store %struct.heap_node* %54, %struct.heap_node** %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %61 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %60, i32 0, i32 0
  %62 = load %struct.heap_node*, %struct.heap_node** %61, align 8
  %63 = icmp ne %struct.heap_node* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %66 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %67 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %66, i32 0, i32 0
  %68 = load %struct.heap_node*, %struct.heap_node** %67, align 8
  %69 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %68, i32 0, i32 1
  store %struct.heap_node* %65, %struct.heap_node** %69, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %72 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %71, i32 0, i32 1
  %73 = load %struct.heap_node*, %struct.heap_node** %72, align 8
  %74 = icmp eq %struct.heap_node* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %77 = load %struct.heap*, %struct.heap** %4, align 8
  %78 = getelementptr inbounds %struct.heap, %struct.heap* %77, i32 0, i32 0
  store %struct.heap_node* %76, %struct.heap_node** %78, align 8
  br label %100

79:                                               ; preds = %70
  %80 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %81 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %80, i32 0, i32 1
  %82 = load %struct.heap_node*, %struct.heap_node** %81, align 8
  %83 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %82, i32 0, i32 2
  %84 = load %struct.heap_node*, %struct.heap_node** %83, align 8
  %85 = load %struct.heap_node*, %struct.heap_node** %5, align 8
  %86 = icmp eq %struct.heap_node* %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %89 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %90 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %89, i32 0, i32 1
  %91 = load %struct.heap_node*, %struct.heap_node** %90, align 8
  %92 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %91, i32 0, i32 2
  store %struct.heap_node* %88, %struct.heap_node** %92, align 8
  br label %99

93:                                               ; preds = %79
  %94 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %95 = load %struct.heap_node*, %struct.heap_node** %6, align 8
  %96 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %95, i32 0, i32 1
  %97 = load %struct.heap_node*, %struct.heap_node** %96, align 8
  %98 = getelementptr inbounds %struct.heap_node, %struct.heap_node* %97, i32 0, i32 0
  store %struct.heap_node* %94, %struct.heap_node** %98, align 8
  br label %99

99:                                               ; preds = %93, %87
  br label %100

100:                                              ; preds = %99, %75
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
