; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_verify_ref_format.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_verify_ref_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ref_format = type { i32, i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"malformed format string %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@used_atom = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"color:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_ref_format(%struct.ref_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_format*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ref_format* %0, %struct.ref_format** %3, align 8
  %10 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  %11 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  %13 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %68, %1
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @find_next(i8* %21)
  store i8* %22, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  br i1 %25, label %26, label %70

26:                                               ; preds = %24
  %27 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 41)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @error(i32 %33, i8* %34)
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %26
  %37 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @parse_ref_filter_atom(%struct.ref_format* %37, i8* %39, i8* %40, %struct.strbuf* %6)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %4, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @used_atom, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @skip_prefix(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  %67 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %59, %48
  %69 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %15

70:                                               ; preds = %24
  %71 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  %72 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  %77 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @want_color(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  %83 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %75, %70
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %32
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @find_next(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_ref_filter_atom(%struct.ref_format*, i8*, i8*, %struct.strbuf*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @want_color(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
