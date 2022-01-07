; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_check_header.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.mailinfo = type { i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@header = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Content-Type: \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Content-Transfer-Encoding\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Content-Transfer-Encoding: \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Message-Id\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Message-Id: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mailinfo*, %struct.strbuf*, %struct.strbuf**, i32)* @check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header(%struct.mailinfo* %0, %struct.strbuf* %1, %struct.strbuf** %2, i32 %3) #0 {
  %5 = alloca %struct.mailinfo*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.strbuf**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i32, align 4
  store %struct.mailinfo* %0, %struct.mailinfo** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store %struct.strbuf** %2, %struct.strbuf*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %70, %4
  %16 = load i8**, i8*** @header, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %73

22:                                               ; preds = %15
  %23 = load i8**, i8*** @header, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %29, i64 %31
  %33 = load %struct.strbuf*, %struct.strbuf** %32, align 8
  %34 = icmp ne %struct.strbuf* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %35, %22
  %39 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %40 = load i8**, i8*** @header, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @cmp_header(%struct.strbuf* %39, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = add nsw i64 %53, 2
  %55 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %59, 2
  %61 = call i32 @strbuf_add(%struct.strbuf* %12, i64 %54, i32 %60)
  %62 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %63 = call i32 @decode_header(%struct.mailinfo* %62, %struct.strbuf* %12)
  %64 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %64, i64 %66
  %68 = call i32 @handle_header(%struct.strbuf** %67, %struct.strbuf* %12)
  store i32 1, i32* %10, align 4
  br label %149

69:                                               ; preds = %38, %35
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %15

73:                                               ; preds = %15
  %74 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %75 = call i64 @cmp_header(%struct.strbuf* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %78, i32* %11, align 4
  %79 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %86 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @strbuf_add(%struct.strbuf* %12, i64 %84, i32 %89)
  %91 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %92 = call i32 @decode_header(%struct.mailinfo* %91, %struct.strbuf* %12)
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @strbuf_insert(%struct.strbuf* %12, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %96 = call i32 @handle_content_type(%struct.mailinfo* %95, %struct.strbuf* %12)
  store i32 1, i32* %10, align 4
  br label %149

97:                                               ; preds = %73
  %98 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %99 = call i64 @cmp_header(%struct.strbuf* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = call i32 @strlen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %102, i32* %11, align 4
  %103 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %104 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @strbuf_add(%struct.strbuf* %12, i64 %108, i32 %113)
  %115 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %116 = call i32 @decode_header(%struct.mailinfo* %115, %struct.strbuf* %12)
  %117 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %118 = call i32 @handle_content_transfer_encoding(%struct.mailinfo* %117, %struct.strbuf* %12)
  store i32 1, i32* %10, align 4
  br label %149

119:                                              ; preds = %97
  %120 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %121 = call i64 @cmp_header(%struct.strbuf* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %119
  %124 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %124, i32* %11, align 4
  %125 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %126 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %132 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %133, %134
  %136 = call i32 @strbuf_add(%struct.strbuf* %12, i64 %130, i32 %135)
  %137 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %138 = call i32 @decode_header(%struct.mailinfo* %137, %struct.strbuf* %12)
  %139 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %140 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %123
  %144 = call i32 @strbuf_detach(%struct.strbuf* %12, i32* null)
  %145 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %146 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %123
  store i32 1, i32* %10, align 4
  br label %149

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148, %147, %101, %77, %47
  %150 = call i32 @strbuf_release(%struct.strbuf* %12)
  %151 = load i32, i32* %10, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @cmp_header(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i64, i32) #2

declare dso_local i32 @decode_header(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @handle_header(%struct.strbuf**, %struct.strbuf*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @handle_content_type(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @handle_content_transfer_encoding(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
