; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type opaque
%struct.tl_tree_array = type { i32, %struct.TYPE_3__, %struct.TYPE_4__**, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@total_ref_cnt = common dso_local global i32 0, align 4
@persistent_tree_nodes = common dso_local global i32 0, align 4
@total_tree_nodes_existed = common dso_local global i32 0, align 4
@tl_parray_methods = common dso_local global i32 0, align 4
@schema_version = common dso_local global i32 0, align 4
@FLAG_NOVAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_tree* @read_array(i32* %0) #0 {
  %2 = alloca %struct.tl_tree*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tl_tree_array*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call i8* @zzmalloc0(i32 40)
  %7 = bitcast i8* %6 to %struct.tl_tree_array*
  store %struct.tl_tree_array* %7, %struct.tl_tree_array** %4, align 8
  %8 = call i32 @ADD_PMALLOC(i32 40)
  %9 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %10 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @total_ref_cnt, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @total_ref_cnt, align 4
  %14 = load i32, i32* @persistent_tree_nodes, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @persistent_tree_nodes, align 4
  %16 = load i32, i32* @total_tree_nodes_existed, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @total_tree_nodes_existed, align 4
  %18 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %19 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32* @tl_parray_methods, i32** %20, align 8
  %21 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %22 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @schema_version, align 4
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @read_nat_expr(i32* %27)
  %29 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %30 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  br label %36

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @read_tree(i32* %32)
  %34 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %35 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %38 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %129

42:                                               ; preds = %36
  %43 = call i32 (...) @tl_parse_int()
  %44 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %45 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %47 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %52 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 1000
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = call i64 (...) @tl_parse_error()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %50, %42
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %129

59:                                               ; preds = %55
  %60 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %61 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call i8* @zzmalloc0(i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_4__**
  %68 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %69 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %68, i32 0, i32 2
  store %struct.TYPE_4__** %67, %struct.TYPE_4__*** %69, align 8
  %70 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %71 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 8, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @ADD_PMALLOC(i32 %75)
  %77 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %78 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %81 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = call i64 @read_args_list(%struct.TYPE_4__** %79, i32 %82, i32* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %129

87:                                               ; preds = %59
  %88 = load i32, i32* @FLAG_NOVAR, align 4
  %89 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %90 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %122, %87
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %97 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %102 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %103, i64 %105
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @FLAG_NOVAR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %100
  %114 = load i32, i32* @FLAG_NOVAR, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %117 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %115
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113, %100
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %94

125:                                              ; preds = %94
  %126 = load %struct.tl_tree_array*, %struct.tl_tree_array** %4, align 8
  %127 = bitcast %struct.tl_tree_array* %126 to i8*
  %128 = bitcast i8* %127 to %struct.tl_tree*
  store %struct.tl_tree* %128, %struct.tl_tree** %2, align 8
  br label %129

129:                                              ; preds = %125, %86, %58, %41
  %130 = load %struct.tl_tree*, %struct.tl_tree** %2, align 8
  ret %struct.tl_tree* %130
}

declare dso_local i8* @zzmalloc0(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local i32 @read_nat_expr(i32*) #1

declare dso_local i32 @read_tree(i32*) #1

declare dso_local i32 @tl_parse_int(...) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i64 @read_args_list(%struct.TYPE_4__**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
