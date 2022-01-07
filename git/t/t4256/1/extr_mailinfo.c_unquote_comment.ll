; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_unquote_comment.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_unquote_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.strbuf*, i8*)* @unquote_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unquote_comment(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = call i32 @strbuf_addch(%struct.strbuf* %8, i32 40)
  br label %10

10:                                               ; preds = %32, %23, %22, %2
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %32

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %31 [
    i32 92, label %22
    i32 40, label %23
    i32 41, label %27
  ]

22:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %10

23:                                               ; preds = %20
  %24 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @unquote_comment(%struct.strbuf* %24, i8* %25)
  store i8* %26, i8** %5, align 8
  br label %10

27:                                               ; preds = %20
  %28 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %29 = call i32 @strbuf_addch(%struct.strbuf* %28, i32 41)
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %3, align 8
  br label %38

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @strbuf_addch(%struct.strbuf* %33, i32 %34)
  br label %10

36:                                               ; preds = %10
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
