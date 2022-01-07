; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_var_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_store_var_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_type = type { i32 }
%struct.tl_tree_type = type { i64, %struct.tl_type*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@dynamic_tree_nodes = common dso_local global i32 0, align 4
@total_tree_nodes_existed = common dso_local global i32 0, align 4
@total_ref_cnt = common dso_local global i32 0, align 4
@tl_type_methods = common dso_local global i32 0, align 4
@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_store_var_type(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tl_type*, align 8
  %15 = alloca %struct.tl_tree_type*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %6, align 8
  %18 = load i8*, i8** %16, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %6, align 8
  %23 = load i8*, i8** %21, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32**, i32*** %8, align 8
  %27 = call i8* @parse_zend_string(i32** %26, i32* %12)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %88

31:                                               ; preds = %4
  %32 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %32, i64 %34
  %36 = load %struct.tl_tree*, %struct.tl_tree** %35, align 8
  %37 = icmp ne %struct.tl_tree* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %39, i64 %41
  %43 = load %struct.tl_tree*, %struct.tl_tree** %42, align 8
  %44 = call i32 @DEC_REF(%struct.tl_tree* %43)
  %45 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %45, i64 %47
  store %struct.tl_tree* null, %struct.tl_tree** %48, align 8
  br label %49

49:                                               ; preds = %38, %31
  %50 = load i8*, i8** %13, align 8
  %51 = call %struct.tl_type* @tl_type_get_by_id(i8* %50)
  store %struct.tl_type* %51, %struct.tl_type** %14, align 8
  %52 = load %struct.tl_type*, %struct.tl_type** %14, align 8
  %53 = icmp ne %struct.tl_type* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i8* null, i8** %5, align 8
  br label %88

55:                                               ; preds = %49
  %56 = call %struct.tl_tree_type* @zzemalloc(i32 40)
  store %struct.tl_tree_type* %56, %struct.tl_tree_type** %15, align 8
  %57 = load i32, i32* @dynamic_tree_nodes, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @dynamic_tree_nodes, align 4
  %59 = load i32, i32* @total_tree_nodes_existed, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @total_tree_nodes_existed, align 4
  %61 = load %struct.tl_tree_type*, %struct.tl_tree_type** %15, align 8
  %62 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* @total_ref_cnt, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @total_ref_cnt, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.tl_tree_type*, %struct.tl_tree_type** %15, align 8
  %68 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.tl_tree_type*, %struct.tl_tree_type** %15, align 8
  %71 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32* @tl_type_methods, i32** %72, align 8
  %73 = load %struct.tl_tree_type*, %struct.tl_tree_type** %15, align 8
  %74 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.tl_type*, %struct.tl_type** %14, align 8
  %76 = load %struct.tl_tree_type*, %struct.tl_tree_type** %15, align 8
  %77 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %76, i32 0, i32 1
  store %struct.tl_type* %75, %struct.tl_type** %77, align 8
  %78 = load %struct.tl_tree_type*, %struct.tl_tree_type** %15, align 8
  %79 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.tl_tree_type*, %struct.tl_tree_type** %15, align 8
  %81 = bitcast %struct.tl_tree_type* %80 to i8*
  %82 = bitcast i8* %81 to %struct.tl_tree*
  %83 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %83, i64 %85
  store %struct.tl_tree* %82, %struct.tl_tree** %86, align 8
  %87 = load i32, i32* @TLUNI_NEXT, align 4
  br label %88

88:                                               ; preds = %55, %54, %30
  %89 = load i8*, i8** %5, align 8
  ret i8* %89
}

declare dso_local i8* @parse_zend_string(i32**, i32*) #1

declare dso_local i32 @DEC_REF(%struct.tl_tree*) #1

declare dso_local %struct.tl_type* @tl_type_get_by_id(i8*) #1

declare dso_local %struct.tl_tree_type* @zzemalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
