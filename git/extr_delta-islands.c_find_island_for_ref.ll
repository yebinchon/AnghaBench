; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_find_island_for_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_find_island_for_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.object_id = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@island_regexes_nr = common dso_local global i32 0, align 4
@island_regexes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [62 x i8] c"island regex from config has too many capture groups (max=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @find_island_for_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_island_for_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [16 x %struct.TYPE_4__], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = load i32, i32* @island_regexes_nr, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %34, %4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32*, i32** @island_regexes, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %27)
  %29 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %30 = call i32 @regexec(i32* %25, i8* %26, i32 %28, %struct.TYPE_4__* %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %37

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %11, align 4
  br label %18

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %102

41:                                               ; preds = %37
  %42 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %42)
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %10, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 16
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %52 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %52)
  %54 = sub nsw i32 %53, 2
  %55 = call i32 @warning(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %41
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %93, %56
  %58 = load i32, i32* %12, align 4
  %59 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %10, i64 0, i64 %64
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %14, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %93

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 45)
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %86, %90
  %92 = call i32 @strbuf_add(%struct.strbuf* %13, i8* %83, i64 %91)
  br label %93

93:                                               ; preds = %77, %70
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %57

96:                                               ; preds = %57
  %97 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.object_id*, %struct.object_id** %7, align 8
  %100 = call i32 @add_ref_to_island(i32 %98, %struct.object_id* %99)
  %101 = call i32 @strbuf_release(%struct.strbuf* %13)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %96, %40
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @warning(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @add_ref_to_island(i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
