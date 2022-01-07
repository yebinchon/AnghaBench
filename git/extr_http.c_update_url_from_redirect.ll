; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_update_url_from_redirect.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_update_url_from_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"update_url_from_redirect: %s is not a superset of %s\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"unable to update url base from redirection:\0A  asked for: %s\0A   redirect: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, %struct.strbuf*)* @update_url_from_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_url_from_redirect(%struct.strbuf* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcmp(i8* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @skip_prefix(i8* %18, i32 %21, i8** %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strip_suffix_mem(i32 %36, i64* %9, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %30
  %41 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @die(i32 %41, i8* %42, i32 %45)
  br label %47

47:                                               ; preds = %40, %30
  %48 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %49 = call i32 @strbuf_reset(%struct.strbuf* %48)
  %50 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @strbuf_add(%struct.strbuf* %50, i32 %53, i64 %54)
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @skip_prefix(i8*, i32, i8**) #1

declare dso_local i32 @BUG(i8*, i8*, i32) #1

declare dso_local i32 @strip_suffix_mem(i32, i64*, i8*) #1

declare dso_local i32 @die(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
