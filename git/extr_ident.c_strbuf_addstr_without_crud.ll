; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_strbuf_addstr_without_crud.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_strbuf_addstr_without_crud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @strbuf_addstr_without_crud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_addstr_without_crud(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %7, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i8, i8* %7, align 1
  %15 = call i32 @crud(i8 zeroext %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  br label %8

21:                                               ; preds = %17, %8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %37, %21
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %7, align 1
  %33 = load i8, i8* %7, align 1
  %34 = call i32 @crud(i8 zeroext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %40

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %6, align 8
  br label %24

40:                                               ; preds = %36, %24
  %41 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @strbuf_grow(%struct.strbuf* %41, i64 %42)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %65, %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  %51 = load i8, i8* %49, align 1
  store i8 %51, i8* %7, align 1
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  switch i32 %53, label %55 [
    i32 10, label %54
    i32 60, label %54
    i32 62, label %54
  ]

54:                                               ; preds = %48, %48, %48
  br label %65

55:                                               ; preds = %48
  %56 = load i8, i8* %7, align 1
  %57 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %56, i8* %64, align 1
  br label %65

65:                                               ; preds = %55, %54
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 0, i8* %75, align 1
  ret void
}

declare dso_local i32 @crud(i8 zeroext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
