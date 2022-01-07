; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_get_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_array_item = type { i32, i32 }
%struct.object = type { i32 }
%struct.expand_data = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32*, i32* }
%struct.strbuf = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJECT_INFO_LOOKUP_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"missing object %s for %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Object size is less than zero.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"parse_object_buffer failed on %s for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_array_item*, i32, %struct.object**, %struct.expand_data*, %struct.strbuf*)* @get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_object(%struct.ref_array_item* %0, i32 %1, %struct.object** %2, %struct.expand_data* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_array_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object**, align 8
  %10 = alloca %struct.expand_data*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca i32, align 4
  store %struct.ref_array_item* %0, %struct.ref_array_item** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.object** %2, %struct.object*** %9, align 8
  store %struct.expand_data* %3, %struct.expand_data** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  store i32 1, i32* %12, align 4
  %13 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %14 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %20 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %19, i32 0, i32 3
  %21 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %22 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32* %20, i32** %23, align 8
  %24 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %25 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %24, i32 0, i32 4
  %26 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %27 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32* %25, i32** %28, align 8
  br label %29

29:                                               ; preds = %18, %5
  %30 = load i32, i32* @the_repository, align 4
  %31 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %32 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %31, i32 0, i32 2
  %33 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %34 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %33, i32 0, i32 5
  %35 = load i32, i32* @OBJECT_INFO_LOOKUP_REPLACE, align 4
  %36 = call i64 @oid_object_info_extended(i32 %30, i32* %32, %struct.TYPE_2__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %40 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %42 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %41, i32 0, i32 2
  %43 = call i32 @oid_to_hex(i32* %42)
  %44 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %45 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strbuf_addf_ret(%struct.strbuf* %39, i32 -1, i32 %40, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %128

48:                                               ; preds = %29
  %49 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %50 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %56 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54, %48
  %62 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %63 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %61
  %68 = load i32, i32* @the_repository, align 4
  %69 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %70 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %69, i32 0, i32 2
  %71 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %72 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %75 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %78 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.object* @parse_object_buffer(i32 %68, i32* %70, i32 %73, i32 %76, i32 %79, i32* %12)
  %81 = load %struct.object**, %struct.object*** %9, align 8
  store %struct.object* %80, %struct.object** %81, align 8
  %82 = load %struct.object**, %struct.object*** %9, align 8
  %83 = icmp ne %struct.object** %82, null
  br i1 %83, label %102, label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %89 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @free(i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %94 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %96 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %95, i32 0, i32 2
  %97 = call i32 @oid_to_hex(i32* %96)
  %98 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %99 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strbuf_addf_ret(%struct.strbuf* %93, i32 -1, i32 %94, i32 %97, i32 %100)
  store i32 %101, i32* %6, align 4
  br label %128

102:                                              ; preds = %67
  %103 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %104 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.object**, %struct.object*** %9, align 8
  %108 = load %struct.object*, %struct.object** %107, align 8
  %109 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %110 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @grab_values(i32 %105, i32 %106, %struct.object* %108, i32 %111)
  br label %113

113:                                              ; preds = %102, %61
  %114 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %115 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %119 = call i32 @grab_common_values(i32 %116, i32 %117, %struct.expand_data* %118)
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %113
  %123 = load %struct.expand_data*, %struct.expand_data** %10, align 8
  %124 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @free(i32 %125)
  br label %127

127:                                              ; preds = %122, %113
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %127, %92, %38
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i64 @oid_object_info_extended(i32, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.object* @parse_object_buffer(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @grab_values(i32, i32, %struct.object*, i32) #1

declare dso_local i32 @grab_common_values(i32, i32, %struct.expand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
