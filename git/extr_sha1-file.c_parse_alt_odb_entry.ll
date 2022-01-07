; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_parse_alt_odb_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_parse_alt_odb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, %struct.strbuf*)* @parse_alt_odb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_alt_odb_entry(i8* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %9 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 35
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @strchrnul(i8* %15, i32 %16)
  store i8* %17, i8** %7, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 34
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @unquote_c_style(%struct.strbuf* %24, i8* %25, i8** %7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %42

29:                                               ; preds = %23, %18
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @strchrnul(i8* %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @strbuf_add(%struct.strbuf* %33, i8* %34, i32 %40)
  br label %42

42:                                               ; preds = %29, %28
  br label %43

43:                                               ; preds = %42, %14
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i8*, i8** %7, align 8
  ret i8* %51
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i8* @strchrnul(i8*, i32) #1

declare dso_local i32 @unquote_c_style(%struct.strbuf*, i8*, i8**) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
