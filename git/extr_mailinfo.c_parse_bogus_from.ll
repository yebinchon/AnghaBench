; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_parse_bogus_from.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_parse_bogus_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.strbuf = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @parse_bogus_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_bogus_from(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %7 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %8 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %70

13:                                               ; preds = %2
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 60)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %70

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 62)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %70

27:                                               ; preds = %21
  %28 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %29 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %28, i32 0, i32 0
  %30 = call i32 @strbuf_reset(%struct.TYPE_7__* %29)
  %31 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %32 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %31, i32 0, i32 0
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sub nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i32 @strbuf_add(%struct.TYPE_7__* %32, i8* %34, i32 %41)
  %43 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %44 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %43, i32 0, i32 1
  %45 = call i32 @strbuf_reset(%struct.TYPE_7__* %44)
  %46 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %47 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %46, i32 0, i32 1
  %48 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @strbuf_add(%struct.TYPE_7__* %47, i8* %50, i32 %58)
  %60 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %61 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %60, i32 0, i32 1
  %62 = call i32 @strbuf_trim(%struct.TYPE_7__* %61)
  %63 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %64 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %63, i32 0, i32 1
  %65 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %66 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %65, i32 0, i32 1
  %67 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %68 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %67, i32 0, i32 0
  %69 = call i32 @get_sane_name(%struct.TYPE_7__* %64, %struct.TYPE_7__* %66, %struct.TYPE_7__* %68)
  br label %70

70:                                               ; preds = %27, %26, %20, %12
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_7__*) #1

declare dso_local i32 @strbuf_add(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @strbuf_trim(%struct.TYPE_7__*) #1

declare dso_local i32 @get_sane_name(%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
