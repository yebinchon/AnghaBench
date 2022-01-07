; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_escape_string.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @escape_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @escape_string(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @jv_get_kind(i32 %12)
  %14 = load i64, i64* @JV_KIND_STRING, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = bitcast [128 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 1024, i1 false)
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  %20 = getelementptr inbounds [128 x i8*], [128 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  br label %21

21:                                               ; preds = %25, %2
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [128 x i8*], [128 x i8*]* %5, i64 0, i64 %31
  store i8* %27, i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %21

42:                                               ; preds = %21
  %43 = call i32 @jv_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i8* @jv_string_value(i32 %44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @jv_copy(i32 %47)
  %49 = call i32 @jv_string_length_bytes(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8* %51, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %83, %42
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @jvp_utf8_next(i8* %53, i8* %54, i32* %11)
  store i8* %55, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 128
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [128 x i8*], [128 x i8*]* %5, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [128 x i8*], [128 x i8*]* %5, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @jv_string_append_str(i32 %67, i8* %71)
  store i32 %72, i32* %7, align 4
  br label %83

73:                                               ; preds = %60, %57
  %74 = load i32, i32* %7, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @jv_string_append_buf(i32 %74, i8* %75, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %73, %66
  br label %52

84:                                               ; preds = %52
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @jv_free(i32 %85)
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i8* @jvp_utf8_next(i8*, i8*, i32*) #1

declare dso_local i32 @jv_string_append_str(i32, i8*) #1

declare dso_local i32 @jv_string_append_buf(i32, i8*, i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
