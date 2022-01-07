; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_lf_to_crlf.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_lf_to_crlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @lf_to_crlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lf_to_crlf(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  store i8 0, i8* %6, align 1
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 13
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %22, %13
  %30 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %6, align 1
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %7

41:                                               ; preds = %7
  %42 = load i64, i64* %5, align 8
  %43 = call i8* @xmallocz(i64 %42)
  store i8* %43, i8** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  store i8 0, i8* %6, align 1
  br label %44

44:                                               ; preds = %79, %41
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44
  %51 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i8, i8* %6, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 13
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 13, i8* %67, align 1
  br label %68

68:                                               ; preds = %63, %59, %50
  %69 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %5, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 %74, i8* %78, align 1
  store i8 %74, i8* %6, align 1
  br label %79

79:                                               ; preds = %68
  %80 = load i64, i64* %4, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %4, align 8
  br label %44

82:                                               ; preds = %44
  %83 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, 1
  %88 = call i32 @strbuf_attach(%struct.strbuf* %83, i8* %84, i64 %85, i64 %87)
  ret void
}

declare dso_local i8* @xmallocz(i64) #1

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
