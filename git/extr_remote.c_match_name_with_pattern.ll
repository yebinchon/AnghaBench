; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_match_name_with_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_match_name_with_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"key '%s' of pattern had no '*'\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"value '%s' of pattern has no '*'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8**)* @match_name_with_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_name_with_pattern(i8* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 42)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @die(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @strncmp(i8* %35, i8* %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %24
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %42, %43
  %45 = icmp uge i64 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @memcmp(i8* %52, i8* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %46, %40, %24
  %60 = phi i1 [ false, %40 ], [ false, %24 ], [ %58, %46 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 42)
  store i8* %70, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @die(i32 %74, i8* %75)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %78, i64 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %10, align 8
  %90 = sub i64 %88, %89
  %91 = load i64, i64* %11, align 8
  %92 = sub i64 %90, %91
  %93 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %87, i64 %92)
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %95)
  %97 = call i8* @strbuf_detach(%struct.strbuf* %14, i32* null)
  %98 = load i8**, i8*** %8, align 8
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %77, %64, %59
  %100 = load i32, i32* %13, align 4
  ret i32 %100
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
