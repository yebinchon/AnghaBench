; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_mem_getline.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_mem_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rerere_io = type { i32 }
%struct.rerere_io_mem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.rerere_io*)* @rerere_mem_getline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rerere_mem_getline(%struct.strbuf* %0, %struct.rerere_io* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.rerere_io*, align 8
  %6 = alloca %struct.rerere_io_mem*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.rerere_io* %1, %struct.rerere_io** %5, align 8
  %9 = load %struct.rerere_io*, %struct.rerere_io** %5, align 8
  %10 = bitcast %struct.rerere_io* %9 to %struct.rerere_io_mem*
  store %struct.rerere_io_mem* %10, %struct.rerere_io_mem** %6, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = call i32 @strbuf_release(%struct.strbuf* %11)
  %13 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %14 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %21 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %25 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @memchr(i8* %23, i8 signext 10, i64 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %19
  %32 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %33 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %37 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8* %40, i8** %7, align 8
  br label %50

41:                                               ; preds = %19
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %53 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %51 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  store i64 %58, i64* %8, align 8
  %59 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %60 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %61 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @strbuf_add(%struct.strbuf* %59, i8* %63, i64 %64)
  %66 = load %struct.rerere_io_mem*, %struct.rerere_io_mem** %6, align 8
  %67 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @strbuf_remove(%struct.TYPE_2__* %67, i32 0, i64 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %50, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_remove(%struct.TYPE_2__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
