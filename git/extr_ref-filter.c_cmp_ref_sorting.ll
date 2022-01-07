; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_cmp_ref_sorting.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_cmp_ref_sorting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.strbuf = type { i32 }
%struct.ref_sorting = type { i64, i64, i64, i64 }
%struct.ref_array_item = type { i8* }
%struct.atom_value = type { i8*, i64 }

@used_atom = common dso_local global %struct.TYPE_2__* null, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FIELD_STR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_sorting*, %struct.ref_array_item*, %struct.ref_array_item*)* @cmp_ref_sorting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_ref_sorting(%struct.ref_sorting* %0, %struct.ref_array_item* %1, %struct.ref_array_item* %2) #0 {
  %4 = alloca %struct.ref_sorting*, align 8
  %5 = alloca %struct.ref_array_item*, align 8
  %6 = alloca %struct.ref_array_item*, align 8
  %7 = alloca %struct.atom_value*, align 8
  %8 = alloca %struct.atom_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32 (i8*, i8*)*, align 8
  %12 = alloca %struct.strbuf, align 4
  store %struct.ref_sorting* %0, %struct.ref_sorting** %4, align 8
  store %struct.ref_array_item* %1, %struct.ref_array_item** %5, align 8
  store %struct.ref_array_item* %2, %struct.ref_array_item** %6, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @used_atom, align 8
  %14 = load %struct.ref_sorting*, %struct.ref_sorting** %4, align 8
  %15 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = load %struct.ref_array_item*, %struct.ref_array_item** %5, align 8
  %22 = load %struct.ref_sorting*, %struct.ref_sorting** %4, align 8
  %23 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @get_ref_atom_value(%struct.ref_array_item* %21, i64 %24, %struct.atom_value** %7, %struct.strbuf* %12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.ref_array_item*, %struct.ref_array_item** %6, align 8
  %33 = load %struct.ref_sorting*, %struct.ref_sorting** %4, align 8
  %34 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @get_ref_atom_value(%struct.ref_array_item* %32, i64 %35, %struct.atom_value** %8, %struct.strbuf* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = call i32 @strbuf_release(%struct.strbuf* %12)
  %44 = load %struct.ref_sorting*, %struct.ref_sorting** %4, align 8
  %45 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 (i8*, i8*)* @strcasecmp, i32 (i8*, i8*)* @strcmp
  store i32 (i8*, i8*)* %49, i32 (i8*, i8*)** %11, align 8
  %50 = load %struct.ref_sorting*, %struct.ref_sorting** %4, align 8
  %51 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load %struct.atom_value*, %struct.atom_value** %7, align 8
  %56 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.atom_value*, %struct.atom_value** %8, align 8
  %59 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @versioncmp(i8* %57, i8* %60)
  store i32 %61, i32* %9, align 4
  br label %105

62:                                               ; preds = %42
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @FIELD_STR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %68 = load %struct.atom_value*, %struct.atom_value** %7, align 8
  %69 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.atom_value*, %struct.atom_value** %8, align 8
  %72 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 %67(i8* %70, i8* %73)
  store i32 %74, i32* %9, align 4
  br label %104

75:                                               ; preds = %62
  %76 = load %struct.atom_value*, %struct.atom_value** %7, align 8
  %77 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.atom_value*, %struct.atom_value** %8, align 8
  %80 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 -1, i32* %9, align 4
  br label %103

84:                                               ; preds = %75
  %85 = load %struct.atom_value*, %struct.atom_value** %7, align 8
  %86 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.atom_value*, %struct.atom_value** %8, align 8
  %89 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %94 = load %struct.ref_array_item*, %struct.ref_array_item** %5, align 8
  %95 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.ref_array_item*, %struct.ref_array_item** %6, align 8
  %98 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 %93(i8* %96, i8* %99)
  store i32 %100, i32* %9, align 4
  br label %102

101:                                              ; preds = %84
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %92
  br label %103

103:                                              ; preds = %102, %83
  br label %104

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104, %54
  %106 = load %struct.ref_sorting*, %struct.ref_sorting** %4, align 8
  %107 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 0, %111
  br label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi i32 [ %112, %110 ], [ %114, %113 ]
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_ref_atom_value(%struct.ref_array_item*, i64, %struct.atom_value**, %struct.strbuf*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @versioncmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
