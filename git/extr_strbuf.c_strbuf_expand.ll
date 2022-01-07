; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_expand.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_expand(%struct.strbuf* %0, i8* %1, i64 (%struct.strbuf*, i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (%struct.strbuf*, i8*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (%struct.strbuf*, i8*, i8*)* %2, i64 (%struct.strbuf*, i8*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %11

11:                                               ; preds = %54, %34, %4
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @strchrnul(i8* %12, i8 signext 37)
  store i8* %13, i8** %9, align 8
  %14 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %15, i32 %21)
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %11
  br label %55

27:                                               ; preds = %11
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %36 = call i32 @strbuf_addch(%struct.strbuf* %35, i8 signext 37)
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %11

39:                                               ; preds = %27
  %40 = load i64 (%struct.strbuf*, i8*, i8*)*, i64 (%struct.strbuf*, i8*, i8*)** %7, align 8
  %41 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 %40(%struct.strbuf* %41, i8* %42, i8* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i64, i64* %10, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %6, align 8
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %53 = call i32 @strbuf_addch(%struct.strbuf* %52, i8 signext 37)
  br label %54

54:                                               ; preds = %51, %47
  br label %11

55:                                               ; preds = %26
  ret void
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
