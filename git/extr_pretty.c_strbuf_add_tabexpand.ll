; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_strbuf_add_tabexpand.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_strbuf_add_tabexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i32, i8*, i32)* @strbuf_add_tabexpand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_add_tabexpand(%struct.strbuf* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %23, %4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i8* @memchr(i8* %12, i8 signext 9, i32 %13)
  store i8* %14, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %11
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @pp_utf8_width(i8* %17, i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %52

23:                                               ; preds = %16
  %24 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @strbuf_add(%struct.strbuf* %24, i8* %25, i32 %31)
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = srem i32 %35, %36
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @strbuf_addchars(%struct.strbuf* %33, i8 signext 32, i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %7, align 8
  br label %11

52:                                               ; preds = %22, %11
  %53 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @strbuf_add(%struct.strbuf* %53, i8* %54, i32 %55)
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @pp_utf8_width(i8*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
