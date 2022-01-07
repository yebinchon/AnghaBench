; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_array_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_array_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree_array = type { i32, i32* }

@tlsub_ret_ok = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_array_store(%struct.tl_tree_array* %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_tree_array*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tl_tree_array* %0, %struct.tl_tree_array** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %94

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %18 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %19 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %26 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %31 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @gen_field(i32 %36, i8** %40, i32 %43, i32* %44, i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %94

50:                                               ; preds = %29
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %23

57:                                               ; preds = %23
  br label %80

58:                                               ; preds = %17
  %59 = load %struct.tl_tree_array*, %struct.tl_tree_array** %6, align 8
  %60 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @gen_field(i32 %63, i8** %67, i32 %70, i32* %71, i32 0, i32 1)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %94

76:                                               ; preds = %58
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %57
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp sle i32 %83, 10
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %94

86:                                               ; preds = %80
  %87 = load i8*, i8** @tlsub_ret_ok, align 8
  %88 = load i8**, i8*** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  store i8* %87, i8** %92, align 8
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %86, %85, %75, %49, %16
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @gen_field(i32, i8**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
