; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_wrap_in_html.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_wrap_in_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@wrap_in_html.content_type = internal global i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [26 x i8] c"Content-Type: text/html;\0A\00", align 1
@wrap_in_html.pre_open = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"<pre>\0A\00", align 1
@wrap_in_html.pre_close = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"</pre>\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @wrap_in_html to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_in_html(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %6 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %15, i8** %4, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %19 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sub nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @strbuf_add(%struct.strbuf* %3, i8* %18, i32 %27)
  %29 = load i8*, i8** @wrap_in_html.content_type, align 8
  %30 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* %29)
  %31 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext 10)
  %32 = load i8*, i8** @wrap_in_html.pre_open, align 8
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strbuf_addstr_xml_quoted(%struct.strbuf* %3, i8* %34)
  %36 = load i8*, i8** @wrap_in_html.pre_close, align 8
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* %36)
  %38 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %39 = call i32 @strbuf_release(%struct.strbuf* %38)
  %40 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %41 = bitcast %struct.strbuf* %40 to i8*
  %42 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  br label %43

43:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addstr_xml_quoted(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
