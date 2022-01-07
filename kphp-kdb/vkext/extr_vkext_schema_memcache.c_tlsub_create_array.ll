; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlsub_create_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlsub_create_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_array = type { i64, i8*, %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i64, i32* }

@dynamic_tree_nodes = common dso_local global i32 0, align 4
@total_tree_nodes_existed = common dso_local global i32 0, align 4
@tl_array_methods = common dso_local global i32 0, align 4
@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlsub_create_array(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca %struct.tl_tree_array*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %12 = call i8* @zzemalloc(i32 48)
  %13 = bitcast i8* %12 to %struct.tl_tree_array*
  store %struct.tl_tree_array* %13, %struct.tl_tree_array** %10, align 8
  %14 = load i32, i32* @dynamic_tree_nodes, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @dynamic_tree_nodes, align 4
  %16 = load i32, i32* @total_tree_nodes_existed, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @total_tree_nodes_existed, align 4
  %18 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %19 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %6, align 8
  %23 = load i8*, i8** %21, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %26 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %29 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32* @tl_array_methods, i32** %30, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %6, align 8
  %33 = load i8*, i8** %31, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %36 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %38 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @zzemalloc(i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_4__**
  %44 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %45 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %44, i32 0, i32 2
  store %struct.TYPE_4__** %43, %struct.TYPE_4__*** %45, align 8
  %46 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %47 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %86, %4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %51
  %55 = call i8* @zzemalloc(i32 16)
  %56 = bitcast i8* %55 to %struct.TYPE_4__*
  %57 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %58 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 %61
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %62, align 8
  %63 = load i8**, i8*** %6, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %6, align 8
  %65 = load i8*, i8** %63, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %68 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %66, i32* %74, align 8
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 -1
  store i8** %76, i8*** %7, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %79 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %77, i8** %85, align 8
  br label %86

86:                                               ; preds = %54
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %11, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load i8**, i8*** %7, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 -1
  store i8** %91, i8*** %7, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %94 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %96 = bitcast %struct.tl_tree_array* %95 to i8*
  %97 = load i8**, i8*** %7, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %7, align 8
  store i8* %96, i8** %97, align 8
  %99 = load i32, i32* @TLUNI_NEXT, align 4
  %100 = load i8*, i8** %5, align 8
  ret i8* %100
}

declare dso_local i8* @zzemalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
