; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlsub_create_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlsub_create_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_type = type { i32, i8**, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i64, i32* }

@dynamic_tree_nodes = common dso_local global i32 0, align 4
@total_tree_nodes_existed = common dso_local global i32 0, align 4
@total_ref_cnt = common dso_local global i32 0, align 4
@tl_type_methods = common dso_local global i32 0, align 4
@TLUNI_NEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlsub_create_type(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca %struct.tl_tree_type*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %12 = call i8* @zzemalloc(i32 48)
  %13 = bitcast i8* %12 to %struct.tl_tree_type*
  store %struct.tl_tree_type* %13, %struct.tl_tree_type** %10, align 8
  %14 = load i32, i32* @dynamic_tree_nodes, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @dynamic_tree_nodes, align 4
  %16 = load i32, i32* @total_tree_nodes_existed, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @total_tree_nodes_existed, align 4
  %18 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %19 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @total_ref_cnt, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @total_ref_cnt, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %6, align 8
  %25 = load i8*, i8** %23, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %28 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 %26, i64* %29, align 8
  %30 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %31 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32* @tl_type_methods, i32** %32, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %6, align 8
  %35 = load i8*, i8** %33, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_4__*
  %37 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %38 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %37, i32 0, i32 2
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %40 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %45 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %47 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i8* @zzemalloc(i32 %51)
  %53 = bitcast i8* %52 to i8**
  %54 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %55 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %54, i32 0, i32 1
  store i8** %53, i8*** %55, align 8
  %56 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %57 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %73, %4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i8**, i8*** %7, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 -1
  store i8** %65, i8*** %7, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %68 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %11, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load %struct.tl_tree_type*, %struct.tl_tree_type** %10, align 8
  %78 = bitcast %struct.tl_tree_type* %77 to i8*
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %7, align 8
  store i8* %78, i8** %79, align 8
  %81 = load i32, i32* @TLUNI_NEXT, align 4
  %82 = load i8*, i8** %5, align 8
  ret i8* %82
}

declare dso_local i8* @zzemalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
