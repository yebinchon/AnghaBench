; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_dump_write.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_dump_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@prof_dump_buf_end = common dso_local global i64 0, align 8
@PROF_DUMP_BUFSIZE = common dso_local global i64 0, align 8
@prof_dump_buf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @prof_dump_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prof_dump_write(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @config_prof, align 4
  %10 = call i32 @cassert(i32 %9)
  store i64 0, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = load i64, i64* @prof_dump_buf_end, align 8
  %19 = load i64, i64* @PROF_DUMP_BUFSIZE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @prof_dump_flush(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %67

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i64, i64* @prof_dump_buf_end, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %33, %34
  %36 = load i64, i64* @PROF_DUMP_BUFSIZE, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %8, align 8
  br label %46

42:                                               ; preds = %30
  %43 = load i64, i64* @PROF_DUMP_BUFSIZE, align 8
  %44 = load i64, i64* @prof_dump_buf_end, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** @prof_dump_buf, align 8
  %48 = load i64, i64* @prof_dump_buf_end, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memcpy(i32* %49, i8* %52, i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @prof_dump_buf_end, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* @prof_dump_buf_end, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %13

61:                                               ; preds = %13
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %28
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @prof_dump_flush(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
