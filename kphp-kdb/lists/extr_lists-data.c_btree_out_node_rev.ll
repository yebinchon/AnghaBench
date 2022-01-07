; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_btree_out_node_rev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_btree_out_node_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.tree_payload = type { i64, i32, i32, i32, i32 }

@R_mode = common dso_local global i32 0, align 4
@R_end = common dso_local global i32* null, align 8
@empty_string = common dso_local global i64 0, align 8
@PTR_INTS = common dso_local global i32* null, align 8
@TF_PLUS = common dso_local global i64 0, align 8
@OTree = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @btree_out_node_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_out_node_rev(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tree_payload*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load i32, i32* @R_mode, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** @R_end, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = call %struct.tree_payload* @LPAYLOAD(%struct.TYPE_7__* %9)
  store %struct.tree_payload* %10, %struct.tree_payload** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1024
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %1
  %15 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %16 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %21 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @empty_string, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %31

26:                                               ; preds = %19
  %27 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %28 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @get_text_ptr(i64 %29)
  br label %31

31:                                               ; preds = %26, %25
  %32 = phi i8* [ null, %25 ], [ %30, %26 ]
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** @PTR_INTS, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = sub nsw i64 %38, 1
  %40 = inttoptr i64 %39 to i8**
  store i8* %32, i8** %40, align 8
  %41 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %42 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @get_text_len(i64 %43)
  store i32 %44, i32* %6, align 4
  br label %65

45:                                               ; preds = %14
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = call i64 @NODE_TYPE(%struct.TYPE_7__* %46)
  %48 = load i64, i64* @TF_PLUS, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @OTree, i32 0, i32 0), align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = call i64 @NODE_RPOS(%struct.TYPE_7__* %53)
  %55 = sub nsw i64 %52, %54
  %56 = call i8* @metafile_get_text(i64 %55, i32* %6)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** @PTR_INTS, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = sub nsw i64 %62, 1
  %64 = inttoptr i64 %63 to i8**
  store i8* %56, i8** %64, align 8
  br label %65

65:                                               ; preds = %45, %31
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 -1
  store i32* %68, i32** %4, align 8
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** @PTR_INTS, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = ptrtoint i32* %70 to i64
  %72 = ptrtoint i32* %69 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %65, %1
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, 512
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %82 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @store_value_rev(i32** %4, i32 %83)
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 256
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %91 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 -1
  store i32* %94, i32** %4, align 8
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %101 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 -1
  store i32* %104, i32** %4, align 8
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %95
  %106 = load i32, i32* %3, align 4
  %107 = and i32 %106, 64
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %111 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 -1
  store i32* %114, i32** %4, align 8
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %105
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @store_object_id_rev(i32** %4, i32 %118)
  %120 = load i32*, i32** %4, align 8
  store i32* %120, i32** @R_end, align 8
  ret i32 0
}

declare dso_local %struct.tree_payload* @LPAYLOAD(%struct.TYPE_7__*) #1

declare dso_local i8* @get_text_ptr(i64) #1

declare dso_local i32 @get_text_len(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_7__*) #1

declare dso_local i8* @metafile_get_text(i64, i32*) #1

declare dso_local i64 @NODE_RPOS(%struct.TYPE_7__*) #1

declare dso_local i32 @store_value_rev(i32**, i32) #1

declare dso_local i32 @store_object_id_rev(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
