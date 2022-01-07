; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_strbuf_add_indented_text.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_strbuf_add_indented_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i32, i32)* @strbuf_add_indented_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_add_indented_text(%struct.strbuf* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strchrnul(i8* %19, i8 signext 10)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @strbuf_addchars(%struct.strbuf* %29, i8 signext 32, i32 %30)
  %32 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @strbuf_add(%struct.strbuf* %32, i8* %33, i32 %39)
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %7, align 4
  br label %14

43:                                               ; preds = %14
  ret void
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
