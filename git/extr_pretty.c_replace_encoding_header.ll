; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_replace_encoding_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_replace_encoding_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"encoding \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"encoding \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @replace_encoding_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @replace_encoding_header(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @starts_with(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 10)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %17
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %3, align 8
  br label %79

30:                                               ; preds = %22
  br label %12

31:                                               ; preds = %12
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 10)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %3, align 8
  br label %79

43:                                               ; preds = %31
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  store i64 %51, i64* %8, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = add nsw i64 %56, 1
  %58 = call i32 @strbuf_attach(%struct.strbuf* %6, i8* %52, i64 %54, i64 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @is_encoding_utf8(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %43
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @strbuf_remove(%struct.strbuf* %6, i64 %63, i64 %64)
  br label %77

66:                                               ; preds = %43
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %69 = add i64 %67, %68
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %72 = sub i64 %70, %71
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = call i32 @strbuf_splice(%struct.strbuf* %6, i64 %69, i64 %72, i8* %73, i64 %75)
  br label %77

77:                                               ; preds = %66, %62
  %78 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %78, i8** %3, align 8
  br label %79

79:                                               ; preds = %77, %41, %28
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @is_encoding_utf8(i8*) #2

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i64, i64) #2

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i64, i64, i8*, i64) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
