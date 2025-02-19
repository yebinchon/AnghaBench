; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getcwd.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }

@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_getcwd(%struct.strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  store i64 128, i64* %5, align 8
  br label %9

9:                                                ; preds = %43, %1
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @strbuf_grow(%struct.strbuf* %10, i64 %11)
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @getcwd(i32 %15, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strlen(i32 %25)
  %27 = call i32 @strbuf_setlen(%struct.strbuf* %22, i32 %26)
  store i32 0, i32* %2, align 4
  br label %56

28:                                               ; preds = %9
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EACCES, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @PATH_MAX, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %43

37:                                               ; preds = %32, %28
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ERANGE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %46

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i64, i64* %5, align 8
  %45 = mul i64 %44, 2
  store i64 %45, i64* %5, align 8
  br label %9

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %51 = call i32 @strbuf_release(%struct.strbuf* %50)
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %54 = call i32 @strbuf_reset(%struct.strbuf* %53)
  br label %55

55:                                               ; preds = %52, %49
  store i32 -1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i64 @getcwd(i32, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
