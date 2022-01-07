; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_split_buf.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_split_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strbuf** @strbuf_split_buf(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.strbuf** null, %struct.strbuf*** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %45, %4
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %24, 1
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23, %18
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i8* @memchr(i8* %30, i32 %31, i64 %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i8*, i8** %14, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = add nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %36, %29
  br label %45

45:                                               ; preds = %44, %23
  %46 = call %struct.strbuf* @xmalloc(i32 4)
  store %struct.strbuf* %46, %struct.strbuf** %12, align 8
  %47 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @strbuf_init(%struct.strbuf* %47, i32 %48)
  %50 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @strbuf_add(%struct.strbuf* %50, i8* %51, i32 %52)
  %54 = load %struct.strbuf**, %struct.strbuf*** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 2
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @ALLOC_GROW(%struct.strbuf** %54, i64 %56, i64 %57)
  %59 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %60 = load %struct.strbuf**, %struct.strbuf*** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  %63 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %60, i64 %61
  store %struct.strbuf* %59, %struct.strbuf** %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %15

72:                                               ; preds = %15
  %73 = load %struct.strbuf**, %struct.strbuf*** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @ALLOC_GROW(%struct.strbuf** %73, i64 %75, i64 %76)
  %78 = load %struct.strbuf**, %struct.strbuf*** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %78, i64 %79
  store %struct.strbuf* null, %struct.strbuf** %80, align 8
  %81 = load %struct.strbuf**, %struct.strbuf*** %9, align 8
  ret %struct.strbuf** %81
}

declare dso_local i8* @memchr(i8*, i32, i64) #1

declare dso_local %struct.strbuf* @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.strbuf**, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
