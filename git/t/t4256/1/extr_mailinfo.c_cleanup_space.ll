; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_cleanup_space.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_cleanup_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @cleanup_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_space(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %49, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %8 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %5
  %12 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isspace(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %11
  %21 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 32, i8* %25, align 1
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %39, %20
  %27 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %30, %31
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @strbuf_remove(%struct.strbuf* %43, i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %42, %11
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %5

52:                                               ; preds = %5
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
