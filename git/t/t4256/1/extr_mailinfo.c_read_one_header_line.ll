; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_read_one_header_line.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_read_one_header_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32*)* @read_one_header_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_header_line(%struct.strbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @strbuf_getline_lf(%struct.strbuf* %9, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = call i32 @strbuf_rtrim(%struct.strbuf* %15)
  %17 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %23 = call i32 @is_rfc2822_header(%struct.strbuf* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %27 = call i32 @strbuf_addch(%struct.strbuf* %26, i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %60

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @fgetc(i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @EOF, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %58

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ungetc(i32 %37, i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 32
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 9
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %58

46:                                               ; preds = %42, %36
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @strbuf_getline_lf(%struct.strbuf* %6, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %58

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 32, i8* %54, align 1
  %55 = call i32 @strbuf_rtrim(%struct.strbuf* %6)
  %56 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %57 = call i32 @strbuf_addbuf(%struct.strbuf* %56, %struct.strbuf* %6)
  br label %29

58:                                               ; preds = %50, %45, %35
  %59 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %25, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i32 @is_rfc2822_header(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i32 @ungetc(i32, i32*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
