; ModuleID = '/home/carl/AnghaBench/libui/common/extr_opentype.c_uiOpenTypeFeaturesAdd.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_opentype.c_uiOpenTypeFeaturesAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.feature* }
%struct.feature = type { i8, i8, i8, i8, i8* }

@.str = private unnamed_addr constant [17 x i8] c"struct feature[]\00", align 1
@featurecmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiOpenTypeFeaturesAdd(%struct.TYPE_4__* %0, i8 signext %1, i8 signext %2, i8 signext %3, i8 signext %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca %struct.feature*, align 8
  %14 = alloca %struct.feature, align 8
  %15 = alloca %struct.feature, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i8* %5, i8** %12, align 8
  %16 = load i8, i8* %8, align 1
  %17 = load i8, i8* %9, align 1
  %18 = load i8, i8* %10, align 1
  %19 = load i8, i8* %11, align 1
  %20 = call { i64, i8* } @mkkey(i8 signext %16, i8 signext %17, i8 signext %18, i8 signext %19)
  %21 = bitcast %struct.feature* %15 to { i64, i8* }*
  %22 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i8* } %20, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i8* } %20, 1
  store i8* %25, i8** %24, align 8
  %26 = bitcast %struct.feature* %14 to i8*
  %27 = bitcast %struct.feature* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = call i64 @find(%struct.feature* %14, %struct.TYPE_4__* %28)
  %30 = inttoptr i64 %29 to %struct.feature*
  store %struct.feature* %30, %struct.feature** %13, align 8
  %31 = load %struct.feature*, %struct.feature** %13, align 8
  %32 = icmp ne %struct.feature* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.feature*, %struct.feature** %13, align 8
  %36 = getelementptr inbounds %struct.feature, %struct.feature* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  br label %97

37:                                               ; preds = %6
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.feature*, %struct.feature** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bytecount(i32 %55)
  %57 = call i64 @uiprivRealloc(%struct.feature* %52, i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %58 = inttoptr i64 %57 to %struct.feature*
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store %struct.feature* %58, %struct.feature** %60, align 8
  br label %61

61:                                               ; preds = %45, %37
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load %struct.feature*, %struct.feature** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.feature, %struct.feature* %64, i64 %68
  store %struct.feature* %69, %struct.feature** %13, align 8
  %70 = load i8, i8* %8, align 1
  %71 = load %struct.feature*, %struct.feature** %13, align 8
  %72 = getelementptr inbounds %struct.feature, %struct.feature* %71, i32 0, i32 0
  store i8 %70, i8* %72, align 8
  %73 = load i8, i8* %9, align 1
  %74 = load %struct.feature*, %struct.feature** %13, align 8
  %75 = getelementptr inbounds %struct.feature, %struct.feature* %74, i32 0, i32 1
  store i8 %73, i8* %75, align 1
  %76 = load i8, i8* %10, align 1
  %77 = load %struct.feature*, %struct.feature** %13, align 8
  %78 = getelementptr inbounds %struct.feature, %struct.feature* %77, i32 0, i32 2
  store i8 %76, i8* %78, align 2
  %79 = load i8, i8* %11, align 1
  %80 = load %struct.feature*, %struct.feature** %13, align 8
  %81 = getelementptr inbounds %struct.feature, %struct.feature* %80, i32 0, i32 3
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %12, align 8
  %83 = load %struct.feature*, %struct.feature** %13, align 8
  %84 = getelementptr inbounds %struct.feature, %struct.feature* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load %struct.feature*, %struct.feature** %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @featurecmp, align 4
  %96 = call i32 @qsort(%struct.feature* %91, i32 %94, i32 16, i32 %95)
  br label %97

97:                                               ; preds = %61, %33
  ret void
}

declare dso_local { i64, i8* } @mkkey(i8 signext, i8 signext, i8 signext, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @find(%struct.feature*, %struct.TYPE_4__*) #1

declare dso_local i64 @uiprivRealloc(%struct.feature*, i32, i8*) #1

declare dso_local i32 @bytecount(i32) #1

declare dso_local i32 @qsort(%struct.feature*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
