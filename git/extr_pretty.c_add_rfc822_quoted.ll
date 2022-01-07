; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_add_rfc822_quoted.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_add_rfc822_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i32)* @add_rfc822_quoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rfc822_quoted(%struct.strbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 2
  %11 = call i32 @strbuf_grow(%struct.strbuf* %8, i32 %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = call i32 @strbuf_addch(%struct.strbuf* %12, i8 signext 34)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %37, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %28 [
    i32 34, label %25
    i32 92, label %25
  ]

25:                                               ; preds = %18, %18
  %26 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %27 = call i32 @strbuf_addch(%struct.strbuf* %26, i8 signext 92)
  br label %28

28:                                               ; preds = %18, %25
  %29 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @strbuf_addch(%struct.strbuf* %29, i8 signext %34)
  br label %36

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %42 = call i32 @strbuf_addch(%struct.strbuf* %41, i8 signext 34)
  ret void
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
