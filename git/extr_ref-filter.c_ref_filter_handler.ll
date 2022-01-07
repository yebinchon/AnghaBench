; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_ref_filter_handler.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_ref_filter_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref_filter_cbdata = type { i32, i32, i32, %struct.ref_filter* }
%struct.ref_filter = type { i32, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ref_array_item = type { i32, i32, %struct.commit* }
%struct.commit = type { i32 }

@REF_BAD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ignoring ref with broken name %s\00", align 1
@REF_ISBROKEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ignoring broken ref %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @ref_filter_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ref_filter_handler(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ref_filter_cbdata*, align 8
  %11 = alloca %struct.ref_filter*, align 8
  %12 = alloca %struct.ref_array_item*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.ref_filter_cbdata*
  store %struct.ref_filter_cbdata* %16, %struct.ref_filter_cbdata** %10, align 8
  %17 = load %struct.ref_filter_cbdata*, %struct.ref_filter_cbdata** %10, align 8
  %18 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %17, i32 0, i32 3
  %19 = load %struct.ref_filter*, %struct.ref_filter** %18, align 8
  store %struct.ref_filter* %19, %struct.ref_filter** %11, align 8
  store %struct.commit* null, %struct.commit** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @REF_BAD_NAME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @warning(i32 %25, i8* %26)
  store i32 0, i32* %5, align 4
  br label %144

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @REF_ISBROKEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @warning(i32 %34, i8* %35)
  store i32 0, i32* %5, align 4
  br label %144

37:                                               ; preds = %28
  %38 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @filter_ref_kind(%struct.ref_filter* %38, i8* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %43 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %144

48:                                               ; preds = %37
  %49 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @filter_pattern_match(%struct.ref_filter* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %144

54:                                               ; preds = %48
  %55 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %56 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %62 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %61, i32 0, i32 5
  %63 = load %struct.object_id*, %struct.object_id** %7, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @match_points_at(%struct.TYPE_2__* %62, %struct.object_id* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %144

68:                                               ; preds = %60, %54
  %69 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %70 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %68
  %74 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %75 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %80 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %85 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %83, %78, %73, %68
  %89 = load i32, i32* @the_repository, align 4
  %90 = load %struct.object_id*, %struct.object_id** %7, align 8
  %91 = call %struct.commit* @lookup_commit_reference_gently(i32 %89, %struct.object_id* %90, i32 1)
  store %struct.commit* %91, %struct.commit** %13, align 8
  %92 = load %struct.commit*, %struct.commit** %13, align 8
  %93 = icmp ne %struct.commit* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %144

95:                                               ; preds = %88
  %96 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %97 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %102 = load %struct.commit*, %struct.commit** %13, align 8
  %103 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %104 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ref_filter_cbdata*, %struct.ref_filter_cbdata** %10, align 8
  %107 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %106, i32 0, i32 2
  %108 = call i64 @commit_contains(%struct.ref_filter* %101, %struct.commit* %102, i64 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %144

111:                                              ; preds = %100, %95
  %112 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %113 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %118 = load %struct.commit*, %struct.commit** %13, align 8
  %119 = load %struct.ref_filter*, %struct.ref_filter** %11, align 8
  %120 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ref_filter_cbdata*, %struct.ref_filter_cbdata** %10, align 8
  %123 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %122, i32 0, i32 1
  %124 = call i64 @commit_contains(%struct.ref_filter* %117, %struct.commit* %118, i64 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %144

127:                                              ; preds = %116, %111
  br label %128

128:                                              ; preds = %127, %83
  %129 = load %struct.ref_filter_cbdata*, %struct.ref_filter_cbdata** %10, align 8
  %130 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load %struct.object_id*, %struct.object_id** %7, align 8
  %134 = call %struct.ref_array_item* @ref_array_push(i32 %131, i8* %132, %struct.object_id* %133)
  store %struct.ref_array_item* %134, %struct.ref_array_item** %12, align 8
  %135 = load %struct.commit*, %struct.commit** %13, align 8
  %136 = load %struct.ref_array_item*, %struct.ref_array_item** %12, align 8
  %137 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %136, i32 0, i32 2
  store %struct.commit* %135, %struct.commit** %137, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.ref_array_item*, %struct.ref_array_item** %12, align 8
  %140 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.ref_array_item*, %struct.ref_array_item** %12, align 8
  %143 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %128, %126, %110, %94, %67, %53, %47, %33, %24
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @filter_ref_kind(%struct.ref_filter*, i8*) #1

declare dso_local i32 @filter_pattern_match(%struct.ref_filter*, i8*) #1

declare dso_local i32 @match_points_at(%struct.TYPE_2__*, %struct.object_id*, i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i64 @commit_contains(%struct.ref_filter*, %struct.commit*, i64, i32*) #1

declare dso_local %struct.ref_array_item* @ref_array_push(i32, i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
