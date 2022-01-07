; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_from.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.strbuf = type { i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c" \0A\09\0D\0B\0C>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @handle_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_from(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8, align 1
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strbuf_init(%struct.strbuf* %7, i32 %11)
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = call i32 @strbuf_addbuf(%struct.strbuf* %7, %struct.strbuf* %13)
  %15 = call i32 @unquote_quoted_pair(%struct.strbuf* %7)
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 64)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = call i32 @parse_bogus_from(%struct.mailinfo* %22, %struct.strbuf* %23)
  br label %127

25:                                               ; preds = %2
  %26 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %27 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i8* @strchr(i8* %33, i8 signext 64)
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %127

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ugt i8* %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %8, align 1
  %47 = load i8, i8* %8, align 1
  %48 = call i64 @isspace(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %61

51:                                               ; preds = %43
  %52 = load i8, i8* %8, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 60
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  store i8 32, i8* %57, align 1
  br label %61

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %5, align 8
  br label %38

61:                                               ; preds = %55, %50, %38
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strcspn(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %63, i64* %6, align 8
  %64 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %65 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %64, i32 0, i32 0
  %66 = call i32 @strbuf_reset(%struct.TYPE_4__* %65)
  %67 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %68 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %67, i32 0, i32 0
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @strbuf_add(%struct.TYPE_4__* %68, i8* %69, i64 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %72 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %6, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = sext i32 %87 to i64
  %89 = add i64 %79, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @strbuf_remove(%struct.strbuf* %7, i32 %78, i32 %90)
  %92 = call i32 @cleanup_space(%struct.strbuf* %7)
  %93 = call i32 @strbuf_trim(%struct.strbuf* %7)
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 40
  br i1 %99, label %100, label %121

100:                                              ; preds = %61
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 41
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = call i32 @strbuf_remove(%struct.strbuf* %7, i32 0, i32 1)
  %117 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = call i32 @strbuf_setlen(%struct.strbuf* %7, i32 %119)
  br label %121

121:                                              ; preds = %115, %104, %100, %61
  %122 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %123 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %122, i32 0, i32 1
  %124 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %125 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %124, i32 0, i32 0
  %126 = call i32 @get_sane_name(i32* %123, %struct.strbuf* %7, %struct.TYPE_4__* %125)
  br label %127

127:                                              ; preds = %121, %36, %21
  %128 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @unquote_quoted_pair(%struct.strbuf*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_bogus_from(%struct.mailinfo*, %struct.strbuf*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @strbuf_add(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @cleanup_space(%struct.strbuf*) #1

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @get_sane_name(i32*, %struct.strbuf*, %struct.TYPE_4__*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
