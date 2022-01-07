; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_convert_to_utf8.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_convert_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i8*, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"cannot convert from %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mailinfo*, %struct.strbuf*, i8*)* @convert_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_utf8(%struct.mailinfo* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mailinfo*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %10 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %13, %3
  store i32 0, i32* %4, align 4
  br label %56

21:                                               ; preds = %16
  %22 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %23 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @same_encoding(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %56

29:                                               ; preds = %21
  %30 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %34 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @reencode_string(i32 %32, i8* %35, i8* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %29
  %41 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %42 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %45 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %56

48:                                               ; preds = %29
  %49 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @strbuf_attach(%struct.strbuf* %49, i8* %50, i32 %52, i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %40, %28, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @same_encoding(i8*, i8*) #1

declare dso_local i8* @reencode_string(i32, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
