; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_check_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tluni_check_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_array = type { i64, i32, i32* }
%struct.TYPE_2__ = type { i64 (i8*)* }

@NODE_TYPE_ARRAY = common dso_local global i64 0, align 8
@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tluni_check_array(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
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
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 -1
  store i8** %13, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.tl_tree_array*
  store %struct.tl_tree_array* %15, %struct.tl_tree_array** %10, align 8
  %16 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %17 = call %struct.TYPE_2__* @TL_TREE_METHODS(%struct.tl_tree_array* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (i8*)*, i64 (i8*)** %18, align 8
  %20 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %21 = bitcast %struct.tl_tree_array* %20 to i8*
  %22 = call i64 %19(i8* %21)
  %23 = load i64, i64* @NODE_TYPE_ARRAY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %69

26:                                               ; preds = %4
  %27 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %28 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %6, align 8
  %32 = load i8*, i8** %30, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i8* null, i8** %5, align 8
  br label %69

36:                                               ; preds = %26
  %37 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %38 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %57, %36
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %47 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8**, i8*** %7, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.tl_tree_array*, %struct.tl_tree_array** %10, align 8
  %62 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %68 = load i32, i32* @TLUNI_NEXT, align 4
  br label %69

69:                                               ; preds = %60, %35, %25
  %70 = load i8*, i8** %5, align 8
  ret i8* %70
}

declare dso_local %struct.TYPE_2__* @TL_TREE_METHODS(%struct.tl_tree_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
