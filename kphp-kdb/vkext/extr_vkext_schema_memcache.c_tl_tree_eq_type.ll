; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_eq_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_tree_eq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_type = type { i64, i32, %struct.tl_tree**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 (i8*)*, i32 (%struct.tl_tree*, %struct.tl_tree*)* }

@NODE_TYPE_TYPE = common dso_local global i64 0, align 8
@FLAGS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_tree_eq_type(%struct.tl_tree* %0, %struct.tl_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_tree*, align 8
  %5 = alloca %struct.tl_tree*, align 8
  %6 = alloca %struct.tl_tree_type*, align 8
  %7 = alloca %struct.tl_tree_type*, align 8
  %8 = alloca i32, align 4
  store %struct.tl_tree* %0, %struct.tl_tree** %4, align 8
  store %struct.tl_tree* %1, %struct.tl_tree** %5, align 8
  %9 = load %struct.tl_tree*, %struct.tl_tree** %5, align 8
  %10 = call %struct.TYPE_4__* @TL_TREE_METHODS(%struct.tl_tree* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64 (i8*)*, i64 (i8*)** %11, align 8
  %13 = load %struct.tl_tree*, %struct.tl_tree** %5, align 8
  %14 = bitcast %struct.tl_tree* %13 to i8*
  %15 = call i64 %12(i8* %14)
  %16 = load i64, i64* @NODE_TYPE_TYPE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

19:                                               ; preds = %2
  %20 = load %struct.tl_tree*, %struct.tl_tree** %4, align 8
  %21 = bitcast %struct.tl_tree* %20 to i8*
  %22 = bitcast i8* %21 to %struct.tl_tree_type*
  store %struct.tl_tree_type* %22, %struct.tl_tree_type** %6, align 8
  %23 = load %struct.tl_tree*, %struct.tl_tree** %5, align 8
  %24 = bitcast %struct.tl_tree* %23 to i8*
  %25 = bitcast i8* %24 to %struct.tl_tree_type*
  store %struct.tl_tree_type* %25, %struct.tl_tree_type** %7, align 8
  %26 = load %struct.tl_tree_type*, %struct.tl_tree_type** %6, align 8
  %27 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FLAGS_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.tl_tree_type*, %struct.tl_tree_type** %7, align 8
  %33 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FLAGS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %89

40:                                               ; preds = %19
  %41 = load %struct.tl_tree_type*, %struct.tl_tree_type** %6, align 8
  %42 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tl_tree_type*, %struct.tl_tree_type** %7, align 8
  %45 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %89

49:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %85, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.tl_tree_type*, %struct.tl_tree_type** %6, align 8
  %53 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load %struct.tl_tree_type*, %struct.tl_tree_type** %6, align 8
  %58 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %57, i32 0, i32 2
  %59 = load %struct.tl_tree**, %struct.tl_tree*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %59, i64 %61
  %63 = load %struct.tl_tree*, %struct.tl_tree** %62, align 8
  %64 = call %struct.TYPE_4__* @TL_TREE_METHODS(%struct.tl_tree* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.tl_tree*, %struct.tl_tree*)*, i32 (%struct.tl_tree*, %struct.tl_tree*)** %65, align 8
  %67 = load %struct.tl_tree_type*, %struct.tl_tree_type** %6, align 8
  %68 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %67, i32 0, i32 2
  %69 = load %struct.tl_tree**, %struct.tl_tree*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %69, i64 %71
  %73 = load %struct.tl_tree*, %struct.tl_tree** %72, align 8
  %74 = load %struct.tl_tree_type*, %struct.tl_tree_type** %7, align 8
  %75 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %74, i32 0, i32 2
  %76 = load %struct.tl_tree**, %struct.tl_tree*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %76, i64 %78
  %80 = load %struct.tl_tree*, %struct.tl_tree** %79, align 8
  %81 = call i32 %66(%struct.tl_tree* %73, %struct.tl_tree* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %89

84:                                               ; preds = %56
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %50

88:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %83, %48, %39, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_4__* @TL_TREE_METHODS(%struct.tl_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
