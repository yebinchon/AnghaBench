; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addftime.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64, i64 }
%struct.tm = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%+05d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_addftime(%struct.strbuf* %0, i8* %1, %struct.tm* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tm* %2, %struct.tm** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 24, i1 false)
  store i64 128, i64* %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %128

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strchrnul(i8* %22, i8 signext 37)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @strbuf_add(%struct.strbuf* %11, i8* %24, i32 %30)
  %32 = load i8*, i8** %14, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %61

36:                                               ; preds = %21
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %58 [
    i32 37, label %42
    i32 122, label %46
    i32 90, label %51
  ]

42:                                               ; preds = %36
  %43 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %60

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %60

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %60

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %36, %57
  %59 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 37)
  br label %60

60:                                               ; preds = %58, %54, %46, %42
  br label %21

61:                                               ; preds = %35
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %7, align 8
  %64 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @strbuf_grow(%struct.strbuf* %64, i64 %65)
  %67 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %76, %79
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.tm*, %struct.tm** %8, align 8
  %83 = call i64 @strftime(i8* %73, i64 %80, i8* %81, %struct.tm* %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %119, label %86

86:                                               ; preds = %61
  %87 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 32)
  br label %88

88:                                               ; preds = %92, %86
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load i64, i64* %12, align 8
  %94 = mul i64 %93, 2
  store i64 %94, i64* %12, align 8
  %95 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @strbuf_grow(%struct.strbuf* %95, i64 %96)
  %98 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %107, %110
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.tm*, %struct.tm** %8, align 8
  %115 = call i64 @strftime(i8* %104, i64 %111, i8* %113, %struct.tm* %114)
  store i64 %115, i64* %13, align 8
  br label %88

116:                                              ; preds = %88
  %117 = load i64, i64* %13, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %116, %61
  %120 = call i32 @strbuf_release(%struct.strbuf* %11)
  %121 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %122 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %123 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = add i64 %124, %125
  %127 = call i32 @strbuf_setlen(%struct.strbuf* %121, i64 %126)
  br label %128

128:                                              ; preds = %119, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #2

declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
