; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addbuf_percentquote.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addbuf_percentquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_addbuf_percentquote(%struct.strbuf* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = call i32 @strbuf_addch(%struct.strbuf* %24, i8 signext 37)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @strbuf_addch(%struct.strbuf* %27, i8 signext %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
