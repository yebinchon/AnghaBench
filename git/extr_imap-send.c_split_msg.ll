; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_split_msg.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_split_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\0AFrom \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.strbuf*, i32*)* @split_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_msg(%struct.strbuf* %0, %struct.strbuf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8* %25, i8** %9, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %28, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ult i64 %33, 5
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @starts_with(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %18
  store i32 0, i32* %4, align 4
  br label %89

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 10)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %59
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %45, %40
  %67 = load i8*, i8** %9, align 8
  %68 = call i8* @strstr(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8*, i8** %9, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @strbuf_add(%struct.strbuf* %79, i8* %80, i64 %81)
  %83 = load i64, i64* %10, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %83
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %78, %39, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
