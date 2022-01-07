; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hlfmt.c_hlfmt_detect.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hlfmt.c_hlfmt_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@HLFMT_HASHCAT = common dso_local global i64 0, align 8
@HLFMTS_CNT = common dso_local global i64 0, align 8
@HCBUFSIZ_LARGE = common dso_local global i32 0, align 4
@HLFMT_PWDUMP = common dso_local global i64 0, align 8
@HLFMT_PASSWD = common dso_local global i64 0, align 8
@HLFMT_SHADOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hlfmt_detect(%struct.TYPE_8__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @HLFMT_HASHCAT, align 8
  store i64 %23, i64* %4, align 8
  br label %117

24:                                               ; preds = %3
  %25 = load i64, i64* @HLFMTS_CNT, align 8
  %26 = call i64 @hccalloc(i64 %25, i32 8)
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %28 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %29 = call i64 @hcmalloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %11, align 8
  br label %31

31:                                               ; preds = %85, %43, %24
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @hc_feof(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %88

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %40 = call i64 @fgetl(i32* %37, i8* %38, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %31

44:                                               ; preds = %36
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @hlfmt_detect_pwdump(%struct.TYPE_8__* %45, i8* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* @HLFMT_PWDUMP, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @hlfmt_detect_passwd(%struct.TYPE_8__* %57, i8* %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* @HLFMT_PASSWD, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @hlfmt_detect_shadow(%struct.TYPE_8__* %69, i8* %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* @HLFMT_SHADOW, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %88

85:                                               ; preds = %80
  %86 = load i64, i64* %10, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %10, align 8
  br label %31

88:                                               ; preds = %84, %31
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @hcfree(i8* %89)
  %91 = load i64, i64* @HLFMT_HASHCAT, align 8
  store i64 %91, i64* %13, align 8
  store i64 1, i64* %14, align 8
  br label %92

92:                                               ; preds = %110, %88
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @HLFMTS_CNT, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %14, align 8
  %99 = sub nsw i64 %98, 1
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %110

108:                                              ; preds = %96
  %109 = load i64, i64* %14, align 8
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %108, %107
  %111 = load i64, i64* %14, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %14, align 8
  br label %92

113:                                              ; preds = %92
  %114 = load i64*, i64** %9, align 8
  %115 = call i32 @free(i64* %114)
  %116 = load i64, i64* %13, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %113, %22
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i64 @hccalloc(i64, i32) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i64 @fgetl(i32*, i8*, i32) #1

declare dso_local i64 @hlfmt_detect_pwdump(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i64 @hlfmt_detect_passwd(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i64 @hlfmt_detect_shadow(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
