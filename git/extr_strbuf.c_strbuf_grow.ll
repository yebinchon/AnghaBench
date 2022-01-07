; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_grow.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"you want to use way too much memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_grow(%struct.strbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @unsigned_add_overflows(i64 %12, i64 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  %21 = call i64 @unsigned_add_overflows(i64 %18, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %2
  %24 = call i32 @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  %41 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ALLOC_GROW(i8* %34, i64 %40, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %47, %31
  ret void
}

declare dso_local i64 @unsigned_add_overflows(i64, i64) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @ALLOC_GROW(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
