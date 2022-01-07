; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_fetch_list_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_fetch_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tree_payload = type { i32, i32, i64, i64, i64 }

@metafile_mode = common dso_local global i64 0, align 8
@OTree = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TF_PLUS = common dso_local global i64 0, align 8
@M_global_id_list = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_list_entry(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tree_payload*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* @metafile_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @prepare_list_metafile(i32 %15, i32 1)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -2, i32* %4, align 4
  br label %130

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @__get_list_f(i32 %20, i32 2)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %130

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @unpack_metafile_pointers(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @listree_lookup_large(%struct.TYPE_3__* @OTree, i32 %28, i32* %9)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %130

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  %36 = call i32 @memset(i32* %35, i32 0, i32 28)
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, inttoptr (i64 -1 to i8*)
  br i1 %38, label %39, label %100

39:                                               ; preds = %33
  %40 = load i8*, i8** %10, align 8
  %41 = call %struct.tree_payload* @PAYLOAD(i8* %40)
  store %struct.tree_payload* %41, %struct.tree_payload** %11, align 8
  %42 = load %struct.tree_payload*, %struct.tree_payload** %11, align 8
  %43 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tree_payload*, %struct.tree_payload** %11, align 8
  %48 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tree_payload*, %struct.tree_payload** %11, align 8
  %53 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = bitcast i32* %56 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load %struct.tree_payload*, %struct.tree_payload** %11, align 8
  %59 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = bitcast i32* %62 to i64*
  store i64 %60, i64* %63, align 8
  %64 = load %struct.tree_payload*, %struct.tree_payload** %11, align 8
  %65 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %39
  %69 = load %struct.tree_payload*, %struct.tree_payload** %11, align 8
  %70 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @get_text_len(i64 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 12
  store i32 %72, i32* %74, align 4
  %75 = load %struct.tree_payload*, %struct.tree_payload** %11, align 8
  %76 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @get_text_ptr(i64 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 10
  %81 = bitcast i32* %80 to i8**
  store i8* %78, i8** %81, align 8
  br label %99

82:                                               ; preds = %39
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @NODE_TYPE(i8* %83)
  %85 = load i64, i64* @TF_PLUS, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @OTree, i32 0, i32 0), align 4
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @NODE_RPOS(i8* %90)
  %92 = sub nsw i32 %89, %91
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 12
  %95 = call i8* @metafile_get_text(i32 %92, i32* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 10
  %98 = bitcast i32* %97 to i8**
  store i8* %95, i8** %98, align 8
  br label %99

99:                                               ; preds = %82, %68
  br label %129

100:                                              ; preds = %33
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @metafile_get_flags(i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @metafile_get_date(i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %106, i32* %108, align 4
  %109 = load i64*, i64** @M_global_id_list, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = bitcast i32* %115 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @metafile_get_value(i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = bitcast i32* %120 to i64*
  store i64 %118, i64* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 12
  %125 = call i8* @metafile_get_text(i32 %122, i32* %124)
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 10
  %128 = bitcast i32* %127 to i8**
  store i8* %125, i8** %128, align 8
  br label %129

129:                                              ; preds = %100, %99
  store i32 6, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %32, %24, %18
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local i32* @__get_list_f(i32, i32) #1

declare dso_local i32 @unpack_metafile_pointers(i32*) #1

declare dso_local i8* @listree_lookup_large(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.tree_payload* @PAYLOAD(i8*) #1

declare dso_local i32 @get_text_len(i64) #1

declare dso_local i8* @get_text_ptr(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NODE_TYPE(i8*) #1

declare dso_local i8* @metafile_get_text(i32, i32*) #1

declare dso_local i32 @NODE_RPOS(i8*) #1

declare dso_local i32 @metafile_get_flags(i32) #1

declare dso_local i32 @metafile_get_date(i32) #1

declare dso_local i64 @metafile_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
